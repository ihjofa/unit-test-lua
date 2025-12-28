# Suggested Commands

## Testing Commands
```bash
# Run all tests using the test suite
./run_tests.sh

# Run a specific test file
./run_tests.sh filename_test.lua

# Run individual Lua test files directly
lua lua/printer_mod_test.lua

# Run any Lua file directly
lua <filename>.lua
```

## Development Commands
```bash
# Navigate to lua directory for development
cd lua

# Execute any lua file
lua filename.lua

# Make scripts executable (if needed)
chmod +x run_tests.sh
```

## System Commands (Linux)
```bash
# List files and directories
ls -la

# Find files
find . -name "*.lua"

# Search in files
grep -r "pattern" .

# Change directories
cd path/to/directory

# View file contents
cat filename.lua

# Edit files (common editors)
nano filename.lua
vim filename.lua
```

## Package Path Management
When working with modules, ensure proper package path:
```lua
package.path = package.path .. ';../?.lua;./?.lua'
```