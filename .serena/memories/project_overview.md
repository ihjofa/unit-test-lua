# Project Overview

## Purpose
This is a Lua unit testing project that demonstrates:
- Custom assertion framework implementation
- Module-based architecture with require/return pattern
- Simple object-oriented patterns in Lua
- Test suite management with automated test discovery

## Tech Stack
- **Language**: Lua
- **Dependencies**: luafilesystem (lfs) for file system operations
- **Testing**: Custom assertion framework (assert.lua)
- **Package Management**: LuaRocks (path configuration shown in examples)

## Key Features
- Custom test discovery and execution system
- Modular design with standard Lua module pattern
- Object-oriented programming examples with constructor patterns
- Debug information for test failures (caller line info)
- Test suite statistics and reporting

## Main Components
- **assert.lua**: Custom assertion framework with equal() function
- **printer_mod.lua**: Example module demonstrating object creation
- **test_suite.lua**: Test suite management and execution
- **test_discovery.lua**: Automatic test file discovery
- **test_runner.lua**: Individual test execution
- **run_tests.sh**: Shell script for running tests