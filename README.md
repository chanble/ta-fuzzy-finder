ta-fuzzy-finder
=========================
textadept Fuzzy Finder module

This is fuzzy finder like atom fuzzy finder or sublime text's go to anything

You can fuzzy find file in the directory with `-d path`

Installtion
============================
Download a [zipped](https://github.com/chanble/ta-fuzzy-finder/archive/master.zip) version and save the contained directory as `.textadept/modules/fuzzy_finder` or clone the git repository:

  `cd ~/.textadept/modules`
  
  `git clone https://github.com/chanble/ta-fuzzy-finder.git fuzzy_finder`
  
Put ```
local fuzzy_finder = require 'fuzzy_finder'
--fuzzy finder
local filter = {
	extensions = {'phar'}, --hidden files
	folders = {"^%.", 'node_modules', 'vendor'} --hidden folders
}
```
in your `.textadept/ini.lua`

usage
=====
1. go to your project path:
`cd your_project_path`
run textadept:
`textadept`

2. set your project path by `-d` or `--directory` option:
`textadept -d /your/project/path`

then you can press `ctrl-p`(win or linux) `cmd-p`(mac) 
