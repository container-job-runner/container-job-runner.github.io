---
layout: tutorial_local_jobs
title:  Sync and Async Jobs
categories: tutorials local-jobs
slug: sync-vs-async
permalink: /:categories/:title
date: 2014-09-14 00:00:05
---

Sync and Async Jobs
=======================

Cjr supports both syncronous and asyncronous jobs.
By adding the flag `--async`, the command `cjr job:start` no longer waits for the job to finish and simply returns the id of the new job. 

For example, let's start an asyncronous job that runs our script
```console
$ cjr job:start --async python script.py 50
999eaa9403a70aa5d4c3a377dd53bc7fabbc40c40bfbd2a0d163bc4881d7e587
```
If you list all currently running jobs you will now see the new job running silently in the background
```console
$ cjr job:ls --running
================================================================================================================
RESOURCE         ADDRESS             TYPE      
localhost        n.a.                n.a.      

-- Running Jobs ------------------------------------------------------------------------------------------------
ID               STACKNAME           COMMAND                                 STATUS                             
999eaa9403a7     fedora-sc           python script.py 50                     Up 12 seconds                      
================================================================================================================
```
Once the job completes you can copy the result using the commands `cjr job:cp ID`.


## Customizing Default Job Behavior

Depending on your needs, you can customize the default job behavior in cjr.

To specify the default job type use the commands
```console
$ cjr config:set --job-default-run-mode=sync        # sets default job type to sync
$ cjr config:set --job-default-run-mode=async       # sets default job type to async
```
These defaults can always be overridden with the flags `--asyc` and `--sync`.

If you want change the auto copy behavior of sync jobs, use the commands
```console
$ cjr config:set --autocopy-sync-job=true           # sync jobs autocopy on exit
$ cjr config:set --autocopy-sync-job=false          # sync jobs do not copy on exit
```
These defaults can always be overridden with the flags `--no-copy` and `--autocopy`.