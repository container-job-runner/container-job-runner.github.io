---
layout: tutorial_remote_jobs
title:  Configuring ssh resources
categories: tutorials remote-jobs
slug: configuring-resource
permalink: /:categories/:title
date: 2014-09-26 00:00:05
---

Configuring Remote ssh Resources
=======================

Now that you have properly added a remote resource, you need to tell cjr a few more things about how you want to run containers on it.
In particular, you have to specify the container engine, and let cjr know if selinux is enabled on the resource.

## 1. Selecting a Container Engine

### Podman

[Podman]() is the recommended container engine for remote resources since it natively supports rootless containers.
If you want cjr to run podman, run the command 
```console
$ cjr resource:set RESOURCENAME --option-key=engine --option-value=podman
```

### Docker

If you want cjr to run [Docker]() on the remote resource, run the command
```console
$ cjr resource:set RESOURCENAME --option-key=engine --option-value=docker
```
Make sure that the user on the remote resource is a member of the “docker” group, 
otherwise you will cjr will not be able to run docker on the remote host. For more details, see the official docker [post installation](https://docs.docker.com/engine/install/linux-postinstall/) instructions.

## 2. SELinux

If selinux is enabled on the remote resource then you must also run the command
```console
$ cjr resource:set RESOURCENAME --option-key=selinux --option-value=true
```
If you forget to run this command, then bind mounts will have the correct permissions and remote commands jobs will not be able to access their files.