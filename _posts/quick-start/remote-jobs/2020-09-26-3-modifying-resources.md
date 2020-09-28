---
layout: tutorial_remote_jobs
title:  Modifying Resources
categories: tutorials remote-jobs
slug: modifying-resources
permalink: /:categories/:title
date: 2014-09-26 00:00:02
---

Modifying Remote Resources
=======================

If you need to update the settings for an existing remote resource, use the command 
```console
$ cjr resource:set [FLAGS] SERVERNAME
```
Each property is modified using a flag. You can use any subset of the following flags:
```console
--address="NEW_IP_ADDRESS"       : updated IP address
--user="NEW_SSH_USERNAME"        : updated ssh username
--key="NEW_PATH_TO_KEYFILE"      : path to private ssh key
```