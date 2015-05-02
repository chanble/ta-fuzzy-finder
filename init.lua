-- A fuzzy finder module for the
-- [Textadept](http://foicica.com/textadept/) editor 

-- The [source](https://github.com/chanble/ta-fuzzy-finder) is on GitHub,
-- released under the
-- [MIT license](http://www.opensource.org/licenses/mit-license.php).
local M = {}
local keys = keys

M.ff_path = lfs.currentdir()
-- 
args.register('-d', '--directory', 1, function(path)
	if not (not path or type(path) ~= 'string' or path == '.') then
		M.ff_path = lfs.abspath(path)
	end
end, 'set fuzzy finder root path')

function M.show(filter)
	local folders_filter = {}
	for i,v in ipairs(filter.folders) do
		folders_filter[i] = v
		filter.folders[i] = M.ff_path .. '/' .. v
	end
	io.snapopen(M.ff_path, filter)
	filter.folders = folders_filter
end

return M
