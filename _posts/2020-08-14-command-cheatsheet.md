---
layout: tutorial
title:  Command Cheatsheat
date:   2020-08-14
categories: tutorials
permalink: /:categories/:title
---



# **Local Development**
The commands in this section are for developing and testing code on your local box. These commands are typically run inside a project directory or using the flag `--here`.

### Command Line
- `shell` - *starts an interactive shell*.

### Graphical Dev Environments
- `jupyter:start` or `theia:start` - *start Jupyter or Theia server*.
- `jupyter:stop` or `theia:stop` - *stop a Jupyter or Theia server*.
- `jupyter:ls` or `theia:ls` - *list all running Jupyter or Theia servers*.

### Project Sharing
- `bundle` - bundle your current project and stack into a zip or tar.gz file that can then be shared with other cjr users.

# **Projects**
The commands in this section are for initializing projects and modifying exising project settings.
- `init` - initializes a project in the current directory.
- `pconfig:ls` - view current project settings.
- `pconfig:set [OPTIONS]` - set current project settings.
- `pconfig:rm [OPTIONS]` - remove a project setting.
- `pconfig:item-append [OPTIONS]` - append an item from an array-based project setting.
- `pconfig:item-remove [OPTIONS]` - remove an item from an array-based project setting.

# **Job Managment**
The commands in this section are for running and managing jobs on your local box or on a remote resource. By default jobs run in separate volumes. This means that your project files will be copied into the volume on job start, and that any file modifications or new outputs will not appear in the host project directory the results are copied back.

### Starting Jobs, Listing Jobs, and Copying Results
- `job:start [COMMAND] [ARGS...]` - starts a new job that executes a shell command.
- `job:ls` - lists all currently running jobs.
- `job:cp JOBID` - copy job results back to project root.

### Jobs
- `job:stop JOBID` - stop a job.
- `job:rm JOBID` - stops job (if running) and deletes results.
- `job:attach JOBID` - attach stdin to async job or to a sync job you previously detached from.
- `job:state JOBID` - returns state of currenty running job.
- `job:log JOBID` - print job logs.

### Array Jobs
- `job:shell JOBID` - start an interactive shell in a running or exited job.
- `job:exec JOBID [COMMAND] [ARGS...]` - execute a command in the project root of a running or exited job.

### Intractive Jupyter
- `job:jupyter:start JOBID` - start a jupyter server to manipulate or view data of a running or exited job.
- `job:jupyter:stop  JOBID` - stop a jupyter server connected to a running or exited job.
- `job:jupyter:ls JOBID` - list all currently running jupyter servers that are connected to jobs.

# **Resources**
These commands can be used to manage remote resources.
- `resource:add NAME [OPTIONS]` - add a new remote resource.
- `resource:ls` - list all remote resources.
- `resource:rm NAME` - remove a remote resource

# **Stacks**
These commands can be used to view current stacks and create new stacks.
- `stack:ls` - list current stacks
- `stack:create STACK [OPTIONS]` - create an new stack
- `stack:rmi STACK` - delete the container image that pertains to a stack

# **Configuration**
These commands are useful for configuring cjr.
- `config:ls` - list current cli settings.
- `config:set [OPTIONS]` - update a cli setting.