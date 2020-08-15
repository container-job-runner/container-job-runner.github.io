---
layout: home
title: Container Job Runner
---

# Develop locally
```console
$ cjr jupyter:start	                                    # start Jupyter lab or notebook
$ cjr theia:start                                           # start the Theia IDE
$ cjr shell --here	                                    # start an interacive shell
```

# Run jobs on remote resources
```console
$ cjr job:start --resource=my-server python my-script.py
```