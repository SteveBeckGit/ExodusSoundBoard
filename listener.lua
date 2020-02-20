local frame=CreateFrame("Frame");-- Need a frame to capture events
frame:RegisterEvent("CHAT_MSG_RAID");
frame:RegisterEvent("CHAT_MSG_PARTY_LEADER");
frame:RegisterEvent("CHAT_MSG_RAID_LEADER");
frame:RegisterEvent("CHAT_MSG_GUILD");
frame:RegisterEvent("CHAT_MSG_SAY");
frame:RegisterEvent("CHAT_MSG_WHISPER");
frame:RegisterEvent("CHAT_MSG_BN_WHISPER");
frame:RegisterEvent("CHAT_MSG_PARTY");-- Register our event
frame:SetScript("OnEvent",function(self,event,msg)-- OnEvent handler receives event triggers
    if checkChat(event) and string.find(msg,"Wed Wench") then-- Someone sends "Wed Wench" in /raid
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\1_red_wrench.ogg","Master")
    end

    if checkChat(event) and string.find(msg,"KappaWarren") then-- 
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\2_warrenKappa.ogg","Master")
    end

    if checkChat(event) and string.find(msg,"NotTheBelt") then-- 
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\NotTheBelt.ogg","Master")
    end

    if checkChat(event) and (string.find(msg,"KiltPride") or string.find(msg,"KappaAran")) then-- 
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\AranPride.ogg","Master")
    end

    if checkChat(event) and string.find(msg,"HowManyWeeks") then-- 
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HowManyWeeks.ogg","Master")
    end

    if checkChat(event) and string.find(msg, "Bruce") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ThanksBruce.ogg","Master")
    end

    if checkChat(event) and string.find(msg, "Blue") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Blue.ogg","Master")
    end

    if checkChat(event) and string.find(msg, "Mana") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\mana.ogg","Master")
    end

    if checkChat(event) and string.find(msg, "STFU") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\stfu.ogg","Master")
    end

    if checkChat(event) and string.find(msg, "Oooh") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\oooh.ogg","Master")
    end

    if checkChat(event) and string.find(msg, "Slipped") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\it_slipped.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "Blowout") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\big_winter_dk_blowout.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "Ree") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ree.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "Oww") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\oww.ogg","Master")
    end
    
    if checkChat(event) and string.find(msg, "Bloodlust?") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Bloodlust.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "Champion!") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Champion.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "FFS Ryno") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FFSRyno.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "Popcorn") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\popcorn.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "Sorry") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Sorry.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "What?") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\What.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "Bastard") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Bastard.ogg","Master")
    end
    --------------------
    if checkChat(event) and string.find(msg, "GoodJob") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\GoodJobEdited.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "HiThere") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HiThere.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "Zuma") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Zuma.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "FancyMeeting") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FancyMeetingYouHere.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "Hard") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Hard.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "ArranRee") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ArranRee.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "First time?") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FirstTime.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "WarrenGasm") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\WarrenGasm.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "OnceItIn") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\OnceItsIn.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "TooSoon") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\TooSoon.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "ScrewYou") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ScrewAllOfYou.ogg","Master")
    end
    if checkChat(event) and string.find(msg, "Ree2") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Ree2.ogg","Master")
    end
   
    
end);

function checkChat(event)
    if (event=="CHAT_MSG_RAID" 
    or event=="CHAT_MSG_SAY" 
    or event=="CHAT_MSG_WHISPER" 
    or event=="CHAT_MSG_GUILD" 
    or event=="CHAT_MSG_PARTY" 
    or event =="CHAT_MSG_BN_WHISPER" 
    or event=="CHAT_MSG_RAID_LEADER" 
    or event=="CHAT_MSG_PARTY_LEADER")
     then
        return true
    else return false
    end    
end



