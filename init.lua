-- A fuzzy finder module for the
-- [Textadept](http://foicica.com/textadept/) editor 

-- The [source](https://github.com/chanble/ta-fuzzy-finder) is on GitHub,
-- released under the
-- [MIT license](http://www.opensource.org/licenses/mit-license.php).

local M = {}
-- 
args.register('-d', '--directory', 1, function(path)
	if not path or type(path) ~= 'string' or path == '.' then
		M.ff_path = lfs.currentdir()
	else
		M.ff_path = lfs.abspath(path)
	end
end, 'set fuzzy finder root path')

if not CURSES then
	keys[OSX and 'mp' or 'cp'] = function() 
		io.snapopen(M.ff_path, '*.*');
	end
end
return M
