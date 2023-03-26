# Computer Startup



## Overview

This repository has been designed to host all types of settings, scripts, shell profiles and aliases. It currently will update your bash terminals utilizing a `.bash_profile`. Once initliazed, a new `.bash_profile` is created which will point to the local `.bashrc` within this repository. This allows for one location for scripts, helpful docs, and various settings information.

---
## General Information
The purpose of this project is to clone down this repository onto any new workstation and be able to have your favorite shell scripts, aliases, terminal ps1 output, and help resources.

This has been designed for the use with "git bash" on Windows.

---

## Install instructions

1. Clone repository to desired location

```bash
$ git clone git@github.com:joseph-zabaleta/computer-startup.git
```

2. Run the initializer script located inside the `bash/scripts` directory
   - This script will create a `.bash_profile` and place it into the `$HOME` directory. If a profile is present, that file will be renamed with the timestamp: example `.bash_profile_20230325`
   - command: `sh initializer.sh` ( Or path to script )

```bash
$ sh initializer.sh
```
3. Close and reopen your shell.

---
## Usage

Once you have cloned the repository and have ran the initlizer script your bash terminal is ready to be used. You can now do the following:
- Access and update bash aliases very quickly
- Create and assign scripts to aliases
- Create and save quick help documents and notes
- Store any other type of files you may want when you move to new workstation such as VSCode or IDEA editor settings

If you have VSCode you can use the pre-assigned alias `bashrc` to open this repository up and make all the changes you desire.

```bash
$ bashrc
```

---
## Directories

### Bash Directory

#### Configs

This directory contains the configuration files for bash terminal and any helper files we choose to include.

Please see the [Configs README.md](./bash/configs/README.md) for further information

#### Scripts

This directory contains all bash scripts. These are helper scripts that are used in aliases located in `.bash_aliases` for in the shell.

Please see the [Scripts README.md](./bash//scripts/README.md) for further information.

### DOCS
Directory for note taking as well as referencing specific instructions for various day to day tasks

### VSCode
This is an example of a settings directory you may want to save. This contains a settings file for VSCode editor long with of extensions that are helpful

## Contact

[![](https://img.shields.io/badge/LinkedIn-joseph--zabaleta-blue?logo=LinkedIn&logoColor=blue&labelColor=black)][linkedin] - Feel free to contact me on LinkedIn!


[linkedin]: https://www.linkedin.com/in/joseph-zabaleta