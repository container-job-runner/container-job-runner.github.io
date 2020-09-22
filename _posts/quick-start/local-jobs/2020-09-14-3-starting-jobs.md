---
layout: tutorial_local_jobs
title:  Starting Jobs
categories: tutorials local-jobs
slug: starting-jobs
permalink: /:categories/:title
date: 2014-09-14 00:00:02
---

Starting Jobs
=======================

The command `cjr job:start cmd arg1 arg2 ... argN` starts a job that runs the command *cmd* with arguments *arg1*, *arg2*, ..., argN. Let's use it to start a job that runs the python script we just created. 
```console
$ cjr job:start python3 script.py 5
sleeping for 5 seconds.
writing output file.
exiting.
```
By default, cjr runs jobs synchronously. Once the sync job completes, cjr will automatically sync the job files and the project folder. If you type `ls` you will see the script's output file.
```console
$ ls
output-1600506296.txt	script.py
```

## Detaching and Attaching

Synchronous jobs allow you check the initial output to ensure that the job started correctly. Once you are satisfied, you can detach using the key sequence ctrl-p, ctrl-q.
Let's try this by starting a new job with a script that sleeps for 60 seconds. Once you see the words "sleeping for 60 seconds", detach by typing ctrl-p and ctrl-q in quick succession.
```console
$ cjr job:start python3 script.py 60
sleeping for 60 seconds.
-- Job Id ------------------------------------------------------
1bf84f75e44650904ebfb6dd2f49a5148188c55935db158dc7b2d74739fe5482
```
When you detach from a job, cjr will print the job ID (your ID will be different than the one shown above). 
To attach back to the job, you can use the command `cjr job:attach ID`. 
When referencing a job ID you can use a subset of the full id.
In our example this becomes
```console
$ cjr job:attach 1bf84f7
sleeping for 60 seconds.
writing output file.
exiting.
```
Once you detach once from a job, cjr will no longer automatically sync the result, even if you reattach and let the job complete. You can verify this by waiting until the job completes, and then running ls (you will only see the output file from your previous job). Later in this tutorial we will see how to manually sync job results.

**Remark:** Once a job exits, you will no longer be able to attach.

## Include Files

If there are certain files that you do not want to be copied from the project directory when a job starts, you should add them to the  *.cjr-upload-exclude* file that is located in the root of the project directory. By default this file contains the following entries
```text
.cjr
.cjr-upload-include
.cjr-upload-exclude
.cjr-download-include
.cjr-download-exclude
.git
.gitignore
```
 The format for this file is the same as the format for an rsync exclude file.

## A Convenient Shorthand

 If you get tired of typing `cjr job:start command` you can use the shorthand `cjr $ command` to start jobs.