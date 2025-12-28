# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Lua unit testing project that demonstrates:
- Custom assertion framework implementation
- Module-based architecture with require/return pattern
- File system operations using luafilesystem (lfs)
- Simple object-oriented patterns in Lua

## Commands

### Running Tests
```bash
# Run individual test files
lua printer_mod_test.lua

# Run filesystem example (includes demo output)
lua filesystem_example.lua
```

### Running Individual Lua Files
All `.lua` files can be executed directly:
```bash
lua <filename>.lua
```

The `filesystem_example.lua` has a shebang line and can also be executed as:
```bash
./filesystem_example.lua
```

## Architecture

### Testing Framework
- **assert.lua**: Custom assertion module with `equal()` function and caller info debugging
- Test files follow the pattern `*_test.lua` and use `require("assert")`

### Module Pattern
All modules follow the standard Lua module pattern:
```lua
local module = {}
-- module functions
return module
```

### Dependencies
- **luafilesystem (lfs)**: Used in `filesystem_example.lua` for file system operations
- LuaRocks path configuration in `luarockstest.lua` shows how to set up package paths

### Key Components
- **printer_mod.lua**: Example module demonstrating object creation with methods
- **printer_mod_test.lua**: Test file showing how to test modules using the custom assert framework
- **filesystem_example.lua**: Utility module for file system operations with executable demo

## Testing Approach
Tests are written using the custom `assert` module. Each test file:
1. Requires the assert module
2. Defines test functions that call `assert.equal(result, expected, optional_message)`
3. Executes tests at the bottom of the file

The assert framework provides caller line information for debugging failed tests.