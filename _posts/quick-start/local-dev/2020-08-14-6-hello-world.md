---
layout: tutorial_local_dev
title:  Running Code
categories: tutorials local-dev
slug: running-code
permalink: /:categories/:title
date: 2014-08-14 00:00:05
---


Running Code: Hello World
====================================

By running the shell command with the flag `--here`, you can modify the files and subfolders that are inside the directory where you ran cjr. This means that we can use cjr to run and compile code that is saved on your local machine. 

The *fedora-sc* stack has Python, Julia, and R installed, as well as compilers for c, c++, and Fortran. 
Thanks to container technology, you can run programs written in all of these languages even if they language or compiler is not installed on your host system.
Below we show how to use cjr to run example hello world programs in [Python](#1.-Python), [c++](#2.-c++), [Julia](#3.-Julia), and [Fortran](#2.-Fortran).

**Tip:** If you like working in a terminal then you can also use the shell command to develop your code using an editor like vim or emacs. 

## 1. Python

In the current directory, create the file hello-world.py that contains

```python
print("Hello World!")
```

We can start a shell and run hello-world.py with the commands
```console
$ cjr shell --here --stack=fedora-sc
[user@23412341] $ python hello-world.py
Hello World!
[user@23412341] $ exit
```

## 2. c++

In the current directory, create the file hello-world.cpp  that contains

```cpp
#include <iostream>

int main() {
    std::cout << "Hello World!";
    return 0;
}
```

We can start a shell and compile and run hello-world.cpp with the commands
```console
$ cjr shell --here --stack=fedora-sc
[user@23412341] $ g++ hello-world.cpp -o hello-world.exe
[user@23412341] $ ./hello-world.exe
Hello World!
[user@23412341] $ exit
```

## 3. Julia
In the current directory, create the file hello-world.jl that contains

```julia
println("Hello World!")
```

We can start a shell and run hello-world.jl with the commands
```console
$ cjr shell --here --stack=fedora-sc
[user@23412341] $ julia hello-world.jl
Hello World!
[user@23412341] $ exit
```

## Fortran
In the current directory, create the file hello-world.f90 that contains

```fortran
program hello
    print *, "Hello World!"
end program
```

We can start a shell and compile and run hello-world.f90 with the commands
```console
$ cjr shell --here --stack=fedora-sc
[user@23412341] $ gfortran hello-world.f90 -o hello-world.exe
[user@23412341] $ ./hello-world.exe
Hello World!
[user@23412341] $ exit
```