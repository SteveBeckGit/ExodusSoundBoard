--table containing all the commands as well as their filepaths and icons
--intended to be referenced throughout the addon, our central source of info
--lua does not preserve order of elements in table 
--we use a numeric key and ipairs to iterate over the elements in the desired order
SOUND_TABLE = {
  {"Wed Wench","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\1_red_wrench.ogg","INTERFACE/ICONS/spell_mekkatorque_bot_redwrench"}, --same as [1] = {"command_name", "sound_filepath", "icon"}, 
  {"KappaWarren","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\2_warrenKappa.ogg","INTERFACE/ICONS/achievement_nazmir_boss_ghuun"}, --[2] = {}...
  {"NotTheBelt","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\NotTheBelt.ogg","INTERFACE/ICONS/inv_belt_04"},
  {"KiltPride","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\AranPride.ogg","INTERFACE/ICONS/achievement_doublerainbow"},
  {"KiltPriide","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\KiltPride2.ogg","INTERFACE/ICONS/Spell_Shaman_GiftEarthmother"},
  {"Welcome","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Welcome.ogg","INTERFACE/ICONS/INV_Misc_Toy_07"},
  {"Blowout","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\big_winter_dk_blowout.ogg","INTERFACE/ICONS/ability_deathknight_remorselesswinters2"},
  {"HowManyWeeks","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HowManyWeeks2.ogg","INTERFACE/ICONS/inv_misc_questionmark"},
  {"Bruce","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ThanksBruce.ogg","INTERFACE/ICONS/achievement_worldevent_thanksgiving"},
  {"Blue","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Blue.ogg","INTERFACE/ICONS/ability_fixated_state_blue"},
  {"Mana","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\mana.ogg","INTERFACE/ICONS/spell_frost_manaburn"},
  {"STFU","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\stfu.ogg","INTERFACE/ICONS/spell_misc_emotionangry"},
  {"Oooh","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Oooh.ogg","INTERFACE/ICONS/spell_misc_emotionhappy"},
  {"Slipped","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\It_Slipped.ogg","INTERFACE/ICONS/inv_babytentacleface"},
  {"ArranRee","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ArranRee.ogg","INTERFACE/ICONS/warrior_disruptingshout"},
  {"Ree2","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Ree2.ogg","INTERFACE/ICONS/ability_fomor_boss_shout"},
  {"Ree","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ree.ogg","INTERFACE/ICONS/ability_warrior_battleshout"},
  {"Oww","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\oww.ogg","INTERFACE/ICONS/spell_holy_painsupression"},
  {"Bloodlust","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Bloodlust.ogg","INTERFACE/ICONS/spell_nature_bloodlust"},
  {"Champion!","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Champion.ogg","INTERFACE/ICONS/inv__faction_championsofazeroth"},
  {"Popcorn","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\popcorn.ogg","INTERFACE/ICONS/inv_misc_popcorntoy"},
  {"Sorry","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Sorry.ogg","INTERFACE/ICONS/spell_misc_emotionafraid"},
  {"What","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\What.ogg","INTERFACE/ICONS/ability_rogue_surpriseattack"},
  -- {"Bastard","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Bastard.ogg","INTERFACE/ICONS/ability_warrior_commandingshout"},
  -- {"GoodJob","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\GoodJob.ogg","INTERFACE/ICONS/thumbsup"},
  {"HiThere","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HiThere.ogg","INTERFACE/ICONS/ability_paladin_handoflight"},
  {"Zuma","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Zuma.ogg","INTERFACE/ICONS/inv_helm_laughingskull_01"},
  {"FancyMeeting","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FancyMeetingYouHere.ogg","INTERFACE/ICONS/inv_garrison_hearthstone"},
  {"Hard","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Hard.ogg","INTERFACE/ICONS/INV_Pet_Maggot"},
  {"Receive","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Receive.ogg","INTERFACE/ICONS/INV_Pet_DiseasedBearCub"},
  -- {"GiveItToMe","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\GiveItToMe.ogg","INTERFACE/ICONS/Garrison_Building_Menagerie"},
  {"GiveItToMe","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\BruceGiveItToMe.ogg","INTERFACE/ICONS/Garrison_Building_Menagerie"},
  {"OnceItsIn","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\OnceItsIn.ogg","INTERFACE/ICONS/achievement_nzothraid_nzoth"},
  -- {"OmgAmazing","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\OmgAmazing.ogg","INTERFACE/ICONS/Ability_Priest_SavingGrace"},
  {"OmgAmazing","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\BruceAmazing.ogg","INTERFACE/ICONS/Ability_Priest_SavingGrace"},
  {"FirstTime","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FirstTime.ogg","INTERFACE/ICONS/achievement_bg_win_av_x_times"},
  {"WarrenGasm","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\WarrenGasm.ogg","INTERFACE/ICONS/ability_warrior_rampage"},
  {"TooSoon","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\TooSoon.ogg","INTERFACE/ICONS/spell_holy_borrowedtime"},
  {"ScrewYou","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ScrewAllOfYou.ogg","INTERFACE/ICONS/inv_misc_screwdriver_01"},
  {"ManUp","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ManUp.ogg","INTERFACE/ICONS/Achievement_Dungeon_Bastion of Twilight_Chogall Boss"},
  {"Kos","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Kos.ogg","INTERFACE/ICONS/INV_Tradeskill_Cooking_FeastofBlood"},
  {"ArranYeah","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ArranYeah.ogg","INTERFACE/ICONS/Spell_Holy_FistOfJustice"},
  {"OhYeah","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\OhYeah.ogg","INTERFACE/ICONS/INV_Relics_TotemofRage"},
  {"ComeOn","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ComeOn.ogg","INTERFACE/ICONS/Ability_Racial_Avatar"},
  {"NoNiceThings","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\NoNiceThings.ogg","INTERFACE/ICONS/INV_Misc_Statue_05"},
  {"NoOneImportantDied","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\NoOneImportantDied.ogg","INTERFACE/ICONS/Achievement_WorldEvent_Brewmaster"},
  {"Typing","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Typing.ogg","INTERFACE/ICONS/Achievement_Leader_King_Varian_Wrynn"},
  {"RightInTheKilt","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\RightInTheKilt.ogg","INTERFACE/ICONS/INV_Kilt_Cloth_01"},
  -- {"Sigh","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Sigh.ogg","INTERFACE/ICONS/Ability_Racial_NoseForTrouble"},
  {"Sigh","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\BruceSigh.ogg","INTERFACE/ICONS/Ability_Racial_NoseForTrouble"},
  {"Resurrect","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\RezErect.ogg","INTERFACE/ICONS/Spell_Holy_Resurrection"},
  {"Rage","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Rage.ogg","INTERFACE/ICONS/Warrior_talent_icon_FuryInTheBlood"},
  {"Beningining","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Beningining.ogg","INTERFACE/ICONS/Ability_Hunter_Pet_Gorilla"}
}
ADDON_PREFIX = "ESB1337"
ADDON_NAME = "ExodusSoundBoard"

-- variables used for generating UI
-- changing these is an easy way to update the UI - no other changes needed
local BTN_SIZE = 48
local BTNS_PER_ROW = 5
local OUTER_HORIZONTAL_SPACING = 10
local mainUiCreated = false
local LEADERBOARD_Y_OFFSET = -10

local frame = CreateFrame("FRAME"); -- Need a frame to respond to events
frame:RegisterEvent("ADDON_LOADED"); -- Fired when saved variables are loaded

function frame:OnEvent(event, arg1)
  if (event == "ADDON_LOADED" and arg1 == ADDON_NAME) then
    if (AddonEnabled == nil) then --check if our persisted values (saved variables) have been initialised yet
      AddonEnabled = true --if not, give a default value
    end
    if (ChatEnabled == nil) then
      ChatEnabled = true
    end
    if (UiEnabled == nil) then
      UiEnabled = true
    end
    if (CombatEnabled == nil) then
      CombatEnabled = true
    end
  end
end

frame:SetScript("OnEvent", frame.OnEvent)

-- setting up slash commands and show/hide functionality
SLASH_ESB1 = "/ESB"
SlashCmdList["ESB"] = function(msg)
  -- printWelcomeMessage()
  if (MainFrame:IsShown()) then
    MainFrame:Hide()
    OptionsFrame:Hide()
    LeaderboardFrame:Hide()
  else
    MainFrame:Show()
    setupMainUI()
  end
end

function setupMainUI()
  if (mainUiCreated) then
    return
  end
  --set up the frame for the buttons based on number of rows
  local numSounds = #SOUND_TABLE
  local numRows = 0
  if (numSounds % BTNS_PER_ROW == 0) then
    numRows = numSounds / BTNS_PER_ROW
  else
    numRows = math.floor(numSounds / BTNS_PER_ROW) + 1
  end
  MainFrame:SetSize(BTNS_PER_ROW * BTN_SIZE + OUTER_HORIZONTAL_SPACING * 2, numRows * BTN_SIZE + 77)

  --add a button for each item in the sound table
  for i, sound in ipairs(SOUND_TABLE) do
    local button = CreateFrame("Button", "Button" .. i, MainFrame, "UIPanelButtonTemplate")
    local row = 0
    if (i % BTNS_PER_ROW == 0) then
       row = math.floor((i - 1) / (BTNS_PER_ROW))
    else 
       row = math.floor(i / (BTNS_PER_ROW))
    end   
    local col = (i - 1) - (row * BTNS_PER_ROW)
    button:SetPoint("TOPLEFT", OUTER_HORIZONTAL_SPACING + col * BTN_SIZE, -60 - (row * BTN_SIZE))
    button:SetSize(BTN_SIZE, BTN_SIZE)
    button:SetNormalTexture(SOUND_TABLE[i][3])
    button.tooltipText = SOUND_TABLE[i][1]
    button:SetScript("OnClick", 
      function()
        SendAllAddonMessages(SOUND_TABLE[i][2])
      end
    )
  end
  mainUiCreated = true
 
end

function setupOptionsUI()
  if (OptionsFrame:IsShown()) then
    OptionsFrame:Hide()
  else
    OptionsFrame:Show()
  end

  if (AddonEnabledCheckButton == nil) then
    local addonEnabledCheckButton = createCheckButton("AddonEnabledCheckButton", OptionsFrame, OUTER_HORIZONTAL_SPACING, -30, "Enabled", "Enable/disable the soundboard", AddonEnabled)
    addonEnabledCheckButton:SetScript("OnClick", 
      function()
        if (AddonEnabled) then
          AddonEnabled = false
          setSubOptionsVisibility()
        else
          AddonEnabled = true
          setSubOptionsVisibility()
        end
      end
    );
  end

  if (ChatEnabledCheckButton == nil) then
    local chatEnabledCheckButton = createCheckButton("ChatEnabledCheckButton", OptionsFrame, OUTER_HORIZONTAL_SPACING, -50, "Chat commands enabled", "Enable/disable chat commands triggering sounds", ChatEnabled)
      chatEnabledCheckButton:SetScript("OnClick", 
        function()
          if (ChatEnabled) then
            ChatEnabled = false
          else
            ChatEnabled = true
          end
        end
      );
  end

  if (UiEnabledCheckButton == nil) then
    local uiEnabledCheckButton = createCheckButton("UiEnabledCheckButton", OptionsFrame, OUTER_HORIZONTAL_SPACING, -70, "UI enabled", "Enable/disable the soundboard UI triggering sounds", UiEnabled)
    uiEnabledCheckButton:SetScript("OnClick", 
      function()
        if (UiEnabled) then
          UiEnabled = false
        else
          UiEnabled = true
        end
      end
    );
  end

  if (CombatEnabledCheckButton == nil) then
    local combatEnabledCheckButton = createCheckButton("CombatEnabledCheckButton", OptionsFrame, OUTER_HORIZONTAL_SPACING, -90, "Enabled in combat", "Enable/disable sounds triggering whilst you are in combat", CombatEnabled)
    combatEnabledCheckButton:SetScript("OnClick", 
      function()
        if (CombatEnabled) then
          CombatEnabled = false
        else
          CombatEnabled = true
        end
      end
    );
  end

  setSubOptionsVisibility()
end

function setSubOptionsVisibility() 
    if (AddonEnabled == false) then
      ChatEnabledCheckButton:Hide()
      UiEnabledCheckButton:Hide()
      CombatEnabledCheckButton:Hide()
    else
      ChatEnabledCheckButton:Show()
      UiEnabledCheckButton:Show()
      CombatEnabledCheckButton:Show()
    end
end

function setupLeaderboardUI()
  if (LeaderboardFrame:IsShown()) then
    LeaderboardFrame:Hide()
  else
    LeaderboardFrame:Show()
  end
  updateLeaderboardUI()
end

function updateLeaderboardUI()
  LeaderboardFrame:SetSize(400, LEADERBOARD_TABLE_SIZE * 18 + 77)
  for player, details in pairs(LEADERBOARD_TABLE) do
    local message = player .. " has spammed " .. details[1] .. " times"
    local mouseoverText = "Mute " .. player .. " for this session?"
    if (getglobal(player) ~= nil) then
      updateCheckButtonText(player, message)
    else 
      LEADERBOARD_Y_OFFSET = LEADERBOARD_Y_OFFSET - 20
      local checkButton = createCheckButton(player, LeaderboardFrame, OUTER_HORIZONTAL_SPACING, LEADERBOARD_Y_OFFSET, message, mouseoverText, false)
      checkButton:SetScript("OnClick", 
        function()
          toggleSenderMute(player)
        end
      );
    end  
  end
end

function createCheckButton(globalName, parent, x_loc, y_loc, displayName, mouseoverText, checkedState) 
  local checkButton = CreateFrame("CheckButton", globalName, parent, "ChatConfigCheckButtonTemplate");
  checkButton:SetPoint("TOPLEFT", x_loc, y_loc);
  getglobal(checkButton:GetName() .. 'Text'):SetText(displayName);
  checkButton.tooltip = mouseoverText;
  checkButton:SetChecked(checkedState)
  return checkButton
end

function updateCheckButtonText(player, message, mouseoverText)
  getglobal(player .. 'Text'):SetText(message);
end

function printWelcomeMessage()
  print("<ESB> Welcome to Exodus Sound Board")
  print("<ESB> Each command is case sensitive, but can be included in a phrase")
  print("<ESB> The following commands are included in this release:")
  for i, sound in ipairs(SOUND_TABLE) do
    print("<ESB> " .. sound[1])
  end
end

function SendAllAddonMessages(soundFilepath)
  if (AddonEnabled and UiEnabled) then --only allow users to use the UI if their settings are enabled
    if (UnitExists("target") and (UnitIsPlayer("target"))) then C_ChatInfo.SendAddonMessage(ADDON_PREFIX, soundFilepath, "WHISPER", GetUnitName("target", 1)) end;
    if (IsInRaid()) then
      C_ChatInfo.SendAddonMessage(ADDON_PREFIX, soundFilepath, "RAID")
    elseif (IsInGroup()) then
      C_ChatInfo.SendAddonMessage(ADDON_PREFIX, soundFilepath, "PARTY")
    else
      C_ChatInfo.SendAddonMessage(ADDON_PREFIX, soundFilepath, "WHISPER", GetUnitName("player", 1))
    end
  end
end
