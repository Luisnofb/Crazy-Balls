require "functions/criaball"
function ballsF2_load()
	pgr=love.audio.newSource("sons/pegou.wav","static")
	alvo=love.graphics.newImage("graphics/fugitiva.png")
	fugitivas={}--armazena as fugitivas 
	num=3--limite de fugitvas
	alvo=love.graphics.newImage("graphics/fugitiva.png")
end

function ballsF2_update()
	scapeBall()
	fugitivaLados()
	fugitivamovxy()
	whiteXscape()
end

function ballsF2_draw()
	for i,fugitiva in ipairs(fugitivas) do
		love.graphics.setColor(64,64,64)
		love.graphics.draw(alvo,fugitiva.x-10,fugitiva.y-10)
	end
end
