Jupyter
==========================

We know that computational scientists love using [Jupyter notebooks and Jupyter lab](https://jupyter.org/). That’s why cjr has specific commands to start and stop Jupyter. Jupyter comes preinstalled in the *fedora-sc* stack. Let’s start Jupyter lab using the command

```console
$ cjr jupyter:start --here --stack=fedora-sc
```

After a few seconds, Jupyter lab will open in your default browser. The jupyter command works just like the shell command. We added the flag —here so that we can see and modify the files in the current directory from Jupyter.

We can view all running jupyter servers that were started with cjr by running the command

```console
$ cjr jupyter:ls
```

To stop jupyter you can run the stop command from the same directory where you originally started jupyter:

```console
$ cjr jupyter:stop --here 
```

Alternatively you can run `cjr jupyter:stop DIR` where DIR is the directory where you started jupyter. If you are running multiple jupyter servers in different directories, you can stop them all at once with the command `cjr jupyter:stop --all`.


## Switching between Jupyter Lab and Jupyter notebook 

By default cjr runs Jupyter lab. If you prefer to run jupyter notebooks use the following command

```console
$ cjr config:set --jupyter-command='jupyter notebook'
```

To switch back to Jupyter lab you can run

```console
$ cjr config:set --jupyter-command='jupyter lab'
```