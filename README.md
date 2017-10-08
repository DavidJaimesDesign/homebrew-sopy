# Installation

 1. Have brew installed [homebrew](https://docs.brew.sh/Installation.html)
 2. Install python and pip through brew `brew install python`
 3. run `brew tap DavidJaimesDesign/homebrew-sopy`
 4. run `brew install sopy`

# Usage

To use the tool simply run `so your search terms here` This will open a new browser windo to the Stack Overflow search results

*note:* This tool is still is an alpha state and does not have all the validation needed if you try to break it you will probably succeed 

# Debugging

This section is mostly for when attempting to upgrade the brew formula for devlopment:
* check that the tar in repo is newest tar using releases
* check that the tar in the brew formula matches the current version

Here is a list of the guides used that will need to be reference when updating the app:
* [python formula official docs](https://github.com/Homebrew/brew/blob/master/docs/Python-for-Formula-Authors.md)
* [simplest python formula examples](http://jimkubicek.com/blog/2015/02/14/creating-a-homebrew-formula-for-a-python-project/)
* [setting up a formula](https://tech.cars.com/distributing-your-home-grown-tools-to-the-masses-with-homebrew-acb7a62518a8)
* [formula cookbook official](https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md)
* [Stack Overflow thread for super simple formula](https://stackoverflow.com/questions/31660485/simple-homebrew-formula-for-python)
* [Stack Overflow thread about adding scripts to bin](https://stackoverflow.com/questions/6967331/how-do-i-install-a-script-to-run-anywhere-from-the-command-line)

# Coming Soon
* Docopts-needed for actual launch
* cool search parameters for advanced search 

