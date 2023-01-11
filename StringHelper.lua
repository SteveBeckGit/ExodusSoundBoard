-- Splits a string using the provided delimiter and returns a table
-- e.g. split("a,b,c", ",") => {"a", "b", "c"}
function split(string, delimiter)
    local fields = {}
    local delimiter = delimiter or " "
    local pattern = string.format("([^%s]+)", delimiter)
    string.gsub(string, pattern, function(c) fields[#fields + 1] = c end)
    return fields
end