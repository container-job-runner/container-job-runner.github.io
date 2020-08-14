Projects
=========================================

CJR was designed to let you easily edit and run your local code inside any stack. So far we have been using the flag `--here` to give cjr access to the current directory.

The here flag is great if you want to constantly move around different directories. However, if you plan to work within the same directory repeatedly, then it's more conveneint to start a project in this directory by running the command

```console
$ cjr init
```

This will create a hidden .cjr directory that stores your settings for the project. As long as you run cjr commands from inside the parent directory, then you no longer need to use the flag `--here` for the commands shell, jupyter, or theia. For example the command

```console
$ cjr shell --stack=fedora-sc
```

Will now open and interactive shell that has access to the files in the project directory. You can verify this by running the command ls to list your local files.

## Setting the default stack

You can also set the default stack that cjr should use for each project. Let’s set the default stack in our project to *fedora-sc* using the command

```console
$ cjr project:set —stack=fedora-sc
```


Now you can open a fedora-sc shell with access to your project files using the command
```console
$ cjr shell
```
You can also start and stop jupyter in the project folder using

```console
$ cjr jupyter:start
$ cjr jupyter:stop
```

## Viewing project settings

You can view your current project configuration by running the command inside the project directory.

```console
$ cjr pconfig:ls
```