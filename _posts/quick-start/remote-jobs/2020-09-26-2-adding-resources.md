---
layout: tutorial_remote_jobs
title:  Adding Resources
categories: tutorials remote-jobs
slug: adding-resources
permalink: /:categories/:title
date: 2014-09-26 00:00:01
---

Adding a New Remote Resource
=======================

Before running remote jobs you first have to tell cjr about the remote resource. A new remote resource named *SERVERNAME*  can be added with the command
```console
$ cjr resource:add [FLAGS] SERVERNAME 
```
The required flags are
```console
--address="IP_ADDRESS"       : the IP address of the remote resource
--user="SSH_USERNAME"        : the username that should be used for ssh
--key="PATH_TO_KEYFILE"      : path to private ssh key
--type="ssh"                 : currently only "ssh" is supported
```
and the optional flags are
```console
--copy-key    : cjr will store a local copy of the key
```
If you add `--copy-key`, then the keys are copied to the directory *~/.config/.cjr/keys*.

## Example command

The following is an example command; your real command will have different values.
```console
$ cjr resource:add myserver  --address=0.0.0.0 --user=remoteuser --key=/home/localuser/.ssh/id_rsa --type=ssh
```