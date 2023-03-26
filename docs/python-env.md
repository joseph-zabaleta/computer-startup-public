# Python Environment Quick Reference

Using the built-in virtaul environment that comes with Python 3.3+ called `venv`

## Table of Contents

- [Creation](#creating-the-environment)
- [Activation](#activating-the-environment)
- [Deactivation](#deactivating-the-environment)
- [Removal](#removing-the-environment)
- [Requirements File](#creating-the-requirements-file)
- [Installing dependencies](#installing-dependencies)

## Creating the Environment

`venv` is used to created a new isolated environment

```bash
$ python -m venv dir-name-to-hold-environment
# example
$ python -m venv venv
```

- command: `python`
  - flag: `-m` (lets you run a library or module as a script)
  - parameters:
    - option1: `venv` (script to create a virtual environment)
    - option2: `venv` (name of the directory to hold env files)
      - NOTE: There is no special benefit for having unique names

## Activating the Environment

Using source to execute the active script, this will activate the virtual environment

### Windows

```bash
$ source name-given/Scripts/activate
# example
$ source venv/Scripts/activate
$ (venv) _
```

- command: `source`
  - parameter: `venv/Scripts/activate`
    - this is the path to the activate script

### POSIX

```bash
$ source name-given/bin/activate
# example
$ source venv/bin/activate
$ (venv) _
```

- command: `source`
  - parameter: `venv/Scripts/activate`
    - this is the path to the activate script

## Deactivating the Environment

Once you are in the environment you can exit at anytime using the keyword `deactivate`

```bash
$ (venv) _
$ deactivate
$ _
```

- command: `deactivate`

## Removing the Environment

Removing the environment is as simple as using the `rm` command. This is done at the location of the env.

```bash
$ rm -r name-of-env
# example
$ rm -r venv
```

- command: `rm`
  - flag: `-r` (recursive)
  - parameter: `venv`
    - this is the name of directory of environment

## Creating the Requirements file

Requirements.txt is a common file to create that can be used with `pip` to install required dependencies within your project. Note: Do this inside your virtual environment.

```bash
$ (venv) pip freeze > requirements.txt
```

- command: `pip`
  - operator: `>` (output to a file)
  - parameter: `requirements.txt`
    - this is the name of the file by standard it is called `requirements.txt`

## Installing dependencies

Use `pip` inside your virtual environment to install dependencies for a project.

NOTE: One of the first things to install or upgrade is `pip` inside your virtual environment.
This can be done using:  
`python -m pip install --upgrade pip`

```bash
$ (venv) pip install library-module-name
```

- command: `pip`
  - action: `install`
    - parameter: `name of a library or module`

```bash
$ (venv) python -m pip install pytest
```

### Best practice

Using the `python -m pip` executes `pip` using the Python interpreter specified. This will ensure files added are for the correct version of Python. This is good practice for both inside and outside a virtual environment. NOTE: You should avoid using `pip` globally and utilize virtual environments.

### Install using Requirements.txt

```bash
$ (venv) pip install -r requirements.txt
```

- command: `pip`
  - action: `install`
    - flag: `-r` (requirement file)
    - parameter: `requirements.txt`
