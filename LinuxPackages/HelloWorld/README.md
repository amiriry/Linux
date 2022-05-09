# Create a .deb Package
All deb package files follow a specific naming convention:
`<name>_<version-<rebision>_<architecture>.deb`

Suppose you want to release your program called **hello**, version **1.0** built for **64-bit ARM** processors. So the deb file will look like this:
`hello_1.0-1_arm64.deb`

Now to the creation of the package:
### Create the working directory
`mkdir hello_1.0-1_amd64`

### Create the internal structure
  Put your program files where they should be installed on the target system. For example, suppose you want you program to be installed to `/usr/local/bin`:
`mkdir -p hello_1.0-1_amd64/usr/local/bin`

### Copy the files you want to be there
`cp <some_binary_file> hello_1.0-1_amd64/usr/local/bin/`

### Create the control file
##### First create the DEBIAN directory
`mkdir hello_1.0-1_amd64/DEBIAN`

### Create empty control file
`touch hello_1.0-1_amd64/DEBIAN/control`

### Fill in the control file - example
`hello_1.0-1_amd64/DEBIAN/control`

### Build the deb package
##### The last step is to invoke the dpkg-deb command:
`dpkg-deb --build --root-owner-group hello_1.0-1_amd64`
###### The --root-owner-group flag makes all deb pakage content owned by the root user, which is the standard way to go. Without such flag, all files and folders would be owned by your user, which might not exist in the system the deb package will be installed on.
  The command above will generate a .deb file alongside working directory, or print an error.

## Test Your deb Pakcage
---------------------
### Install the package from the deb file
`sudo dpkg -i <package>`

### uninstall
`sudo dpkg -r <app_name>`

### Remove the app with configuration files
`sudo dpkg -P <app_name>`

### Make sure the applicatio were removed correctly
`dpkg -l | grep <app_name>`
