require "functions/gg"
require "functions/colisoes"
require "functions/key"
require "operacional/balls_F2"
require "operacional/sistema_F2"
require "functions/IA"
function fase2_load()
	sfx = love.audio.newSource("sons/efect.wav", "static")
	music2 = love.audio.newSource("sons/lala.mp3", "stream")
	background=love.graphics.newImage("graphics/lol.png")
	tab=love.graphics.newImage("graphics/tabela.png")
	sistemaF2_load()
	pause=false
	g,t=true,0
    posx,posy = largura/2,altura/2
 	raio= 25
 	velocidade=210
 	volume=1.0
 	love.mouse.setVisible(false)
 	ballsF1_load()
 	ballsF2_load()
end

function fase2_update(dt)
	sistemaF2_update()
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
			love.audio.play(music2)
		 	gt()
		 	bolaLados()
		    keyJogador(dt)
		    esquiva()
		    FugitivaIA()
		    ballsF1_update()
		    ballsF2_update()
		end
 	else 
 		reload()
 		if love.keyboard.isDown("n")  then
	 		pause=false
		end
	end
end


function fase2_draw()
	love.graphics.setColor(0,64,64)
	love.graphics.draw(background,0,0)

	love.graphics.setColor(64,64,64)
	love.graphics.draw(tab,0,0)
	ballsF2_draw()

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
	sistemaF2_draw()
end

