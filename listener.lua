local frame=CreateFrame("Frame");-- Need a frame to capture events
frame:RegisterEvent("CHAT_MSG_RAID");
frame:RegisterEvent("CHAT_MSG_PARTY_LEADER");
frame:RegisterEvent("CHAT_MSG_RAID_LEADER");
frame:RegisterEvent("CHAT_MSG_GUILD");
frame:RegisterEvent("CHAT_MSG_WHISPER")
frame:RegisterEvent("CHAT_MSG_PARTY");-- Register our event
frame:SetScript("OnEvent",function(self,event,msg)-- OnEvent handler receives event triggers
    if checkChat(event) and string.find(msg,"Wed Wench") then-- Someone sends "Wed Wench" in /raid
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\1_red_wrench.ogg")
    end

    if checkChat(event) and string.find(msg,"KappaWarren") then-- Someone sends "Wed Wench" in /raid
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\2_warrenKappa.ogg","Master")
    end
   
    
end);

function checkChat(event)
    if (event=="CHAT_MSG_RAID" or event=="CHAT_MSG_WHISPER" or event=="CHAT_MSG_GUILD" or event=="CHAT_MSG_PARTY" or event =="CHAT_MSG_BN_WHISPER" or event=="CHAT_MSG_RAID_LEADER" or event=="CHAT_MSG_PARTY_LEADER") then
        return true
    else return false
    end    
end



