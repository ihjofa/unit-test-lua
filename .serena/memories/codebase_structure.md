# Codebase Structure

## Directory Layout
```
unit-test-lua/
├── lua/                          # Main source directory
│   ├── assert.lua               # Custom assertion framework
│   ├── printer_mod.lua          # Example module with object creation
│   ├── printer_mod_test.lua     # Test file for printer_mod
│   └── test_example.lua         # Additional test example
├── run_tests.sh                 # Test runner shell script
├── test_discovery.lua           # Test file discovery system
├── test_runner.lua             # Individual test execution
├── test_suite.lua              # Test suite management
├── CLAUDE.md                   # Project documentation
├── .serena/                    # Serena tool configuration
└── .claude/                    # Claude configuration
```

## Core Components

### Testing Framework
- **assert.lua**: Provides `assert.equal()` function with caller info debugging
- **test_suite.lua**: Manages test execution and statistics
- **test_discovery.lua**: Automatically finds test files with test_ functions
- **test_runner.lua**: Executes individual test files
- **run_tests.sh**: Shell script wrapper for running tests

### Example Modules
- **printer_mod.lua**: Demonstrates module pattern and object creation
- **printer_mod_test.lua**: Shows how to test modules using custom assertions

### Module Dependencies
- Files in lua/ directory can require each other
- Package path includes both lua/ directory and parent directory
- Standard Lua require/return pattern used throughout

### File Patterns
- Source modules: `*.lua` (in lua/ directory)
- Test files: `*_test.lua` 
- Executable files: `run_tests.sh` (with shebang)

## Entry Points
- **./run_tests.sh**: Main entry point for running tests
- **lua/printer_mod_test.lua**: Individual test execution
- **lua/*.lua**: Any module can be executed directly with `lua filename.lua`