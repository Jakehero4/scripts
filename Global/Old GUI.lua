   function MainGui:tileBackgroundTexture(frameToFill)
    if not frameToFill then return end
    frameToFill:ClearAllChildren()
    if backgroundImageTransparency < 1 xss=removed xss=removed xss=removed Name = 'BackgroundTextureImage' xss=removed xss=removed Image = 'rbxasset://textures/loading/darkLoadingTexture.png' xss=removed xss=removed xss=removed xss=removed xss=removed Name = "CancelLabel" xss=removed xss=removed xss=removed Image = 'rbxasset://textures/ui/Shell/ButtonIcons/BButton.png' xss=removed Name = "CancelText" xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Text = "Cancel" xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed cancelText.Text = "Canceling..." xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Name = 'RobloxLoadingGui' xss=removed Name = 'BlackFrame' xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Name = 'CloseButton' Image = 'rbxasset://textures/loading/cancelButton.png' xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Name = 'GraphicsFrame' xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Name = 'LoadingImage' xss=removed Image = 'rbxasset://textures/loading/loadingCircle.png' xss=removed xss=removed xss=removed xss=removed xss=removed Name = 'LoadingText' xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Text = "Loading..." xss=removed xss=removed xss=removed Name = 'UiMessageFrame' xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Name = 'UiMessage' xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Text = "" xss=removed xss=removed xss=removed Name = 'InfoFrame' xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Name = 'PlaceLabel' xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Text = "" xss=removed xss=removed xss=removed xss=removed xss=removed Name = "ByLabel" xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Text = "By" xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Name = "CreatorIcon" xss=removed xss=removed xss=removed xss=removed Image = 'rbxasset://textures/ui/Shell/Icons/RobloxIcon32.png' xss=removed xss=removed xss=removed xss=removed Name = 'CreatorLabel' xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Text = "" xss=removed xss=removed xss=removed xss=removed xss=removed Name = 'BackgroundTextureFrame' xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Name = 'ErrorFrame' xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Name = "ErrorText" xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed Text = "" xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed loadingDots = "..." xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed creatorLabel.Text = "By " xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed loadingDots = "" currScreenGui.BlackFrame.GraphicsFrame.LoadingText.Text = "Loading">= dotChangeTime and InfoProvider:GetCreatorName() == "" then
    lastDotUpdateTime = currentTime
    updateLoadingDots()
    else
    if guiService:GetBrickCount() > 0 then
    if brickCountChange == nil then
    brickCountChange = guiService:GetBrickCount()
    end
    if guiService:GetBrickCount() - lastBrickCount >= brickCountChange then
    lastBrickCount = guiService:GetBrickCount()
    updateLoadingDots()
    end
    end
    end
   
    if not isTenFootInterface then
    if currentTime - startTime > 5 and currScreenGui.BlackFrame.CloseButton.ImageTransparency > 0 then
    currScreenGui.BlackFrame.CloseButton.ImageTransparency = currScreenGui.BlackFrame.CloseButton.ImageTransparency - fadeAmount
   
    if currScreenGui.BlackFrame.CloseButton.ImageTransparency &lt;= 0 then
    currScreenGui.BlackFrame.CloseButton.Active = true
    end
    end
    end
   end)
   
   task.spawn(function()
    local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
    local guiInsetChangedEvent = Instance.new("BindableEvent")
    guiInsetChangedEvent.Name = "GuiInsetChanged"
    guiInsetChangedEvent.Parent = RobloxGui
    guiInsetChangedEvent.Event:connect(function(x1, y1, x2, y2)
    if currScreenGui and currScreenGui:FindFirstChild("BlackFrame") then
    currScreenGui.BlackFrame.Position = UDim2.new(0, -x1, 0, -y1)
    currScreenGui.BlackFrame.Size = UDim2.new(1, x1 + x2, 1, y1 + y2)
    end
    end)
   end)
   
   local leaveGameButton, leaveGameTextLabel, errorImage = nil
   
   guiService.ErrorMessageChanged:connect(function()
    if guiService:GetErrorMessage() ~= '' then
    if isTenFootInterface then
    currScreenGui.ErrorFrame.Size = UDim2.new(1, 0, 0, 144)
    currScreenGui.ErrorFrame.Position = UDim2.new(0, 0, 0, 0)
    currScreenGui.ErrorFrame.BackgroundColor3 = COLORS.BLACK
    currScreenGui.ErrorFrame.BackgroundTransparency = 0.5
    currScreenGui.ErrorFrame.ErrorText.FontSize = Enum.FontSize.Size36
    currScreenGui.ErrorFrame.ErrorText.Position = UDim2.new(.3, 0, 0, 0)
    currScreenGui.ErrorFrame.ErrorText.Size = UDim2.new(.4, 0, 0, 144)
    if errorImage == nil then
    errorImage = Instance.new("ImageLabel")
    errorImage.Image = "rbxasset://textures/ui/ErrorIconSmall.png"
    errorImage.Size = UDim2.new(0, 96, 0, 79)
    errorImage.Position = UDim2.new(0.228125, 0, 0, 32)
    errorImage.ZIndex = 9
    errorImage.BackgroundTransparency = 1
    errorImage.Parent = currScreenGui.ErrorFrame
    end
    -- we show a B button to kill game data model on console
    if not isTenFootInterface then
    if leaveGameButton == nil then
    local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
    local utility = require(RobloxGui.Modules.Settings.Utility)
    local textLabel = nil
    leaveGameButton, leaveGameTextLabel = utility:MakeStyledButton("LeaveGame", "Leave", UDim2.new(0, 288, 0, 78))
    leaveGameButton.NextSelectionDown = leaveGameButton
    leaveGameButton.NextSelectionLeft = leaveGameButton
    leaveGameButton.NextSelectionRight = leaveGameButton
    leaveGameButton.NextSelectionUp = leaveGameButton
    leaveGameButton.ZIndex = 9
    leaveGameButton.Position = UDim2.new(0.771875, 0, 0, 37)
    leaveGameButton.Parent = currScreenGui.ErrorFrame
    leaveGameTextLabel.FontSize = Enum.FontSize.Size36
    leaveGameTextLabel.ZIndex = 10
    game:GetService("GuiService").SelectedCoreObject = leaveGameButton
    else
    game:GetService("GuiService").SelectedCoreObject = leaveGameButton
    end
    end
    end
    currScreenGui.ErrorFrame.ErrorText.Text = guiService:GetErrorMessage()
    currScreenGui.ErrorFrame.Visible = true
    local blackFrame = currScreenGui:FindFirstChild('BlackFrame')
    if blackFrame then
    blackFrame.CloseButton.ImageTransparency = 0
    blackFrame.CloseButton.Active = true
    end
    else
    currScreenGui.ErrorFrame.Visible = false
    end
   end)
   
   guiService.UiMessageChanged:connect(function(type, newMessage)
    if type == Enum.UiMessageType.UiMessageInfo then
    local blackFrame = currScreenGui and currScreenGui:FindFirstChild('BlackFrame')
    if blackFrame then
    blackFrame.UiMessageFrame.UiMessage.Text = newMessage
    if newMessage ~= '' then
    blackFrame.UiMessageFrame.Visible = true
    else
    blackFrame.UiMessageFrame.Visible = false
    end
    end
    end
   end)
   
   if guiService:GetErrorMessage() ~= '' then
    currScreenGui.ErrorFrame.ErrorText.Text = guiService:GetErrorMessage()
    currScreenGui.ErrorFrame.Visible = true
   end
   
   
   function stopListeningToRenderingStep()
    if renderSteppedConnection then
    renderSteppedConnection:disconnect()
    renderSteppedConnection = nil
    end
   end
   
   function fadeAndDestroyBlackFrame(blackFrame)
    if destroyingBackground then return end
    destroyingBackground = true
    task.spawn(function()
    local infoFrame = blackFrame:FindFirstChild("InfoFrame")
    local graphicsFrame = blackFrame:FindFirstChild("GraphicsFrame")
   
    local infoFrameChildren = infoFrame:GetChildren()
    local transparency = 0
    local rateChange = 1.8
    local lastUpdateTime = nil
   
    while transparency < 1 xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed i=1, xss=removed xss=removed> 0)
   
    if not hasReplicatedFirstElements then
    if game:IsLoaded() then
    handleRemoveDefaultLoadingGui()
    else
    local gameLoadedCon = nil
    gameLoadedCon = game.Loaded:connect(function()
    gameLoadedCon:disconnect()
    gameLoadedCon = nil
    handleRemoveDefaultLoadingGui()
    end)
    end
    else
    wait(5) -- make sure after 5 seconds we remove the default gui, even if the user doesn't
    handleRemoveDefaultLoadingGui()
    end
   end
   
   function handleRemoveDefaultLoadingGui(instant)
    if isTenFootInterface then
    ContextActionService:UnbindCoreAction('CancelGameLoad')
    end
    destroyLoadingElements(instant)
   end
   
   game:GetService("ReplicatedFirst").FinishedReplicating:connect(handleFinishedReplicating)
   if game:GetService("ReplicatedFirst"):IsFinishedReplicating() then
    handleFinishedReplicating()
   end
   
   game:GetService("ReplicatedFirst").RemoveDefaultLoadingGuiSignal:connect(handleRemoveDefaultLoadingGui)
   if game:GetService("ReplicatedFirst"):IsDefaultLoadingGuiRemoved() then
    handleRemoveDefaultLoadingGui()
   end
   
   local UserInputServiceChangedConn;
   local function onUserInputServiceChanged(prop)
    if prop == 'VREnabled' then
    local UseVr = false
    pcall(function() UseVr = UIS.VREnabled end)
   
    if UseVr then
    if UserInputServiceChangedConn then
    UserInputServiceChangedConn:disconnect()
    UserInputServiceChangedConn = nil
    end
    handleRemoveDefaultLoadingGui(true)
    require(RobloxGui.Modules.LoadingScreen3D)
    end
    end
   end
   
   UserInputServiceChangedConn = UIS.Changed:connect(onUserInputServiceChanged)
   onUserInputServiceChanged('VREnabled')
end)

task.spawn(function()
   -- Creates all neccessary scripts for the gui on initial load, everything except build tools
   -- Created by Ben T. 10/29/10
   -- Please note that these are loaded in a specific order to diminish errors/perceived load time by user
   
   local scriptContext = game:GetService("ScriptContext")
   local touchEnabled = game:GetService("UserInputService").TouchEnabled
   
   local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
   
   local soundFolder = Instance.new("Folder")
   soundFolder.Name = "Sounds"
   soundFolder.Parent = RobloxGui
   
   -- This can be useful in cases where a flag configuration issue causes requiring a CoreScript to fail
   local function safeRequire(moduleScript)
    local moduleReturnValue = nil
    local success, err = pcall(function() moduleReturnValue = require(moduleScript) end)
    if not success then
    warn("Failure to Start CoreScript module" ..moduleScript.Name.. ".\n" ..err)
    end
    return moduleReturnValue
   end
   
   --CUSTOM FUNCTION FOR SYNAPSE X
   function AddCoreScriptLocal(str)
       local Inject = [==[
           --Get names
           script.Name = script.Name..[[]==]..str..[==[]]
           --FAKE SCRIPT
           local script = Instance.new("LocalScript", game.CoreGui.RobloxGui)
           script.Name = [[CoreScripts/]==]..str..[==[]]
           script.Disabled = true
           script.Source = [[print("Doin' your mom")]]
           
       ]==]
       
       loadstring(Inject..tostring(RobloxGui.CoreScriptSyn[str].Source))()
   end
   
   -- TopBar
   task.spawn(function()
       AddCoreScriptLocal("Topbar")
   end)
   -- SettingsScript
   local luaControlsSuccess, luaControlsFlagValue = pcall(function() return settings():GetFFlag("UseLuaCameraAndControl") end)
   
   -- MainBotChatScript (the Lua part of Dialogs)
   task.spawn(function()
       AddCoreScriptLocal("MainBotChatScript2")
   end)
   
   -- In-game notifications script
   task.spawn(function()
       AddCoreScriptLocal("NotificationScript2")
   end)
   -- Performance Stats Management
   task.spawn(function()
       AddCoreScriptLocal("PerformanceStatsManagerScript")
   end)
   
   -- Chat script
   task.spawn(function() safeRequire(RobloxGui.Modules.ChatSelector) end)
   task.spawn(function() safeRequire(RobloxGui.Modules.PlayerlistModule) end)
   task.spawn(function()
       AddCoreScriptLocal("BubbleChat")
   end)
   -- Purchase Prompt Script (run both versions, they will check the relevant flag)
   task.spawn(function()
       AddCoreScriptLocal("PurchasePromptScript2")
   end)
   task.spawn(function()
       AddCoreScriptLocal("PurchasePromptScript3")
   end)
   
   -- Backpack!
   task.spawn(function() safeRequire(RobloxGui.Modules.BackpackScript) end)
   task.spawn(function()
       AddCoreScriptLocal("VehicleHud")
   end)
   task.spawn(function()
       AddCoreScriptLocal("GamepadMenu")
   end)
   if touchEnabled then -- touch devices don't use same control frame
    -- only used for touch device button generation
    task.spawn(function()
    AddCoreScriptLocal("ContextActionTouch")
       end)
    RobloxGui:WaitForChild("ControlFrame")
    RobloxGui.ControlFrame:WaitForChild("BottomLeftControl")
    RobloxGui.ControlFrame.BottomLeftControl.Visible = false
   end
   
   do
    local UserInputService = game:GetService('UserInputService')
    local function tryRequireVRKeyboard()
    if UserInputService.VREnabled then
    return safeRequire(RobloxGui.Modules.VR.VirtualKeyboard)
    end
    return nil
    end
    if not tryRequireVRKeyboard() then
    UserInputService.Changed:connect(function(prop)
    if prop == "VREnabled" then
    tryRequireVRKeyboard()
    end
    end)
    end
   end
   
   -- Boot up the VR App Shell
   if UserSettings().GameSettings:InStudioMode() then
    local UserInputService = game:GetService('UserInputService')
    local function onVREnabled(prop)
    if prop == "VREnabled" then
    if UserInputService.VREnabled then
    local shellInVRSuccess, shellInVRFlagValue = pcall(function() return settings():GetFFlag("EnabledAppShell3D") end)
    local shellInVR = (shellInVRSuccess and shellInVRFlagValue == true)
    local modulesFolder = RobloxGui.Modules
    local appHomeModule = modulesFolder:FindFirstChild('Shell') and modulesFolder:FindFirstChild('Shell'):FindFirstChild('AppHome')
    if shellInVR and appHomeModule then
    safeRequire(appHomeModule)
    end
    end
    end
    end
   
    task.spawn(function()
    if UserInputService.VREnabled then
    onVREnabled("VREnabled")
    end
    UserInputService.Changed:connect(onVREnabled)
    end)
   end
end)
