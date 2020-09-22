---
layout: tutorial_local_jobs
title:  Stopping & Deleting Jobs
categories: tutorials local-jobs
slug: stopping-and-deleting
permalink: /:categories/:title
date: 2014-09-14 00:00:6
---

Stopping and Deleting Jobs
==========================

You can stop a running job using the command `cjr job:stop ID` and delete a job along with its associated files using `cjr job:rm ID`.


To try out these commands, start an async job that runs for 300 seconds, and verify that the job is running
```console
$ cjr job:start --async python script.py 300
d838ba056442d279542a21a9d4d3b4d17d55adf8bbd0d36cde628d28d65c9475
$ cjr job:ls --running
================================================================================================================
RESOURCE         ADDRESS             TYPE      
localhost        n.a.                n.a.      

-- Running Jobs ------------------------------------------------------------------------------------------------
ID               STACKNAME           COMMAND                                 STATUS                             
d838ba056442     fedora-sc           python script.py 300                    Up 4 seconds                       
================================================================================================================
```

Next stop the job and verify that the job is stopped using 
```console
$ cjr job:stop d838ba056442
$ cjr job:ls --exited
================================================================================================================
RESOURCE         ADDRESS             TYPE      
localhost        n.a.                n.a.      

-- Exited Jobs -------------------------------------------------------------------------------------------------
ID               STACKNAME           COMMAND                                 STATUS                             
d838ba056442     fedora-sc           python script.py 300                    Exited (0) 33 seconds ago          
999eaa9403a7     fedora-sc           python script.py 50                     Exited (0) 25 minutes ago          
1fe10998a281     fedora-sc           python3 script.py 60                    Exited (0) 15 hours ago            
91593e3c5fcc     fedora-sc           python3 script.py 5                     Exited (0) 15 hours ago            
================================================================================================================

```
To delete the job and its associated files run the commands
```console
$ cjr job:rm d838ba056442
$ cjr job:ls --exited
================================================================================================================
RESOURCE         ADDRESS             TYPE      
localhost        n.a.                n.a.      

-- Exited Jobs -------------------------------------------------------------------------------------------------
ID               STACKNAME           COMMAND                                 STATUS                             
999eaa9403a7     fedora-sc           python script.py 50                     Exited (0) 27 minutes ago          
1fe10998a281     fedora-sc           python3 script.py 60                    Exited (0) 15 hours ago            
91593e3c5fcc     fedora-sc           python3 script.py 5                     Exited (0) 15 hours ago            
================================================================================================================
```
Notice that the job no longer appears in the list of exited jobs.
























