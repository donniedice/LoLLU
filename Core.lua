-- v1.0.8

-- Event function level up
-- Plays a custom sound effect when the player levels up in the game.
local frame_a = CreateFrame("Frame")
frame_a:RegisterEvent("PLAYER_LEVEL_UP")
frame_a:SetScript("OnEvent", function(self, event, ...)
	PlaySoundFile("Interface\\Addons\\LoLLU\\LoLLU.ogg", "Master")
end)

-- Mute default level up sound
-- Mutes the default level up sound in the game.
local frame_b = CreateFrame("Frame")
frame_b:RegisterEvent("PLAYER_LOGIN")
frame_b:SetScript("OnEvent", function(self, event, ...)
	MuteSoundFile(569593)
end)

-- Chat Message
-- Displays a chat message when the player logs in, informing them that the addon will no longer receive updates and its functionality has been merged into another addon.
local frame_c = CreateFrame("Frame")
frame_c:RegisterEvent("PLAYER_LOGIN")
frame_c:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_LOGIN" then
		print("|cffdeadffLoLLU - League of Legends Level Up!|r Will no longer be receiving updates. Functionality has been merged into |c2d4b92ffBLU - Better Level Up!|r. If you're a fan of my sound addons, |c2d4b92ffBLU - Better Level Up!|r is available from all addon provider websites. Thank you!")
	end
end)
