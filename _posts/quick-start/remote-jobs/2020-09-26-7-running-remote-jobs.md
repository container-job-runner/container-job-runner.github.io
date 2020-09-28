---
layout: tutorial_remote_jobs
title:  Running Remote Jobs
categories: tutorials remote-jobs
slug: running-jobs
permalink: /:categories/:title
date: 2014-09-26 00:00:06
---

Running Remote Jobs
=======================

To run or manage remote jobs, you can add the flag `--resource=RESOURCENAME` to any job command. All the following commands support the resource flag:

`job:attach`, `job:cp`, `job:exec`, `job:jupyter`, `job:log`, `job:ls`, `job:rm`, `job:shell`, `job:start`, `job:state`, `job:stop`.

If the resource flag is set to a remote resource, then cjr will use ssh to: (1) transfer job files with rsync, and (2) issue podman or docker commands on the remote host.
By default, if the resource flag is ommited or set to "localhost", then cjr will run jobs on localhost. 

## Several Example Job Commands

The following two commands demonstrate how to start a syncronous job that runs lscpu on localhost and on a remote resource
```console
$ cjr job:start lscpu --resource=localhost --stack=fedora:latest
$ cjr job:start lscpu --resource=RESOURCENAME --stack=fedora:latest
```
You should see your local cpu listed for the first command, and the remote cpu listed in the second command.

If the job generates files, cjr will automatically copy them back to your host project as if the job was run on local host.
```console
$ cjr job:start --resource=localhost --stack=fedora:latest bash -c 'lscpu >> local_cpu.txt'
$ cjr job:start --resource=RESOURCENAME --stack=fedora:latest bash -c 'lscpu >> remote_cpu.txt'
```
Your local directory should now contain the files *local_cpu.txt* and *remote_cpu.txt*.

For async jobs you will need to run `cjr job:cp --resource=REMOTENAME JOBID` to copy back results to the host.

**Tip:** If you want to see the progress of the file tranfer, add the flag `--verbose` to the commands `cjr job:start` or `job:cp`.


## Specifying the Default Resource in a Project

When working in a project that was created with `cjr init`, you can set the default resource using the command 
```console
$ cjr pconfig:set --resource=RESOURCENAME
```
All the job commands will now automatically use the specified resource without needing to set the `--resource` flag manually. 
Alterantively, you can also set the environment variable *RESOURCE*.