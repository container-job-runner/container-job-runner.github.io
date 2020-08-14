Overview
=====================================

This quick start guide teaches you how to use cjr to develop and run code on your local machine. Before we begin, here is a little background and motivation.

**What is CJR?**

CJR aims to simplify the experience of using containers for scientific computing and data science. If you’ve already worked with containers then you probably know about Docker and how difficult it can be to use. In contrast, CJR provides a simpler interface that is designed to facilitate scientific computing and data science workflows. When you are using cjr you won’t even realize that you are running your code using containers.

**Who is cjr made for?**

Cjr is made for individuals and small teams that are doing computational experiments on their local box or on remote boxes using ssh.

**Why Containers?**

Scientific computing and data science codes require a range of different software depenencies. These packages can be a hassle to install, update, and remove. This means they you will often end up littering you hard drive for years even after you’ve completed a project. The situation gets worse if you have to manage dependencies across multiple machines. 

Contains help solve all of these problems. Here are just a few advantages:

1. Containers allow anyone to bundle dependencies and then deploy them on any computer.
2. Containers don’t clutter your local machine. The dependencies are all stored inside a container image that can be easily removed or stored online when you no longer need it.
3. Containers are reproducible. You can save a compute environment and perfectly replicated it later.
4. Containers can be easily shared across teams.
5. Containers are much faster to start than virtual machines and they don’t need to be maintained.