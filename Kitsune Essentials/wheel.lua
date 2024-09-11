local mainPage = action_wheel:newPage()
local fox = models.model
local ears = fox.HeadEars
local tails = fox.Tails

-- local ToggleEars = true
-- local ToggleTails = true

action_wheel:setPage(mainPage)

function pings.ears(toggled)
	ears:setVisible(toggled)
	log(toggled and "Fox Ears --> §aOn" or "Fox Ears --> §cOff")
end

function pings.tail(toggled)
	tails:setVisible(toggled)
	log(toggled and "Fox Tails --> §aOn" or "Fox Tails --> §cOff")
end

mainPage:newAction()
	:title("Toggle Fox Ears")
    :onToggle(pings.ears)
    -- :toggled(ToggleEars)
	:setColor(vectors.hexToRGB("#FF7373"))
	:setHoverColor(vectors.hexToRGB("#ffffff"))
    :setToggleColor(vectors.hexToRGB("#9BFF73"))
    :texture(textures["model.earsicon"])

mainPage:newAction()
	:title("Toggle Fox Tails")
    :onToggle(pings.tail)
    -- :toggled(ToggleTails)
	:setColor(vectors.hexToRGB("#FF7373"))
	:setHoverColor(vectors.hexToRGB("#ffffff"))
    :setToggleColor(vectors.hexToRGB("#9BFF73"))
    :texture(textures["model.tailsicon"])