# Configs Directory

Return to the [Main README](../../README.md)

This directory is used to contain your bash configuration scripts.  Add new configuration files you wish to include into your profile here and import them into the `.bashrc` for use.

## File Descriptions

- `.bash_aliases`
   - This file contains all the initial aliases and is the place where you can create custom ones going forward
- `.bashrc`
   - This is the main entry point for our terminal. The initializer will create a new `.bash_profile` and will point to this `.bashrc`.  Inside this file we import all the other files in this directory. This is also where the `PS1` variable or the bash prompt configuration variable is set
- `.bash_profile_template`
   - This file is used in the initializer.sh to create a new profile.
- `colors.sh`
   - This shell file is collection of helpful color variables used in various scripts and the PS1 variable
- `constants.sh`
   - This shell file contains constants for the terminal such as history or time variables