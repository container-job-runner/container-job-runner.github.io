Dependencies
====================================

CJR works by making calls to [Docker](https://www.docker.com/) or [Podman](https://podman.io). Before installing cjr you will need to make sure that you have the following software installed on your machine:


### **Mac:** 
1. [Docker desktop](https://docs.docker.com/docker-for-mac/install/).
2. [git](https://git-scm.com/download/mac).
3. rsync (version 3.1.3 or above)
4. xQuartz (if you require x11 support)

**Note**: OSX ships with a 12 year old version of rsync which must be updated if you want to use cjr for running remote jobs. The simplest way to update rsync is by installing [brew](https://brew.sh) and running the command `brew install rsync`. 

### **Linux:** 
1. [Podman](https://podman.io) or [Docker](https://docs.docker.com/engine/install).  
2. git 
3. rsync, ssh, zip, tar,
4. If you are running a minimal distro, make sure that the following system commands are present: mktemp, mkdir, echo, ls

**Note**: If you use Docker, make sure that your currnet linux user is added to the group "docker" otherwise you will need to run all cjr commands using sudo. For more details see the official docker [post installation instructions](https://docs.docker.com/engine/install/linux-postinstall/). Podman is a great alternative to Docker that allows for rootless containers.

### Windows: 

Not currently supported.

Installation
====================================

1. Download the latest binary from the [official releases](https://github.com/container-job-runner/cjr/releases), then untar the directory and store it in a permenant location.
2. The executable binary for cjr is located in the directory `cjr/bin/cjr`. To prevent yourself from typing the full path, you can:
   - Add an alias to your .bashrc file  `alias cjr="/path/to/cjr/bin/cjr`
   - create a symbolic link in a directory that's in your $PATH `ln -s /path/to/cjr/bin/cjr /usr/bin/cjr`

If everything is working correctly, you should be able to run the command 
```console
$ cjr --version
cjr/0.4.1 darwin-x64 node-v12.16.1
```

**TIP**: before trying cjr, make sure you have a basic idea of how to use basic terminal commands like like `cd`, `ls`, `pwd`.