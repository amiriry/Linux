# Kernel Modules

Kernel modules for hardware and stuff

#### How to use them?
Get into a directory and do<br>
`make` -  will compile it as the `Makefile` instructions.<br><br>
After compiling it you should get few files and the you can load the module with linux modules commands:<br>
`sudo insmod` - to load it<br>
`sudo lsmod | grep <name>` - to see that its loaded<br>
`sudo rmmod` - to unload it
