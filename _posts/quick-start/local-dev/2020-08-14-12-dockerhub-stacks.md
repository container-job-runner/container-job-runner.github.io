---
layout: tutorial_local_dev
title:  Docker Hub Stacks
categories: tutorials local-dev
slug: dockerhub-stacks
permalink: /:categories/:title
date: 2014-08-14 00:00:11
---

Using Docker Hub Images as Stacks
===============================

In the previous sections of this tutorial we used the *fedora-sc* stack that we pulled from the official cjr stack repository.
For an ideal experience, cjr requires specially built stacks like *fedora-sc*. However it is also possible to also use existing [Docker Hub](https://hub.docker.com/) images.

To use an existing image as a stack, you set the stack flag equal to the image name.
For example, to start a shell using the [official fedora image](https://hub.docker.com/_/fedora) `fedora:latest`, run the command
```console
$ cjr shell --stack=fedora:latest
```
Note that the Jupyter or Theia commands will not work for this stack since it does not have the proper dependancies installed.
Nevertheless, by using existing Docker Hub images, you can very easily test out different linux distributions, package managers, and software. 
Remember that any changes that you make to the linux operating system or any software that you install will not persist after you exit the shell; this makes it a perfect environment for experimentation.


If you would like to learn how to create your own custom stacks from existing Docker Hub images and how to save your modifications with snapshotting, see the quick start guide on [creating stacks](/tutorials/creating-stacks/overview).

## Example Docker Hub Images

If you search on [Docker Hub](https://hub.docker.com/) you will likely find existing images for most of the software that you might be intereted in. 
Below we list a few examples that you might be interested in trying out.

### Example Distributions

1. `ubuntu:latest` - [ubuntu](https://hub.docker.com/_/ubuntu) is a popular linux distribution.
2. `clearlinux:latest` - [clear linux](https://hub.docker.com/_/clearlinux) is a fast linux distribution that is maintained by Intel. Many of the libaries for clear linux have been compiled with optimization flags and run faster than on other distros.

### Example Software

1. `python:latest` - [python](https://hub.docker.com/_/python).
2. `tensorflow/tenseroflow:latest` - [tensorflow](https://hub.docker.com/r/tensorflow/tensorflow/).
1. `julia:latest` - [julia](https://hub.docker.com/_/julia).

**Note**: Docker Hub with custom entrypoints that do not behave like a shell will not work correcly with cjr.  