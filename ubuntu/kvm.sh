 #!/bin/sh
 
 sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager qemu-utils cpu-checker

 sudo adduser $USER kvm
 sudo adduser $USER libvirt-qemu
  