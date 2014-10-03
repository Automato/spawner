REM Salt bootstrap4win (64 bit)

set shome=c:\salt
set logfile=%shome%\log\bootstrap.log

set dist_url=http://csa-net.dk/salt/dist/win-amd64
set python=python-2.7.3.amd64.msi
set vcredist=vcredist_x64.exe
set openssl=Win64OpenSSL_Light-1_0_0e.exe
set pyzmq=pyzmq-2.1.10.win-amd64-py2.7.msi
set m2crypto=M2Crypto-0.21.1.win-amd64-py2.7.exe
set pycrypto=pycrypto-2.3.win-amd64-py2.7.exe
set pyyaml=PyYAML-3.10.win-amd64-py2.7.msi
set pywin32=pywin32-216.win-amd64-py2.7.exe
set cython=Cython-0.15.1.win-amd64-py2.7.exe
set msgpack=msgpack-python-0.1.12.win-amd64-py2.7.exe
set distsetup=distribute_setup.py
set salt=salt-0.16.3
set unzip=unzip.py
set nssm=nssm.exe

md %shome%\log
call:log Bootstrap initializing
call:logexec md %shome%\download
call:logexec md %shome%\sys
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%python%','%shome%\download\%python%');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%vcredist%','%shome%\download\%vcredist%');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%openssl%','%shome%\download\%openssl%');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%pyzmq%','%shome%\download\%pyzmq%');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%m2crypto%','%shome%\download\%m2crypto%');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%pycrypto%','%shome%\download\%pycrypto%');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%pyyaml%','%shome%\download\%pyyaml%');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%pywin32%','%shome%\download\%pywin32%');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%cython%','%shome%\download\%cython%');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%msgpack%','%shome%\download\%msgpack%');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%distsetup%','%shome%\download\%distsetup%');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%salt%.zip','%shome%\download\%salt%.zip');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%unzip%','%shome%\download\%unzip%');
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/%nssm%','%shome%\sys\%nssm%');
call:logexec msiexec /i %shome%\download\%python% /quiet /norestart /log %shome%\log\python_install.log TARGETDIR=%shome%\python27 ALLUSERS=0
call:log Setting PATH=%PATH%;%shome%\python27;%shome%\python27\scripts
set PATH=%PATH%;%shome%\python27;%shome%\python27\scripts
call:logexec cmd.exe /c %shome%\download\%vcredist% /q
call:logexec cmd.exe /c %shome%\download\%openssl% /silent /verysilent /sp- /suppressmsgboxes
call:logexec msiexec /i %shome%\download\%pyzmq% /quiet /norestart /log %shome%\log\pyzmq_install.log ALLUSERS=0
call:logexec msiexec /i %shome%\download\%pyyaml% /quiet /norestart /log %shome%\log\pyyaml_install.log ALLUSERS=0
call:logexec cmd.exe /c python %shome%\download\%distsetup%
call:logexec cmd.exe /c %shome%\python27\scripts\easy_install jinja2
call:logexec cmd.exe /c %shome%\python27\scripts\easy_install m2crypto
call:logexec cmd.exe /c %shome%\python27\scripts\easy_install %shome%\download\%pycrypto%
call:logexec cmd.exe /c %shome%\python27\scripts\easy_install %shome%\download\%pywin32%
call:logexec cmd.exe /c %shome%\python27\scripts\easy_install %shome%\download\%cython%
call:logexec cmd.exe /c %shome%\python27\scripts\easy_install %shome%\download\%msgpack%
call:logexec cmd.exe /c python %shome%\download\%unzip% %shome%\download\%salt%.zip -d %shome%
call:log Changing directory to %shome%\%salt%
cd %shome%\%salt%
call:logexec cmd.exe /c python setup.py install
call:logexec cmd.exe /c md %shome%\conf\pki
call:logexec cmd.exe /c PowerShell (New-Object System.Net.WebClient).DownloadFile('%dist_url%/minion.conf','%shome%\conf\minion');
call:logexec cmd.exe /c %shome%\sys\%nssm% install salt-minion %shome%\python27\python %shome%\python27\scripts\salt-minion -c %shome%\conf
call:logexec cmd.exe /c net start salt-minion

goto :EOF

:logexec
SET _pcmd=%*
echo %date% %time% - Executing: %_pcmd% >> %logfile%
%_pcmd% >> %logfile% 2>&1
echo %date% %time% - ReturnCode: %ErrorLevel% >> %logfile%
goto :EOF

:log
echo %date% %time% - Status: %* >> %logfile%
goto: EOF

:EOF
