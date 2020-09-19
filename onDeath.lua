local eventCapture=CreateFrame("Frame");-- Need a frame to capture events
eventCapture:RegisterEvent("ENCOUNTER_END");

eventCapture:SetScript("OnEvent",function(self,event, ...)
    if (AddonEnabled == false) then 
        return --don't run any commands if addon is disabled
    end 

    local encounterId, encounterName, difficultyID, groupSize, success = ...;
    if(checkStatus(event, success)) then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\BadGuysWin.ogg","Master")
        -- PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HatePeople.ogg","Master")
    elseif(checkStatusTrue(event, success)) then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\pArK.ogg","Master")
        -- PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\YouDidntSuck.ogg","Master")
    end
end);



function checkStatusTrue(event, success)
    if (event=="ENCOUNTER_END"  and success == 1  
    )
     then
        return true
    else return false
    end    
end

function checkStatus(event, success)
    if (event=="ENCOUNTER_END"  and success == 0  
    )
     then
        return true
    else return false
    end    
end
