local frame=CreateFrame("Frame");-- Need a frame to capture events
frame:RegisterEvent("CHAT_MSG_RAID");
frame:RegisterEvent("CHAT_MSG_PARTY_LEADER");
frame:RegisterEvent("CHAT_MSG_RAID_LEADER");
frame:RegisterEvent("CHAT_MSG_PARTY");-- Register our event
frame:SetScript("OnEvent",function(self,event,msg)-- OnEvent handler receives event triggers
    if (event=="CHAT_MSG_RAID" or event=="CHAT_MSG_GUILD" or event=="CHAT_MSG_PARTY" or event =="CHAT_MSG_BN" or event=="CHAT_MSG_RAID_LEADER" or event=="CHAT_MSG_PARTY_LEADER") and msg=="Wed Wench" then-- Someone sends "Wed Wench" in /raid
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\1_red_wrench.ogg")
    end

    if (event=="CHAT_MSG_RAID" or event=="CHAT_MSG_GUILD" or event=="CHAT_MSG_PARTY" or event=="CHAT_MSG_RAID_LEADER" or event=="CHAT_MSG_PARTY_LEADER") and msg=="KappaWarren" then-- Someone sends "Wed Wench" in /raid
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\2_warrenKappa.ogg","Master")
    end
   
    
end);