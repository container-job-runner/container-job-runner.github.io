---
layout: tutorial_local_dev
title:  Environment Variables
categories: tutorials local-dev
slug: environment-variables
permalink: /:categories/:title
date: 2014-08-14 00:00:10
---

Environmental Variables
===============================

Advanced users who are dynamically switching between different stacks and project directories, may find it useful to set the default stack and project directories using environment variables.

The relevant environment variables are:
- `PROJECTROOT`: the parent directory that contains all the relevant files; cjr bind automatically to this folder.
- `STACK`: the name of the stack you want cjr to use.

For example, by setting the environment variables
```console
$ export PROJETROOT=$(pwd)
$ export STACK=fedora-sc
```
The commands
```console
$ cjr shell
$ cjr jupyter:start
$ cjr theia:start
```
are equivalaent to
```console
$ cjr shell --here --stack=fedora-sc
$ cjr jupyter:start --here --stack=fedora-sc
$ cjr theia:start --here --stack=fedora-sc
```