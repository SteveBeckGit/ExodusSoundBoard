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

    if (isChatEvent(event)) then
        playSoundIfExists(msg)
    end

end);

-- function randomizeSound(msg)
--     local keys = {}

--     for i, sound in ipairs(soundTable) do --search table for anything with the msg word in it and add table item to local array
--         if string.find(sound[1], msg) then
--             table.insert( keys, sound )
--         end
--         print(keys[1])
--         PlaySoundFile(math.random(#keys)[2], "Master") --pick random sound in local array and play its sound
--         return
--       end
--     end


function playSoundIfExists(msg)
    -- if (msg=="Sorry" ) then  --sound[1] is the command name     || sound[1]=="HowManyWeeks" || sound[1]=="Ree2"
    --     randomizeSound(msg)
    -- end
            -- iterate over all sounds in order, check for match and return if one is found
    for i, sound in ipairs(soundTable) do
        if (string.find(msg, sound[1])) then 
            PlaySoundFile(sound[2], "Master") --sound[2] is the filepath to the sound clip
            return
        end
    end
end

function isChatEvent(event)
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
    else 
        return false
    end    
end



