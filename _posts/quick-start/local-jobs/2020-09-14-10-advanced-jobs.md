---
layout: tutorial_local_jobs
title:  Advanced Job Features
categories: tutorials local-jobs
slug: advanced-jobs
permalink: /:categories/:title
date: 2014-09-14 00:00:9
---

Advanced Job Features
=======================

In this final section we describe three advanced job features that may be of interest.

## File Access: shared versus volume

At the start of this tutorial we mentioned that jobs run in isolation. In certain scenarious it is not practical to make a copy of the project directory for each job (e.g. you have very large files).
To overcome this issue you can start a new job using the flag `--file-access=shared`. The job will then access the host directory directly.

When using this flag, rememeber that the job may be affected if you start making changes in the project directory while it is running. Similarly, if the job creates temporary files or outputs, then it will all be immediately visible in your project directory.

## Shell into a running or exited job

If you want to interactively explore the job's files without copying them back to the host directory, you can use the command
```console
$ cjr job:exec $ID bash
```
Since this may be a common usecase, we create the following convienient shorthand
```console
$ cjr job:shell $ID
```

## Start a Jupyter server in a running or exited job

It is also possible to start a Jupyter server that has access to the a job's files (and not the project directory). 
This can be useful for interactivly viewing or post-processing results before copying them back to your project directory. 

To start a jupyter server in a job, run the command
```console
$ cjr job:jupyter:start ID        # ID represents the ID of the parent job.
```
To stop the jupyter server you can run
```console
$ cjr job:jupyter:stop ID
```
To list all jupyter servers that are running inside job file volumes use
```console
$ cjr job:jupyter:ls
```