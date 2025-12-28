local collect_test_file = require('collect_test_file')
local lfs = require('lfs')

for i in lfs.dir('./') do
    print(i)
end

for key, value in ipairs(collect_test_file.collect('./')) do
    print(key, value)
    os.execute('lua '..value)
end

