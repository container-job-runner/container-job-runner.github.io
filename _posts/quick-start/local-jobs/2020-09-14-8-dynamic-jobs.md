---
layout: tutorial_local_jobs
title:  Dynamic Jobs
categories: tutorials local-jobs
slug: dynamic-jobs
permalink: /:categories/:title
date: 2014-09-14 00:00:7
---

Flags for selecting Stack and Project Directories
=======================

In the previous sections of this tutorial, we ran all our jobs inside the directory *example-project* using either the *fedora-sc* stack or the *fedora:latest* image.
In a more general setting it is possible to dynamically set either of these two settings using flags.

To start a job that runs in the stack `STACK` using the files in the project directory `PROJECT`, use the command
```console
$ cjr job:start --stack=STACK --project-root=PROJECT command arg1 arg2 ...
```
The stack flag allows you to easily run jobs with stacks other than the default stack in a project directory. 
The project-root flag is more general and allows you to start jobs in directories where you have not initialized a cjr project using `cjr init`.