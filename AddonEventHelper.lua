-- Checks that the chat addon event we receive belongs to this addon, not somebody else's
-- and that it is a UI event
function isUiAddonEvent(event, prefix)
    return event=="CHAT_MSG_ADDON" and prefix == UI_ADDON_PREFIX
end

-- Checks that the chat addon event we receive belongs to this addon, not somebody else's
-- and that it is a version check event
function isVersionCheckAddonEvent(event, prefix)
    return event=="CHAT_MSG_ADDON" and prefix == VERSION_CHECK_ADDON_PREFIX
end

-- Checks if the sender of a message is the sender themself
function isSelf(sender)
    return string.find(sender, GetUnitName("player", 1))
end

function sendVersionCheckAddonMessageToGuildAndParty(message)
    if (IsInGuild()) then
        C_ChatInfo.SendAddonMessage(VERSION_CHECK_ADDON_PREFIX, message, "GUILD")
    end
    C_ChatInfo.SendAddonMessage(VERSION_CHECK_ADDON_PREFIX, message, "RAID")
end

function sendVersionCheckAddonMessageToPlayer(message, player)
    C_ChatInfo.SendAddonMessage(VERSION_CHECK_ADDON_PREFIX, message, "WHISPER", player)
end