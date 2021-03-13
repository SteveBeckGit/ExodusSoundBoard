--filters for the table below
FILTER_BRUCE = "bRuCe"
FILTER_WARREN = "Warren"
FILTER_ARRAN = "Arran"
FILTER_LANCE = "Lance"
FILTER_STEVE = "Steve"
FILTER_OTHER = "Other"
FILTER_TABLE = {FILTER_BRUCE, FILTER_WARREN, FILTER_ARRAN, FILTER_LANCE, FILTER_STEVE, FILTER_OTHER}
--table containing all the commands as well as their filepaths and icons
--intended to be referenced throughout the addon, our central source of info
--lua does not preserve order of elements in table 
--we use a numeric key and ipairs to iterate over the elements in the desired order
SOUND_TABLE = {
  {"Wed Wench","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\1_red_wrench.ogg","INTERFACE/ICONS/spell_mekkatorque_bot_redwrench", FILTER_OTHER}, --same as [1] = {"command_name", "sound_filepath", "icon"}, 
  {"KappaWarren","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\2_warrenKappa.ogg","INTERFACE/ICONS/achievement_nazmir_boss_ghuun", FILTER_WARREN}, --[2] = {}...
  {"NotTheBelt","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\NotTheBelt.ogg","INTERFACE/ICONS/inv_belt_04", FILTER_BRUCE},
  {"KiltPride","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\AranPride.ogg","INTERFACE/ICONS/achievement_doublerainbow", FILTER_ARRAN},
  {"KiltPriide","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\KiltPride2.ogg","INTERFACE/ICONS/Spell_Shaman_GiftEarthmother", FILTER_ARRAN},
  {"Welcome","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Welcome.ogg","INTERFACE/ICONS/INV_Misc_Toy_07", FILTER_ARRAN},
  {"Blowout","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\big_winter_dk_blowout.ogg","INTERFACE/ICONS/ability_deathknight_remorselesswinters2", FILTER_ARRAN},
  {"HowManyWeeks","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HowManyWeeks2.ogg","INTERFACE/ICONS/inv_misc_questionmark", FILTER_LANCE},
  {"Bruce","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ThanksBruce.ogg","INTERFACE/ICONS/achievement_worldevent_thanksgiving", FILTER_ARRAN},
  {"Blue","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Blue.ogg","INTERFACE/ICONS/ability_fixated_state_blue", FILTER_BRUCE},
  {"Mana","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\mana.ogg","INTERFACE/ICONS/spell_frost_manaburn", FILTER_BRUCE},
  {"STFU","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\stfu.ogg","INTERFACE/ICONS/spell_misc_emotionangry", FILTER_OTHER},
  {"Oooh","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Oooh.ogg","INTERFACE/ICONS/spell_misc_emotionhappy", FILTER_WARREN},
  {"Slipped","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\It_Slipped.ogg","INTERFACE/ICONS/inv_babytentacleface", FILTER_OTHER},
  {"ArranRee","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ArranRee.ogg","INTERFACE/ICONS/warrior_disruptingshout", FILTER_ARRAN},
  {"Ree2","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Ree2.ogg","INTERFACE/ICONS/ability_fomor_boss_shout", FILTER_BRUCE},
  {"Ree","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ree.ogg","INTERFACE/ICONS/ability_warrior_battleshout", FILTER_BRUCE},
  {"Oww","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\oww.ogg","INTERFACE/ICONS/spell_holy_painsupression", FILTER_BRUCE},
  {"BruceHarder","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\BruceHarder.ogg","INTERFACE/ICONS/Ability_IronMaidens_MaraksBloodcalling", FILTER_BRUCE},
  {"Bloodlust","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Bloodlust.ogg","INTERFACE/ICONS/spell_nature_bloodlust", FILTER_BRUCE},
  {"Champion!","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Champion.ogg","INTERFACE/ICONS/inv__faction_championsofazeroth", FILTER_BRUCE},
  {"Popcorn","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\popcorn.ogg","INTERFACE/ICONS/inv_misc_popcorntoy", FILTER_BRUCE},
  {"Sorry","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Sorry.ogg","INTERFACE/ICONS/spell_misc_emotionafraid", FILTER_LANCE},as
  {"ClaireSorry","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ClaireSorry.ogg","INTERFACE/ICONS/Achievement_Dungeon_RixxaFluxfume", FILTER_OTHER},
  {"What","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\What.ogg","INTERFACE/ICONS/ability_rogue_surpriseattack", FILTER_BRUCE},
  -- {"Bastard","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Bastard.ogg","INTERFACE/ICONS/ability_warrior_commandingshout"},
  -- {"GoodJob","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\GoodJob.ogg","INTERFACE/ICONS/thumbsup"},
  {"HiThere","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HiThere.ogg","INTERFACE/ICONS/ability_paladin_handoflight", FILTER_OTHER},
  {"Zuma","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Zuma.ogg","INTERFACE/ICONS/inv_helm_laughingskull_01", FILTER_STEVE},
  {"FancyMeeting","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FancyMeetingYouHere.ogg","INTERFACE/ICONS/inv_garrison_hearthstone", FILTER_WARREN},
  {"Hard","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Hard.ogg","INTERFACE/ICONS/INV_Pet_Maggot", FILTER_WARREN},
  {"Receive","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Receive.ogg","INTERFACE/ICONS/INV_Pet_DiseasedBearCub", FILTER_WARREN},
  {"GiveItToMe","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\GiveItToMe.ogg","INTERFACE/ICONS/Garrison_Building_Menagerie", FILTER_WARREN},
  {"BruceGiveItToMe","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\BruceGiveItToMe.ogg","INTERFACE/ICONS/Garrison_Building_Menagerie", FILTER_BRUCE},
  {"OnceItsIn","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\OnceItsIn.ogg","INTERFACE/ICONS/achievement_nzothraid_nzoth", FILTER_STEVE},
  {"OmgAmazing","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\OmgAmazing.ogg","INTERFACE/ICONS/Ability_Priest_SavingGrace", FILTER_WARREN},
  {"BruceAmazing","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\BruceAmazing.ogg","INTERFACE/ICONS/Ability_Priest_SavingGrace", FILTER_BRUCE},
  {"FirstTime","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FirstTime.ogg","INTERFACE/ICONS/achievement_bg_win_av_x_times", FILTER_LANCE},
  {"WarrenGasm","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\WarrenGasm.ogg","INTERFACE/ICONS/ability_warrior_rampage", FILTER_WARREN},
  {"CouncilGasm","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\CouncilGasm.ogg","INTERFACE/ICONS/ability_deathknight_hemorrhagicfever", FILTER_OTHER},
  {"TooSoon","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\TooSoon.ogg","INTERFACE/ICONS/spell_holy_borrowedtime", FILTER_ARRAN},
  {"ScrewYou","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ScrewAllOfYou.ogg","INTERFACE/ICONS/inv_misc_screwdriver_01", FILTER_BRUCE},
  {"ManUp","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ManUp.ogg","INTERFACE/ICONS/Achievement_Dungeon_Bastion of Twilight_Chogall Boss", FILTER_LANCE},
  {"Kos","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Kos.ogg","INTERFACE/ICONS/INV_Tradeskill_Cooking_FeastofBlood", FILTER_OTHER},
  -- {"Delicious","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Delicious.ogg","INTERFACE/ICONS/INV_Misc_Food_Meat_Raw_08"},
  {"Delicious","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Delicious.ogg","INTERFACE/ICONS/Ability_IronMaidens_SorkasPrey", FILTER_OTHER},
  {"ArranYeah","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ArranYeah.ogg","INTERFACE/ICONS/Spell_Holy_FistOfJustice", FILTER_ARRAN},
  {"OhYeah","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\OhYeah.ogg","INTERFACE/ICONS/INV_Relics_TotemofRage", FILTER_OTHER},
  {"ComeOn","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ComeOn.ogg","INTERFACE/ICONS/Ability_Racial_Avatar", FILTER_BRUCE},
  {"NoNiceThings","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\NoNiceThings.ogg","INTERFACE/ICONS/INV_Misc_Statue_05", FILTER_LANCE},
  {"NoOneImportantDied","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\NoOneImportantDied.ogg","INTERFACE/ICONS/Achievement_WorldEvent_Brewmaster", FILTER_BRUCE},
  {"Typing","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Typing.ogg","INTERFACE/ICONS/Achievement_Leader_King_Varian_Wrynn", FILTER_BRUCE},
  {"Biscuits","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Biscuits.ogg","INTERFACE/ICONS/INV_Misc_Food_151_Cookie", FILTER_BRUCE},
  {"Beningining","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Beningining.ogg","INTERFACE/ICONS/Ability_Hunter_Pet_Gorilla", FILTER_LANCE},
  {"RightInTheKilt","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\RightInTheKilt.ogg","INTERFACE/ICONS/INV_Kilt_Cloth_01", FILTER_OTHER},
  {"Sigh","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Sigh.ogg","INTERFACE/ICONS/Ability_Racial_NoseForTrouble", FILTER_OTHER},
  {"BruceSigh","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\BruceSigh.ogg","INTERFACE/ICONS/Ability_Racial_NoseForTrouble", FILTER_BRUCE},
  {"Resurrect","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\RezErect.ogg","INTERFACE/ICONS/Spell_Holy_Resurrection", FILTER_ARRAN},
  {"Rage","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Rage.ogg","INTERFACE/ICONS/Warrior_talent_icon_FuryInTheBlood", FILTER_OTHER},
  {"HatePeople","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HatePeople.ogg","INTERFACE/ICONS/RACIAL_ORC_BERSERKERSTRENGTH", FILTER_OTHER},
  {"BruceQuiet","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\BruceBeQuiet.ogg","INTERFACE/ICONS/INV_Boots_Cloth_31v3", FILTER_OTHER},
  {"Aceso","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Aceso.ogg","INTERFACE/ICONS/Spell_Holy_SurgeOfLight", FILTER_BRUCE},
  {"UmmWhat","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Umm.ogg","INTERFACE/ICONS/INV_Misc_QuestionMark", FILTER_OTHER},
  {"Scars","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\scars.ogg","INTERFACE/ICONS/ability_demonhunter_feldevastation", FILTER_OTHER},
  {"Lube","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\lubing.ogg","INTERFACE/ICONS/Achievement_raid_revendrethraid_siredenathrius", FILTER_WARREN},
  {"break","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\brokeit.ogg","INTERFACE/ICONS/inv_catslime", FILTER_LANCE},
  {"Gagged","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\gagged.ogg","INTERFACE/ICONS/inv_leather_demonhunter_blindfold_01", FILTER_BRUCE},
  -- {"NotUP","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\notgotitup.ogg","INTERFACE/ICONS/Achievement_Boss_Durumu"},
  -- {"NotUP","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\notgotitup.ogg","INTERFACE/ICONS/Spell_Magic_PolymorphChicken"},
  {"NotUP","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\notgotitup.ogg","INTERFACE/ICONS/INV_Chicken2_Brown", FILTER_WARREN},
  {"Down","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\BoogieDown.ogg","INTERFACE/ICONS/misc_arrowdown", FILTER_OTHER},
  {"Left","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\SashayLeft.ogg","INTERFACE/ICONS/misc_arrowleft", FILTER_OTHER},
  {"Up","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\PranceForward.ogg","INTERFACE/ICONS/misc_arrowlup", FILTER_OTHER},
  {"Right","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ShimmyRight.ogg","INTERFACE/ICONS/misc_arrowright", FILTER_OTHER},
}
ADDON_PREFIX = "ESB1337"
ADDON_NAME = "ExodusSoundBoard"

local appliedFilterTable = {}
local buttonTable = {}

-- variables used for generating UI
-- changing these is an easy way to update the UI - no other changes needed
local BTN_SIZE = 48
local BTNS_PER_ROW = 5
local OUTER_HORIZONTAL_SPACING = 10
local LEADERBOARD_Y_OFFSET = -10
local FILTER_BAR_SPACING = 80
local mainUiCreated = false

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

-- Function to specify scroll distance.
-- Override default script on scroll frame with this
local function scrollFrame_OnMouseWheel(self, delta)
  local newValue = self:GetVerticalScroll() - (delta * 24);

  if (newValue < 0) then
    newValue = 0;
  elseif (newValue > self:GetVerticalScrollRange()) then
    newValue = self:GetVerticalScrollRange();
  end

  self:SetVerticalScroll(newValue);
end

function setupMainUI()
  if (mainUiCreated) then
    return
  end
  --Set backdrops here instead of in XML due to Shadowlands changes. See: https://github.com/Stanzilla/WoWUIBugs/wiki/9.0.1-Consolidated-UI-Changes#backdrop-system-changes
  MainFrame:SetBackdrop({
    bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
    edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 },
  })

  local scrollFrame = CreateFrame("ScrollFrame", "ButtonScrollFrame", MainFrame, "UIPanelScrollFrameTemplate")
  scrollFrame:SetSize(330, 288)
  scrollFrame:SetPoint("TOPLEFT", MainFrame, "TOPLEFT", 0,  -60)
  scrollFrame:SetScrollChild(ButtonFrame)
  scrollFrame:SetScript("OnMouseWheel", scrollFrame_OnMouseWheel); -- Override default blizzard scroll script with our own
  scrollFrame:Show()

  ButtonFrame:Show()

  OptionsFrame:SetBackdrop({
    bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
    edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 },
  })

  LeaderboardFrame:SetBackdrop({
    bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
    edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 },
  })

  -- Frames in Lua cannot be destroyed/removed once they have been created.
  -- We create as many buttons as we will need, and reuse them by keeping track of them in a table
  -- and updating values when necessary.
  for i, sound in ipairs(SOUND_TABLE) do
    local button = CreateFrame("Button", "Button" .. i, ButtonFrame, "UIPanelButtonTemplate")
    button:SetFrameLevel(3)
    table.insert(buttonTable, button)
  end

  -- Set up our filter check list
  for i, filter in ipairs(FILTER_TABLE) do
    local checkButton = createCheckButton("CheckButton" .. filter, MainFrame, OUTER_HORIZONTAL_SPACING, - 30 + i * -30, filter, "", false)
    checkButton:SetFrameLevel(2) -- put this behind button layer to prevent annoying cursor overlap issue
    checkButton:SetScript("OnClick", 
    function()
      setFilter(filter)
    end
  );
  end
  minMainFrameHeight = 60 + #FILTER_TABLE * 30

  createButtons()
  mainUiCreated = true
 
end

function createButtons()
    --add a button for each item in the sound table
    local numAppliedFilters = getTableSize(appliedFilterTable)
    local numActiveButtons = 0
    for i, sound in ipairs(SOUND_TABLE) do
      -- Only add button to UI if filtering for that specific person's sound
      -- OR add all buttons if no filters are selected
      if (numAppliedFilters == 0 or setContains(appliedFilterTable, sound[4])) then
        numActiveButtons = numActiveButtons + 1
        local button = buttonTable[numActiveButtons]
        local row = 0
        if (numActiveButtons % BTNS_PER_ROW == 0) then
          row = math.floor((numActiveButtons - 1) / (BTNS_PER_ROW))
        else 
          row = math.floor(numActiveButtons / (BTNS_PER_ROW))
        end   
        local col = (numActiveButtons - 1) - (row * BTNS_PER_ROW)
        button:SetPoint("TOPLEFT", FILTER_BAR_SPACING + OUTER_HORIZONTAL_SPACING + col * BTN_SIZE, -(row * BTN_SIZE))
        button:SetSize(BTN_SIZE, BTN_SIZE)
        button:SetNormalTexture(SOUND_TABLE[i][3])
        button.tooltipText = SOUND_TABLE[i][1]
        button:SetScript("OnClick", 
          function()
            SendAllAddonMessages(SOUND_TABLE[i][2])
          end
        )
        button:Show()
      end
    end

    -- Need to do this to hide the buttons we don't care about.
    -- Remember, we created a full set of buttons in setupMainUI() which we
    -- continue to reuse as we cannot remove frames.
    local numSounds = #SOUND_TABLE
    for i = numActiveButtons + 1, numSounds do
      buttonTable[i]:Hide()
    end
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

function setFilter(filter)
  if (setContains(appliedFilterTable, filter) == false) then
    addToSet(appliedFilterTable, filter)
  else
    removeFromSet(appliedFilterTable, filter)
  end
  createButtons()
end

function addToSet(set, key)
  set[key] = true
end

function removeFromSet(set, key)
  set[key] = nil
end

function setContains(set, key)
  return set[key] ~= nil
end

function getTableSize(t)
  local count = 0
  for _, __ in pairs(t) do
      count = count + 1
  end
  return count
end