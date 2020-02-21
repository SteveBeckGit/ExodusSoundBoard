local frame=CreateFrame("Frame");-- Need a frame to capture events
frame:RegisterEvent("CHAT_MSG_RAID");
frame:RegisterEvent("CHAT_MSG_PARTY_LEADER");
frame:RegisterEvent("CHAT_MSG_RAID_LEADER");
frame:RegisterEvent("CHAT_MSG_GUILD");
frame:RegisterEvent("CHAT_MSG_SAY");
frame:RegisterEvent("CHAT_MSG_WHISPER");
frame:RegisterEvent("CHAT_MSG_BN_WHISPER");
frame:RegisterEvent("CHAT_MSG_PARTY");-- Register our event

--lua does not preserve order of elements in table 
--we use a numeric key and ipairs to iterate over the elements in the desired order
local soundTable = {
    [1] = {"Wed Wench","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\1_red_wrench.ogg"},
    [2] = {"KappaWarren","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\2_warrenKappa.ogg"},
    [3] = {"NotTheBelt","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\NotTheBelt.ogg"},
    [4] = {"KiltPride","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\AranPride.ogg"},
    [5] = {"HowManyWeeks","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HowManyWeeks.ogg"},
    [6] = {"Bruce","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ThanksBruce.ogg"},
    [7] = {"Blue","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Blue.ogg"},
    [8] = {"Mana","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\mana.ogg"},
    [9] = {"STFU","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\stfu.ogg"},
    [10] = {"Oooh","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Oooh.ogg"},
    [11] = {"Slipped","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\It_Slipped.ogg"},
    [12] = {"Blowout","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\big_winter_dk_blowout.ogg"},
    [13] = {"ArranRee","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ArranRee.ogg"},
    [14] = {"Ree2","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Ree2.ogg"},
    [15] = {"Ree","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ree.ogg"},
    [16] = {"Oww","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\oww.ogg"},
    [17] = {"Bloodlust","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Bloodlust.ogg"},
    [18] = {"Champion!","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Champion.ogg"},
    [19] = {"Popcorn","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\popcorn.ogg"},
    [20] = {"Sorry","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Sorry.ogg"},
    [21] = {"What","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\What.ogg"},
    [22] = {"Bastard","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Bastard.ogg"},
    [23] = {"GoodJob","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\GoodJob.ogg"},
    [24] = {"HiThere","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HiThere.ogg"},
    [25] = {"Zuma","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Zuma.ogg"},
    [26] = {"FancyMeeting","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FancyMeetingYouHere.ogg"},
    [27] = {"Hard","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Hard.ogg"},
    [28] = {"FirstTime","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FirstTime.ogg"},
    [29] = {"WarrenGasm","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\WarrenGasm.ogg"},
    [30] = {"OnceItsIn","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\OnceItsIn.ogg"},
    [31] = {"TooSoon","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\TooSoon.ogg"},
    [32] = {"ScrewYou","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ScrewAllOfYou.ogg"}
}

frame:SetScript("OnEvent",function(self,event,msg)-- OnEvent handler receives event triggers

    --iterate over all sounds in order, check for match and return if one is found
    for k, sound in ipairs(soundTable) do
        if (checkChat(event) and string.find(msg, sound[1])) then --sound[1] is the command name
            PlaySoundFile(sound[2], "Master") --sound[2] is the filepath to the sound clip
            return
        end
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



