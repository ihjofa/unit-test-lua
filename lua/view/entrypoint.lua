local collect_test_file = require("collect_test_file")

local testfiles = collect_test_file.collect(arg[1])

print('hello')
print(arg[1])

for key, value in ipairs(testfiles) do
    print(key,value)
    os.execute("lua "..value)
end

