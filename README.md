spawner
====

A stack of tools for creating and managing a company cloud and development workspace. 

First, spawner uses packer.io combined with a debian preseed file to generate a vagrant/virtualbox,
qemu and Amazon AWS image. Next, the image is provisioned using salt and then processed in vagrant.
After the first provisioning, the AWS images have salt turned off and are handed over to be managed
with ansible.
