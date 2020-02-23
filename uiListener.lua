local frame=CreateFrame("Frame");-- Need a frame to capture events
frame:RegisterEvent("CHAT_MSG_ADDON");
C_ChatInfo.RegisterAddonMessagePrefix(addonPrefix)
frame:SetScript("OnEvent",function(self,event,prefix,msg)-- OnEvent handler receives event triggers

    if isUiEvent(event, prefix) then
        playSoundIfExists(msg)
    end

end);

function isUiEvent(event, prefix)
    if (event=="CHAT_MSG_ADDON" and prefix == addonPrefix) then
        return true
    end
    return false
end