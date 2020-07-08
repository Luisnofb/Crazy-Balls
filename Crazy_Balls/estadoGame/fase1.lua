 require "functions/gg"
 require "functions/colisoes"
 require "operacional/balls_F1"
 require "functions/key"
 require "operacional/sistema_F1"

function fase1_load()
	sfx = love.audio.newSource("sons/efect.wav", "static")
	music1 = love.audio.newSource("sons/Puzzle-Game.mp3", "stream")
	background=love.graphics.newImage("graphics/lol.png")
	tab=love.graphics.newImage("graphics/tabela.png")
	sistemaF1_load()
	pause=false
	g,t=true,0
    posx,posy = largura/2,altura/2
 	raio= 25
 	velocidade=210
 	volume=1.0
 	love.mouse.setVisible(false)
 	ballsF1_load()
end

function fase1_update(dt)
	sistemaF1_update()
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
			love.audio.play(music1)
		 	gt()
		 	bolaLados()
		    keyJogador(dt)
		    esquiva()
		    ballsF1_update()
		end
 	else 
 		reload()
 		if love.keyboard.isDown("n") then
	 		pause=false
		end
	end
end

function fase1_draw()

	love.graphics.setColor(0,64,64)
	love.graphics.draw(background,0,0)

	love.graphics.setColor(64,64,64)
	love.graphics.draw(tab,0,0)
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
	sistemaF1_draw()
end