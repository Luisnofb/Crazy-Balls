require "functions/criaball"
require "functions/colisoes"
function ballsF3_load()
	dec=love.audio.newSource("sons/detect.wav","static")
	hunters={}--armazena as hunters
	lim=1
	kil=love.graphics.newImage("graphics/kiler.png")
end

function ballsF3_update()
	for i,hunter in ipairs(hunters) do
		if medDistancia(hunter.x,posx,hunter.y,posy,220) then
			love.audio.play(dec)
		end
	end
	persegBall()	
	hunterLados()
	huntermovxy()
end

function ballsF3_draw()
	for i,hunter in ipairs(hunters) do
		if skinfalg then	
			love.graphics.setColor(64,64,64)
			love.graphics.draw(seg,hunter.x-10,hunter.y-10)
		else
			love.graphics.setColor(64,64,64)
			love.graphics.draw(kil,hunter.x-10,hunter.y-10)
		end
	end
end
