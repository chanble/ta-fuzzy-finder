# ta-fuzzy-finder
textadept Fuzzy Finder module

This is fuzzy finder like atom fuzzy finder or sublime text's go to anything
You can fuzzy find file in the directory with `-d path`

#Installtion

Download a [zipped](https://github.com/chanble/ta-fuzzy-finder/archive/master.zip) version and save the contained directory as `.textadept/modules/fuzzy_finder` or clone the git repository:
`
cd ~/.textadept/modules
git clone https://github.com/chanble/ta-fuzzy-finder.git fuzzy_finder
`
Put 
`fuzzy_finder = require 'fuzzy_finder'`
in your `.textadept/ini.lua`
