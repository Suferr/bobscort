local skyboxId = "12077086097"

-- Function to change the skybox
local function changeSkybox()
    local sky = Instance.new("Sky")
    sky.Parent = game.Lighting
    
    sky.SkyboxBk = "rbxassetid://" .. skyboxId
    sky.SkyboxDn = "rbxassetid://" .. skyboxId
    sky.SkyboxFt = "rbxassetid://" .. skyboxId
    sky.SkyboxLf = "rbxassetid://" .. skyboxId
    sky.SkyboxRt = "rbxassetid://" .. skyboxId
    sky.SkyboxUp = "rbxassetid://" .. skyboxId
end

changeSkybox()
