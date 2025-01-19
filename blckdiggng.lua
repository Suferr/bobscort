local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "digging sim â›ï¸",
   LoadingTitle = "Scriptblox.com/u/SimpleScripter",
   LoadingSubtitle = "by SimpleScripter",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "SimpleScripter"
   },
   Discord = {
      Enabled = true,
      Invite = "key in desc",
      RememberJoins = false
   },
   KeySystem = false,
   KeySettings = {
      Title = "key system",
      Subtitle = "Key System",
      Note = "get key @ Scriptblox.com/u/SimpleScripter key in 42",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"8OEJDLKAND9I1PKENDNHWOO397WOEMDJUWHJQW97792KENDJSIOKBWUOPW9IENDNOOIW9I2IQ0OEJD82I029729WIWK9W82W9"}
   }
})

local Tab = Window:CreateTab("strength and wins")

local TrainSection = Tab:CreateSection("")

Tab:CreateButton({
   Name = "get 100m strength",
   Callback = function()
      local args = {
         [1] = 100000000
      }
      game:GetService("ReplicatedStorage").Game.RemoteEvents.GiveStrength:FireServer(unpack(args))
   end,
})

Tab:CreateButton({
   Name = "get 100B strength",
   Callback = function()
      local args = {
         [1] = 100000000000
      }
      game:GetService("ReplicatedStorage").Game.RemoteEvents.GiveStrength:FireServer(unpack(args))
   end,
})

Tab:CreateButton({
   Name = "get INF strength",
   Callback = function()
      local args = {
         [1] = math.huge
      }
      game:GetService("ReplicatedStorage").Game.RemoteEvents.GiveStrength:FireServer(unpack(args))
   end,
})

Tab:CreateInput({
   Name = "Input strength",
   CurrentValue = "",
   PlaceholderText = "Enter amount of strength",
   RemoveTextAfterFocusLost = true,
   Flag = "Input1",
   Callback = function(Text)
      local amount = tonumber(Text)
      if amount then
         local args = {
            [1] = amount
         }
         game:GetService("ReplicatedStorage").Game.RemoteEvents.GiveStrength:FireServer(unpack(args))
      end
   end,
})

local CrateSection = Tab:CreateSection("get wins")

Tab:CreateButton({
   Name = "1T wins",
   Callback = function()
      local args = {
         [1] = {
            ["Amount"] = 1000000000000,
            ["StatName"] = "Win",
            ["Time"] = 180,
            ["GiftType"] = "Stat"
         }
      }
      game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(args))
   end,
})

Tab:CreateButton({
   Name = "INF wins",
   Callback = function()
      local args = {
         [1] = {
            ["Amount"] = math.huge,
            ["StatName"] = "Win",
            ["Time"] = 180,
            ["GiftType"] = "Stat"
         }
      }
      game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(args))
   end,
})

Tab:CreateInput({
   Name = "Input wins",
   CurrentValue = "",
   PlaceholderText = "Enter amount of wins",
   RemoveTextAfterFocusLost = true,
   Flag = "Input1",
   Callback = function(Text)
      local amounttt = tonumber(Text)
      if amounttt then
         local args = {
            [1] = {
               ["Amount"] = amounttt,
               ["StatName"] = "Win",
               ["Time"] = 180,
               ["GiftType"] = "Stat"
            }
         }
         game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(args))
      end
   end,
})

local Tab = Window:CreateTab("paid pickaxes")

local PickaxeSection = Tab:CreateSection("get for free")

Tab:CreateButton({
   Name = "Paid pickaxe 1 golden pixel pickaxe",
   Callback = function()
      local args = {
         [1] = "Golden Pixel Pickaxe"
      }
      game:GetService("ReplicatedStorage").Game.RemoteFunctions.PurchasePickaxe:InvokeServer(unpack(args))
   end,
})

Tab:CreateButton({
   Name = "Paid pickaxe 2 vip hammer",
   Callback = function()
      local args = {
         [1] = "Vip Hammer"
      }
      game:GetService("ReplicatedStorage").Game.RemoteFunctions.PurchasePickaxe:InvokeServer(unpack(args))
   end,
})

Tab:CreateButton({
   Name = "Paid pickaxe best axe diamond pixel pickaxe",
   Callback = function()
      local args = {
         [1] = "Diamond Pixel Pickaxe"
      }
      game:GetService("ReplicatedStorage").Game.RemoteFunctions.PurchasePickaxe:InvokeServer(unpack(args))
   end,
})

local Tab = Window:CreateTab("paid pets 4 free")

Tab:CreateButton({
   Name = "paid pet 1 Pyrium",
   Callback = function()
      local args = {
         [1] = {
            ["PetName"] = "Pyrium",
            ["Time"] = 420,
            ["GiftType"] = "Pet"
         }
      }
      game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(args))
   end,
})

Tab:CreateButton({
   Name = "Paid pet 2 mega alien",
   Callback = function()
      local args = {
         [1] = {
            ["PetName"] = "Mega Alien",
            ["Time"] = 420,
            ["GiftType"] = "Pet"
         }
      }
      game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(args))
   end,
})

Tab:CreateButton({
   Name = "Paid pet 3 mega dominus",
   Callback = function()
      local args = {
         [1] = {
            ["PetName"] = "Mega Dominus",
            ["Time"] = 420,
            ["GiftType"] = "Pet"
         }
      }
      game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(args))
   end,
})

Tab:CreateButton({
   Name = "good pet 1950x",
   Callback = function()
      local args = {
         [1] = {
            ["PetName"] = "King Mushroom",
            ["Time"] = 420,
            ["GiftType"] = "Pet"
         }
      }
      game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(args))
   end,
})

Tab:CreateButton({
   Name = "Paid pet 4 volty",
   Callback = function()
      local args = {
         [1] = {
            ["PetName"] = "Volty",
            ["Time"] = 420,
            ["GiftType"] = "Pet"
         }
      }
      game:GetService("ReplicatedStorage").Game.RemoteEvents.FreeGift:FireServer(unpack(args))
   end,
})

local Tab = Window:CreateTab("cred and discord")

local Paragraph = Tab:CreateParagraph({Title = "Paragraph", Content = "Fully made by me SimpleScripter got any game ideas? DM me on discord @2ft4 if you want. Also want to join the discord? click the button below â¬‡ to join the discord."})

Tab:CreateButton({
   Name = "join the discord for more scripts.",
   Callback = function()
      setclipboard("https://discord.gg/9QDXpxVw")
   end,
})
