-- A fuzzy finder module for the
-- [Textadept](http://foicica.com/textadept/) editor 

-- The [source](https://github.com/chanble/ta-fuzzy-finder) is on GitHub,
-- released under the
-- [MIT license](http://www.opensource.org/licenses/mit-license.php).
local M = {}
local keys = keys

M.fuzzy_finder = require 'fuzzy_finder.fuzzyfinder'
local filter = {extensions = {}, folders = {"^%.", 'node_modules'}}
keys[OSX and 'mp' or 'cp'] = {M.fuzzy_finder.show, filter}

return M
