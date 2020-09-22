---
layout: tutorial_local_dev
title:  Installation
categories: tutorials local-dev
slug: installation
permalink: /:categories/:title
date: 2014-08-14 00:00:01
---

Dependencies
====================================

Cjr works by making calls to [Docker](https://www.docker.com/) or [Podman](https://podman.io). Before installing cjr you will need to make sure that you have the following software installed on your machine:

### **Mac:** 
1. [Docker desktop](https://docs.docker.com/docker-for-mac/install/).
2. [git](https://git-scm.com/download/mac).
3. rsync (version 3.1.3 or above)
4. xQuartz (if you want to use graphical applications in containers)

**Note**: OSX ships with a 12 year old version of rsync that needs to be updated if you want to use cjr for running remote jobs. The simplest way to update rsync is by installing [brew](https://brew.sh) and running the command `brew install rsync`. 

### **Linux:** 
1. [Podman](https://podman.io) or [Docker](https://docs.docker.com/engine/install).  
2. [git](https://git-scm.com/download/linux).
3. rsync, ssh.
4. If you are running a minimal distro, then make sure that the following system commands are present: mktemp, mkdir, echo, ls, zip, tar.

**Note**: If you install Docker on linux, then make sure that your current linux user is added to the group "docker" otherwise you will need to run all cjr commands using sudo. For more details see the official docker [post installation instructions](https://docs.docker.com/engine/install/linux-postinstall/). Podman is a great alternative to Docker that allows for rootless containers.

### **Windows**: 

Not currently supported.

Installation
====================================

1. Download the latest binary from the [official releases](https://github.com/container-job-runner/cjr/releases), then untar the file and store it in a permanent location of your choice.
2. The executable binary for cjr is located in the directory `cjr/bin/cjr`. Create a symbolic link that points to the binary and is located in your $PATH.
  - Run the command `echo $PATH` to see which directories are in your path.
  - To create a symbolic link use the command  
    ```ln -s /path/to/cjr/bin/cjr /directory/in/path/cjr```   
    For example, if cjr is in **/home/user** and your path contains **/usr/bin/**, then run  
    ```ln -s /home/user/cjr/bin/cjr /usr/bin/cjr```


   
You should now be able to run the command 
```console
$ cjr --version
cjr/0.4.1 darwin-x64 node-v12.16.1
```

**TIP**: before trying cjr, make sure you have a basic idea of how to a terminal and commands like `cd`, `ls`, `pwd`.