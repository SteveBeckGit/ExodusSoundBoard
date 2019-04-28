
-- setting up slash commands and show/hide functionality
SLASH_ESB1 = "/ESB"
SlashCmdList["ESB"] = function(msg)
    if (PutItInFrame:IsShown()) then
      PutItInFrame:Hide()
   
    else
      PutItInFrame:Show()
     
    end
  end 


  
 

  
  
