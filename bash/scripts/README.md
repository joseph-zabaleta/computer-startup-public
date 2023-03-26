# Script Directory

Return to the [Main README](../../README.md)

This directory is used to contain your bash scripts. Add a new script here and then add a new alias to the `.bash_alias` file to use it within your terminal.

To add an alias that points to scripts in this directory you use the `$bashScripts` variable in the path. See below

```sh
alias gitlog = "$bashScripts/gitlog.sh"
```

## Configuration Scripts
`initializer.sh`
  - Scripted used to configure bash terminal to point to configuration files found in this repository.

## Git Scripts

- `gitlog.sh`
  - Fancy git log output and simplified for alias `gitlog`
- `gsapply.sh`
  - git stash apply script for alias `gsapply`
- `gsdrop.sh`  
  - git stash drop script for alias `gsdrop`
- `gspop.sh`  
  - git stash pop script for alias `gspop`
- `gssave.sh`
  - git stash save script for alias `gss`

## Docker Scripts
- `pgup.sh`, `pgdown.sh`
  - If docker is installed and running this will spin up/down a postgres SQL server
  - Both used for aliases `pgup` and `pgdown` respectively