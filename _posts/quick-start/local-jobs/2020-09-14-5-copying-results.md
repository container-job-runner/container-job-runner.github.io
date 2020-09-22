---
layout: tutorial_local_jobs
title:  Copying Job Results
categories: tutorials local-jobs
slug: sync-job-result
permalink: /:categories/:title
date: 2014-09-14 00:00:04
---

Copying Job Results
=======================

You can copy job results back to your host project directory, using the command `cjr job:cp ID`. To monitor the progress of the copy operation, add the optional flag `--verbose`. 

Let's copy the results of the last job we completed in the third tutorial step by running the following command; note again that your ID will be different. If you forgot the id, use `cjr job:ls` to find its value.
```console
$ cjr job:cp 1bf84f7 --verbose
-- rsync Output: Volume to Host ------------------------------------------------
sending incremental file list
./
output-1600506832.txt

sent 187 bytes  received 38 bytes  450.00 bytes/sec
total size is 281  speedup is 1.25
```
Your project directory will now contain the output files from both your jobs.
```console
$ ls
output-1600506296.txt	output-1600506832.txt	script.py
```
**Remark:** You can run the `job:cp` command anytime during the job lifecycle. This allows you to sync partial results before a job is fully complete.

## Exclude Files

If there are certain files that you do not want to be copied back do the project directory when you run `cjr job:cp`, you can create the file *.cjr-download-exclude* in the root of the project directory and list the files or directories there.
This can be useful if your job creates temporary files that you do not want copied back to your project directory.
The format for this file is the same as the format for an rsync exclude file.

## Copy Modes

To specify the behavior of the copy command, use the flag `--mode`. The default value is **update** and the four possibilities are:
1. **update**: overwrites project files with job files, only if the job file was modified at a later time than the project file.
2. **overwrite**: overwrites project files with job files, regardless of which one was modified last.
3. **mirror**: copies all job files and also *removes* any extranious files from the project directory. Be careful using this mode since it will remove files from your project directory if they were not also present in the job directory.
4. **manual**: starts an interactive shell where the user can manually transfer files from job to project.