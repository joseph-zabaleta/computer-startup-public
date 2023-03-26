#!/bin/bash

# Get a date timestamp
timestamp=$(date "+%Y%m%d-%H%M")

# Gets absolute path of bash directory
bash_dir=$(dirname $(dirname $(realpath $0)))

# Gets absolute path of repo directory
repo_dir=$(dirname $bash_dir)

template_path="$bash_dir/configs/.bash_profile_template"

# builds baseExport to be added to profile
baseExport="export repoDirectory='$repo_dir'"

# builds .bash_profile with baseExport and .bash_profile_template
# echo export into cat command, cat the output of echo + template file into .bash_profile
echo $baseExport | cat - $template_path > $repo_dir/.bash_profile
# echo $baseExport | cat - $template_path > $repo_dir/.bashrc

# Renaming / Saving original files
if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile_original_$timestamp
fi

if [ -f ~/.bashrc ]; then
  mv ~/.bashrc ~/.bashrc_original_$timestamp
fi

# move built profile to launch location
mv $repo_dir/.bash_profile ~/.bash_profile
# mv $repo_dir/.bashrc ~/.bashrc
