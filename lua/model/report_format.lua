local M = {}

function M.new(is_passed, result, expected, message)
    local report = {}
    report.is_passed = is_passed
    report.result = result
    report.expected = expected
    report.message = message
    return report
end

return M
