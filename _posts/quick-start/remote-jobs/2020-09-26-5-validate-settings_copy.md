---
layout: tutorial_remote_jobs
title:  Validating ssh Settings
categories: tutorials remote-jobs
slug: validate-settings
permalink: /:categories/:title
date: 2014-09-26 00:00:04
---

Validating Remote Resources
=======================

To verify that any of your remote resources are properly configured run the command
```console
$ cjr resource:ssh SERVERNAME
```
This will start an interactive ssh shell on the remote computer. You may also find this command useful for rapidly ssh into your machine at any point later in time.

If there problems connecting, then first verify that ssh is properly set up on the machine. If it is you likely entered some incorrect values when adding the resource to cjr. Proceed to the next step in the tutorial to learn how to modify exiting resources parameters.