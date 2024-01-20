--==========================
-- MENU.LUA
--==========================

-- Chama a biblioteca do Composer
local composer = require("composer")

-- Cria uma nova cena
local scene = composer.newScene()


-- Criamos a função de criar a cena

function scene:create(event)
	local sceneGroup = self.view

	local bg = display.newRect(sceneGroup, centerX, centerY, display.contentWidth, display.contentHeight)
	bg:setFillColor(0,0,1)

	local logo = display.newRoundedRect(sceneGroup, centerX-200, centerY-100, 300, 200, 20)
	logo:setFillColor(0,0.5,1)
	transition.to(logo, {x=centerX, time=1000})

	local title = display.newText(sceneGroup, "Titulo do Jogo", centerX, logo.y, native.systemFont, 24)
	transition.to(title, {time=1000, xScale=1.5, yScale=1.5})

	local playButton = display.newText(sceneGroup, "Iniciar Jogo", centerX, centerY+80, native.systemFont, 24)
	transition.blink(playButton, {time=1500})

	-- function inicia()
	-- 	composer.gotoScene("game", {effect="fade", time=500})
	-- end

	playButton:addEventListener("tap", function(event)
		composer.gotoScene("game", {effect="fade", time=500})
	end)

end

scene:addEventListener("create", scene)

return scene