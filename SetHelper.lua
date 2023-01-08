function addToSet(set, key)
    set[key] = true
end
  
function removeFromSet(set, key)
    set[key] = nil
end
  
function setContains(set, key)
    return set[key] ~= nil  
end
  
function getTableSize(t)
    local count = 0
    for _, __ in pairs(t) do
        count = count + 1
    end
    return count
end