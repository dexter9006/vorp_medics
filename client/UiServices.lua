UIPrompt = {}

local promptGroupM = GetRandomIntInRange(0, 0xffffff)
local promptGroupH = GetRandomIntInRange(0, 0xffffff)
local promptGroupS = GetRandomIntInRange(0, 0xffffff)
local promptGroupC = GetRandomIntInRange(0, 0xffffff)
local promptGroupI = GetRandomIntInRange(0, 0xffffff)

UIPrompt.activateM = function(title)
    local label = CreateVarString(10, 'LITERAL_STRING', title)
    PromptSetActiveGroupThisFrame(promptGroupM, label)
end

UIPrompt.activateH = function(title)
    local label = CreateVarString(10, 'LITERAL_STRING', title)
    PromptSetActiveGroupThisFrame(promptGroupH, label)
end

UIPrompt.activateS = function(title)
    local label = CreateVarString(10, 'LITERAL_STRING', title)
    PromptSetActiveGroupThisFrame(promptGroupS, label)
end

UIPrompt.activateC = function(title)
    local label = CreateVarString(10, 'LITERAL_STRING', title)
    PromptSetActiveGroupThisFrame(promptGroupC, label)
end

UIPrompt.activateI = function(title)
    local label = CreateVarString(10, 'LITERAL_STRING', title)
    PromptSetActiveGroupThisFrame(promptGroupI, label)
end

UIPrompt.initializeM = function()
    local str = _U('HealButton')
    MedPrompt = PromptRegisterBegin()
    PromptSetControlAction(MedPrompt, Config.HealKey)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(MedPrompt, str)
    PromptSetEnabled(MedPrompt, 1)
    PromptSetVisible(MedPrompt, 1)
    PromptSetStandardMode(MedPrompt, 1)
    PromptSetGroup(MedPrompt, promptGroupM)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, MedPrompt, true)
    PromptRegisterEnd(MedPrompt)
end

UIPrompt.initializeH = function()
    local str = _U('StudyHerbals')
    HerbPrompt = PromptRegisterBegin()
    PromptSetControlAction(HerbPrompt, Config.StudyKey)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(HerbPrompt, str)
    PromptSetEnabled(HerbPrompt, 1)
    PromptSetVisible(HerbPrompt, 1)
    PromptSetStandardMode(HerbPrompt, 1)
    PromptSetGroup(HerbPrompt, promptGroupH)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, HerbPrompt, true)
    PromptRegisterEnd(HerbPrompt)
end

UIPrompt.initializeS = function()
    local str = _U('MedicStables')
    HorsePrompt = PromptRegisterBegin()
    PromptSetControlAction(HorsePrompt, Config.HorseKey)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(HorsePrompt, str)
    PromptSetEnabled(HorsePrompt, 1)
    PromptSetVisible(HorsePrompt, 1)
    PromptSetStandardMode(HorsePrompt, 1)
    PromptSetGroup(HorsePrompt, promptGroupS)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, HorsePrompt, true)
    PromptRegisterEnd(HorsePrompt)
end

UIPrompt.initializeC = function()
    local str = _U('MedicCrafting')
    CraftPrompt = PromptRegisterBegin()
    PromptSetControlAction(CraftPrompt, Config.StudyKey)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(CraftPrompt, str)
    PromptSetEnabled(CraftPrompt, 1)
    PromptSetVisible(CraftPrompt, 1)
    PromptSetStandardMode(CraftPrompt, 1)
    PromptSetGroup(CraftPrompt, promptGroupC)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, CraftPrompt, true)
    PromptRegisterEnd(CraftPrompt)
end

UIPrompt.initializeI = function()
    local str = _U('MedicInventory')
    InventoryPrompt = PromptRegisterBegin()
    PromptSetControlAction(InventoryPrompt, Config.StudyKey)
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(InventoryPrompt, str)
    PromptSetEnabled(InventoryPrompt, 1)
    PromptSetVisible(InventoryPrompt, 1)
    PromptSetStandardMode(InventoryPrompt, 1)
    PromptSetGroup(InventoryPrompt, promptGroupI)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, InventoryPrompt, true)
    PromptRegisterEnd(InventoryPrompt)
end