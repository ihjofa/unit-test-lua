local M = {}

local lfs = require("lfs")

function M.collect(path)
	local testfiles = {}
    local mode = lfs.attributes(path).mode

	if mode == "file" then
		if istestfile(path) then
			table.insert(testfiles, path)
			return testfiles
		end
	elseif mode == "directory" then
		local files = get_all_file_path(path)
		for key, value in ipairs(files) do
			if istestfile(value) then
				table.insert(testfiles, value)
			end
		end
		return testfiles
	end
end

function get_all_file_path(path)
	local files = {}
	dfsRecursive(path, function(_path, attr)
		if attr.mode == "file" then
			table.insert(files, _path)
		end
	end)
	return files
end

function dfsRecursive(path, callback)
	local attr = lfs.attributes(path)
	if not attr then
		return
	end

	callback(path, attr)

	if attr.mode == "directory" then
		for entry in lfs.dir(path) do
			if entry ~= "." and entry ~= ".." then
				local fullpath = path .. "/" .. entry
				dfsRecursive(fullpath, callback)
			end
		end
	end
end

function istestfile(value)
	istest = false
	if string.find(value, "/test_.*%.lua", 1) then
		istest = true
	end
	return istest
end

return M
