# Task Completion Workflow

## When a Task is Completed

### 1. Testing
Since this is a testing framework project, always run tests after making changes:
```bash
# Run all tests
./run_tests.sh

# Or run specific test file if you modified a particular module
./run_tests.sh module_name_test.lua
```

### 2. Verification Steps
- Ensure all test files in lua/ directory still pass
- Check that new code follows the module pattern (local module = {}, return module)
- Verify that any new test functions are called at the bottom of test files
- Confirm package.path is set correctly if adding new modules

### 3. File Organization
- Place all source modules in lua/ directory
- Test files should be named with _test.lua suffix
- Executable scripts in root directory should have appropriate shebang lines

### 4. No Linting/Formatting Tools
This project does not have:
- Automated linting tools
- Code formatting tools  
- Type checking systems
- Build systems

The project relies on:
- Manual code review
- Running tests for verification
- Following established conventions

### 5. Final Checks
- Run `./run_tests.sh` to ensure all tests pass
- Verify new modules can be required properly
- Test any new functionality manually if needed
- Check that debug output from assert framework is working correctly