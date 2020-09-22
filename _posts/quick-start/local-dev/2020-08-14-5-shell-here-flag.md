---
layout: tutorial_local_dev
title:  Shell --here
categories: tutorials local-dev
slug: shell-here
permalink: /:categories/:title
date: 2014-08-14 00:00:04
---

The Shell Command and the --here flag
====================================

Now suppose that you want to modify some files on your computer using your Fedora stack. We can accomplish this by adding the flag `--here` to the shell command. First `cd` to a directory that contains the files you want to modify, then run the command

```console
$ cjr shell --stack=fedora-sc --here
```

This will once again open an interactive shell that is running inside the fedora stack. However, all the files in this current directory are now accessible from the fedora shell. If you run the command `ls` you will now see the files from your host current directory.

**IMPORTANT**: When you modify or delete these files you are modifying the files on your system. 

Next, try creating a new file. You will still see this file on your host once you exit from the shell.

```console
$ cjr shell--stack=fedora-sc --here
[user@23412341] $ touch new-file.txt
[user@23412341] $ exit
$ ls
new-file.txt
```

You can also edit existing files using an editor like vim or nano and the changes are immediately visible on your host operating system. 