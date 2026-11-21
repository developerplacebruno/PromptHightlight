local ProximityPromptService = game:GetService("ProximityPromptService")

local player = game.Players.localPlayer
local playerGui = player.PlayerGui

local hightlight = Instance.new("Highlight", playerGui)
hightlight.Name = "PromptHightlight"
hightlight.FillColor = Color3.fromHex("ffffff")
hightlight.FillTransparency = 0.7
hightlight.OutlineColor = Color3.fromHex("000000")
hightlight.OutlineTransparency = 0.5
hightlight.DepthMode = Enum.HighlightDepthMode.Occluded

local PromptHightlight = {}

function PromptHightlight:init()
	ProximityPromptService.PromptShown:Connect(function(instance)
		hightlight.Adornee = instance.Parent
	end)

	ProximityPromptService.PromptHidden:Connect(function()
		hightlight.Adornee = nil
	end)
end

return PromptHightlight
