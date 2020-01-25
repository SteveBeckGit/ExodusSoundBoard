local eventCapture=CreateFrame("BossFrame");-- Need a frame to capture events
frame:RegisterEvent("ENCOUNTER_END");
frame:RegisterEvent("PLAYER_DEAD");

frame:SetScript("OnEvent",function(self,event)
    if(checkStatus(event)) then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\mana.ogg","Master")
    end
end);

function checkStatus(event)
    if (event=="ENCOUNTER_END"    
    )
     then
        return true
    else return false
    end    
end

