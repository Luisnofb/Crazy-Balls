require "functions/gg"
require "functions/colisoes"
require "functions/key"
require "operacional/balls_F3"
require "operacional/sistema_F3"
require "functions/IA"
function fase3_load()
	sfx = love.audio.newSource("sons/efect.wav", "static")
	music3 = love.audio.newSource("sons/fases.mp3", "stream")
	background=love.graphics.newImage("graphics/lol.png")
	tab=love.graphics.newImage("graphics/tabela.png")
	sistemaF3_load()
	pause=false
	g,t=true,0
    posx,posy = largura/2,altura/2
 	raio= 25
 	velocidade=210
 	volume=1.0
 	love.mouse.setVisible(false)
 	ballsF1_load()
 	ballsF3_load()
end

function fase3_update(dt)
	sistemaF3_update()
	if not pause then
		if love.keyboard.isDown("p")  then
		 	pause=true
		 	love.audio.pause( )
		end
		if not inicio_game then
			if  start>0 then
			start=start-dt
	    	elseif start<=1 then
	    	inicio_game=true
	    	end
	    elseif pause then
	    	reload()
		elseif lose then
			reload()
		elseif win then
			reload()
		else
			love.audio.setVolume(volume)
			vol()   
			love.audio.play(music3)
		 	gt()
		 	bolaLados()
		    keyJogador(dt)
		    esquiva()
		    HunterIA()
		    ballsF1_update()
		    ballsF3_update()
		end
 	else 
 		reload()
 		if love.keyboard.isDown("n")  then
	 		pause=false
		end
	end
end

function fase3_draw()
	love.graphics.setColor(0,64,64)
	love.graphics.draw(background,0,0)

	love.graphics.setColor(64,64,64)
	love.graphics.draw(tab,0,0)
	ballsF3_draw()

	love.graphics.setColor(64,64,64)
	ballsF1_draw()

	if inicio_game then
		if skinball==0 then
		love.graphics.setColor(0,0,0)
		love.graphics.circle("fill",posx,posy,25)
		else
		love.graphics.setColor(64,64,64)
		love.graphics.draw(skinball,posx-25,posy-25)
		end
	end
	sistemaF3_draw()
end
