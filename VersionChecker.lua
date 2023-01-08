local DELIMITER = ","
local ASK_FOR_VERSION = "ASK_FOR_VERSION" .. DELIMITER
local SEND_VERSION = "SEND_VERSION" .. DELIMITER
local askForVersionEventFrame = CreateFrame("Frame")
local sendReceiveEventFrame = CreateFrame("Frame");
local wasAskedToUpdate = false
local count = 0
local sentToPlayersSet = {}
local localAddonVersion = GetAddOnMetadata("ExodusSoundBoard", "Version")

-- When the player logs in, reloads their UI, or joins a group, send an addon message
-- to all players in their guild and party asking for their addon version
local askForVersions = function(self, event, isLogin, isReload)
    if (wasAskedToUpdate) then return end -- if you've already been asked to update this session, don't ask for versions again

    if ((event == "PLAYER_ENTERING_WORLD" and (isLogin or isReload)) or event == "GROUP_JOINED") then
        print("Entered world/roster update. Requesting version from others")
        print(event)
        print("--------")
        sendVersionCheckAddonMessageToGuildAndParty(ASK_FOR_VERSION .. localAddonVersion)
    end
end

-- Check if this client has already sent its version to the player in question.
local function alreadySentToPlayer(player)
    return setContains(sentToPlayersSet, player)
end

local sendAndReceiveVersions = function(self, event, prefix, msg, channel, sender)
    if (not isVersionCheckAddonEvent(event, prefix)) then return end -- make sure the event is from our addon
    if (isSelf(sender)) then return end -- don't send/receive messages to/from yourself, tis silly
    count = count + 1
    print(count .. " " .. msg .. " from " .. sender)

    -- When a request for version is received, send an addon message
    -- back to the user who requested it including this client's addon version
    if (isVersionCheckAddonEvent(event, prefix) and string.find(msg, ASK_FOR_VERSION) and not alreadySentToPlayer(sender)) then
        print("Received " .. msg .. " from " .. sender)
        local versionTable = split(msg, DELIMITER) -- e.g. if msg is "ASK_FOR_VERSION,1.2", table will be {"ASK_FOR_VERSION", "1.2"}
        local receivedVersion = versionTable[2]
        print("received = " .. receivedVersion)
        print("local = " .. localAddonVersion)
        -- If the local version is greater than the version of the player asking, we send them our version.
        if (localAddonVersion > receivedVersion) then
            sendVersionCheckAddonMessageToPlayer(SEND_VERSION .. localAddonVersion, sender)
            print("Sending version " .. localAddonVersion .. " to them")
        else
            -- If the local version is less than or equal to the version of the player asking,
            -- there's no reason to send them a version back as it'll never result in an update prompt for them.
            -- Once you relog/reload, there's a chance your addon version will be updated at which
            -- point the set will be cleared and we can try to send the version again.
            addToSet(sentToPlayersSet, sender)
            print("No reason to do anything")
        end
        print("--------")
    end

    -- When a version number is received, check the received version number against this client's version number. 
    -- If greater, inform user that they need to update their addon.
    if (isVersionCheckAddonEvent(event, prefix) and string.find(msg, SEND_VERSION) and not wasAskedToUpdate) then
        print("Received " .. msg)
        local versionTable = split(msg, DELIMITER) -- e.g. if msg is "SEND_VERSION,1.2", table will be {"SEND_VERSION", "1.2"}
        local receivedVersion = versionTable[2]
        print("Local version for " .. GetUnitName("player", 1) .. " = " .. localAddonVersion)
        print("Received version " .. receivedVersion .. " from " .. sender)
        if (localAddonVersion < receivedVersion) then
            print("There is a new version of Exodus Sound Board available, please update!")
            wasAskedToUpdate = true
            askForVersionEventFrame:UnregisterEvent("PLAYER_ENTERING_WORLD")
            askForVersionEventFrame:UnregisterEvent("GROUP_JOINED")
        end
        print("--------")
        print("--------")
        print("--------")
    end
end

C_ChatInfo.RegisterAddonMessagePrefix(VERSION_CHECK_ADDON_PREFIX)
askForVersionEventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
askForVersionEventFrame:RegisterEvent("GROUP_JOINED")
askForVersionEventFrame:SetScript("OnEvent", askForVersions)
sendReceiveEventFrame:RegisterEvent("CHAT_MSG_ADDON")
sendReceiveEventFrame:SetScript("OnEvent", sendAndReceiveVersions)



