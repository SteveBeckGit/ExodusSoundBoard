local frame=CreateFrame("Frame");-- Need a frame to capture events
frame:RegisterEvent("CHAT_MSG_ADDON");
C_ChatInfo.RegisterAddonMessagePrefix(ADDON_PREFIX)

LEADERBOARD_TABLE = {} -- table structure is as follows: { playerName = {count, isMuted}, ...}
LEADERBOARD_TABLE_SIZE = 0

frame:SetScript("OnEvent",function(self,event,prefix,msg,channel,sender)-- OnEvent handler receives event triggers
    if (isUiEvent(event, prefix) and AddonEnabled) then
        updateLeaderboard(sender)
        if (UiEnabled and checkCombat() and isSenderMuted(sender) == false) then
            playSoundIfExists(msg)
        end
    end
end);

function isUiEvent(event, prefix)
    if (event=="CHAT_MSG_ADDON" and prefix == ADDON_PREFIX) then
        return true
    end
    return false
end

function updateLeaderboard(sender)
    if (LEADERBOARD_TABLE[sender] ~= nil) then
        LEADERBOARD_TABLE[sender] = {LEADERBOARD_TABLE[sender][1] + 1, LEADERBOARD_TABLE[sender][2]}
    else
        LEADERBOARD_TABLE[sender] = {1, false} --default values
        LEADERBOARD_TABLE_SIZE = LEADERBOARD_TABLE_SIZE + 1
    end
    updateLeaderboardUI()
end

function toggleSenderMute(sender)
    if (isSenderMuted(sender) == true) then
        LEADERBOARD_TABLE[sender][2] = false
    else
        LEADERBOARD_TABLE[sender][2] = true
    end
end

function isSenderMuted(sender)
    return LEADERBOARD_TABLE[sender][2]
end
