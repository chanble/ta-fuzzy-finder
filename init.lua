-- A fuzzy finder module for the
-- [Textadept](http://foicica.com/textadept/) editor 

-- The [source](https://github.com/chanble/ta-fuzzy-finder) is on GitHub,
-- released under the
-- [MIT license](http://www.opensource.org/licenses/mit-license.php).

local M = {}

M.ff_path = lfs.currentdir()
-- 
args.register('-d', '--directory', 1, function(path)
	if not (not path or type(path) ~= 'string' or path == '.') then
		M.ff_path = lfs.abspath(path)
	end
end, 'set fuzzy finder root path')

M.fuzzyfinder = function()
	io.snapopen(M.ff_path, '*.*');
end
keys[OSX and 'mp' or 'cp'] = M.fuzzyfinder

return M
