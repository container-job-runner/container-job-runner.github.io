Stacks
===================

One of cjr’s main goals is to allow anyone to easily work with many different Linux environments and software packages. We use the name stack to describe a Linux distribution and all the software that is installed on it. For example, you can have a stack that is based on Ubuntu and has python and jupyter lab installed.

You can make your own stacks or use stacks made by other users. In this quick-start guide we will use an official fedora based CJR stack named *fedora-sc* (short for fedora scientific computing). You download the stack by running the command

```console
$ cjr stack:pull https://github.com/container-job-runner/fedora-sc.git
```

Cjr will use git to copy the stack files from the repository into your stack directory (by default it's set to ~/.config/cjr/) You can view a list of all your current stacks by running the command

```console
$ cjr stack:ls
```

Next let’s manually build the stack with the command

```console
$ cjr stack:build fedora-sc
```

This command may take a few minutes to complete. CJR normally handles building automatically, however, we are running the build manually so that the rest of the commands in this guide will run immediately.

**Pro Tip**: If you are familiar with Docker, then stacks are simply directories that contain Dockerfiles, build artifacts,  run artifacts, and a special stack configuration files. For more details about stacks and stack creation see []. 