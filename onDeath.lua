local eventCapture=CreateFrame("Frame");-- Need a frame to capture events
eventCapture:RegisterEvent("ENCOUNTER_END");
eventCapture:RegisterEvent("ENCOUNTER_START");

eventCapture:SetScript("OnEvent",function(self,event, ...)
    if (AddonEnabled == false) then 
        return --don't run any commands if addon is disabled
    end 

    if(event=="ENCOUNTER_START") then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\letfly.ogg","Master")
        return
    end

    local encounterId, encounterName, difficultyID, groupSize, success = ...;

    if(checkStatus(event, success)) then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\AssFeelin.ogg","Master")
    elseif(checkStatusTrue(event, success)) then
        PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\GoodJobZoey.ogg","Master")
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