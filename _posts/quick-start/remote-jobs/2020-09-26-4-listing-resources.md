---
layout: tutorial_remote_jobs
title:  Listing Resources
categories: tutorials remote-jobs
slug: listing-resources
permalink: /:categories/:title
date: 2014-09-26 00:00:03
---

Listing Remote Resources
=======================

To view a list of all your remote resources, run the command
```console
$ cjr resource:ls
-- Remote Resources -------------------------------------------
NAME              ADDRESS             USERNAME       TYPE      
remote-server    100.100.100.100     user           ssh       
local-server     168.198.0.100       user           ssh 
```
The list will show you the names, addresses and username for all your remote resource. To see additional information add the flag `--verbose`.