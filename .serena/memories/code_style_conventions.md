# Code Style and Conventions

## Module Pattern
All modules follow the standard Lua module pattern:
```lua
local module = {}
-- module functions and variables
return module
```

## Naming Conventions
- **Modules**: lowercase with underscores (e.g., `printer_mod`, `test_suite`)
- **Functions**: camelCase or lowercase with underscores (e.g., `printer.new`, `assert.equal`)
- **Variables**: lowercase with underscores (e.g., `test_string`, `print_strings`)
- **Test files**: suffix with `_test.lua` (e.g., `printer_mod_test.lua`)

## Indentation and Formatting
- **Indentation**: Tabs (not spaces)
- **Function definitions**: 
  ```lua
  module.function_name = function(parameters)
      -- function body
  end
  ```
- **Object constructors**:
  ```lua
  module.new = function(params)
      return {
          property = params,
          method = function(self)
              -- method body
          end,
      }
  end
  ```

## Testing Conventions
- Test functions should be named descriptively (e.g., `print_test`, `get_string_test`)
- Use the custom assert framework: `assert.equal(result, expected, optional_message)`
- Test files should require the assert module: `local assert = require("assert")`
- Execute test functions at the bottom of test files

## Object-Oriented Patterns
- Use table-based objects with method calls using colon syntax: `object:method()`
- Constructors return tables with methods as function properties
- `self` parameter for object methods

## Comments and Documentation
- Minimal commenting observed in codebase
- No formal documentation strings
- Inline comments for clarity when needed