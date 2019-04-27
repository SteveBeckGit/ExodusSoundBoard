local f = CreateFrame("Frame")
f:SetScript("OnEvent", function(self, event, ...) self[event](self, ...) end)

-- setting up slash commands and show/hide functionality
SLASH_ESB1 = "/ESB"
SlashCmdList["ESB"] = function(msg)
    if (PutItInFrame:IsShown()) then
      PutItInFrame:Hide()
      f:UnregisterEvent("CHAT_MSG_WHISPER")
    else
      PutItInFrame:Show()
      f:RegisterEvent("CHAT_MSG_WHISPER")
    end
  end
  
  function f:CHAT_MSG_WHISPER(msg)
    -- PlaySound(5274)
    local color = {r = 0, g = 1, b = 0}
    if msg == "WarrenKappa" then
      RaidNotice_AddMessage(RaidWarningFrame, "OOOPH", color)
      PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\2_warrenKappa.ogg","Master")
      
    end

    if msg == "Wed Wench" then
      RaidNotice_AddMessage(RaidWarningFrame, "Wed Wench", color)
      PlaySoundFile("Interface\\AddOns\\ExodusSoundBoard\\Sounds\\1_red_wrench.ogg")
    end
   
  end
  
