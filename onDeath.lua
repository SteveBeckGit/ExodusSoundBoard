local eventCapture=CreateFrame("Frame");-- Need a frame to capture events
eventCapture:RegisterEvent("ENCOUNTER_END");

eventCapture:SetScript("OnEvent",function(self,event, ...)
    local encounterId, encounterName, difficultyID, groupSize, success = ...;
    if(checkStatus(event, success)) then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\BadGuysWin.ogg","Master")
    elseif(checkStatusTrue(event, success)) then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\pArK.ogg","Master")
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
