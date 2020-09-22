---
layout: tutorial_local_jobs
title:  Listing Jobs
categories: tutorials local-jobs
slug: listing-jobs
permalink: /:categories/:title
date: 2014-09-14 00:00:03
---

Listing Jobs
=======================

You can list all the running and exited jobs using the command
```console
$ cjr job:ls
================================================================================================================
RESOURCE         ADDRESS             TYPE      
localhost        n.a.                n.a.      

-- Running Jobs ------------------------------------------------------------------------------------------------
ID               STACKNAME           COMMAND                                 STATUS                             

-- Exited Jobs -------------------------------------------------------------------------------------------------
ID               STACKNAME           COMMAND                                 STATUS                             
1fe10998a281     fedora-sc           python3 script.py 60                    Exited (0) 14 hours ago            
91593e3c5fcc     fedora-sc           python3 script.py 5                     Exited (0) 14 hours ago            
================================================================================================================
```
By default, this command shows the ID of a job, the stack it ran in, the command, and the status. The ID propery of a job serves as an identifier that you will pass as an argument to certain cjr commands whenever you want to interact with a job. 

To only see running jobs add the flag `--running`. Similarly, the flag `--exited` only shows exited jobs.
If you want to see all the properties of a job add the flag `--verbose`.




