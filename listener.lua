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
    {"Wed Wench","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\1_red_wrench.ogg"}, --same as [1] = {"command_name", "sound_filepath"}, 
    {"KappaWarren","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\2_warrenKappa.ogg"}, --[2] = {}...
    {"NotTheBelt","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\NotTheBelt.ogg"},
    {"KiltPride","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\AranPride.ogg"},
    {"HowManyWeeks","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HowManyWeeks.ogg"},
    {"Bruce","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ThanksBruce.ogg"},
    {"Blue","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Blue.ogg"},
    {"Mana","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\mana.ogg"},
    {"STFU","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\stfu.ogg"},
    {"Oooh","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Oooh.ogg"},
    {"Slipped","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\It_Slipped.ogg"},
    {"Blowout","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\big_winter_dk_blowout.ogg"},
    {"ArranRee","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ArranRee.ogg"},
    {"Ree2","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Ree2.ogg"},
    {"Ree","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ree.ogg"},
    {"Oww","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\oww.ogg"},
    {"Bloodlust","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Bloodlust.ogg"},
    {"Champion!","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Champion.ogg"},
    {"Popcorn","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\popcorn.ogg"},
    {"Sorry","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Sorry.ogg"},
    {"What","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\What.ogg"},
    {"Bastard","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Bastard.ogg"},
    {"GoodJob","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\GoodJob.ogg"},
    {"HiThere","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HiThere.ogg"},
    {"Zuma","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Zuma.ogg"},
    {"FancyMeeting","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FancyMeetingYouHere.ogg"},
    {"Hard","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Hard.ogg"},
    {"FirstTime","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FirstTime.ogg"},
    {"WarrenGasm","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\WarrenGasm.ogg"},
    {"OnceItsIn","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\OnceItsIn.ogg"},
    {"TooSoon","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\TooSoon.ogg"},
    {"ScrewYou","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ScrewAllOfYou.ogg"}
}

frame:SetScript("OnEvent",function(self,event,msg)-- OnEvent handler receives event triggers

    --iterate over all sounds in order, check for match and return if one is found
    for i, sound in ipairs(soundTable) do
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



