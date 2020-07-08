 h=true
function keyJogador(dt)
    if love.keyboard.isDown("d","right") then
 		posx= posx+velocidade*dt
 		t=true
	end

	if love.keyboard.isDown("a","left") then
		posx= posx-velocidade*dt
		t=false
	end
end

function esquiva()
	 if  love.keyboard.isDown("w","up") and h  then
	 	h=false
	 	g=false
	 end
	 if  love.keyboard.isDown("s","down") and h  then
	 	h=false
	 	g=true
	 end
end

function vol()
	 if love.keyboard.isDown("o")  then
	 	if volume<1.0 then
	 		volume=volume+0.1
	 	end
	 end
	 if  love.keyboard.isDown("l") then
	 	if volume>0.0 then
	 		volume=volume-0.1
	 	end
	 end
end

function reload()
	if love.keyboard.isDown("r")  then
	 	if estadogame=="fase2" then
	 		fase2_load()
	 		love.audio.pause( )
	 	elseif estadogame=="fase3" then
	 		fase3_load()
	 		love.audio.pause( )
	 	else
	 		fase1_load()
	 		love.audio.pause( )
	 	end
	end
	if love.keyboard.isDown("m")  then
	  	estadogame="menu"
	  	menu_load()
	  	love.audio.pause( )
	end
	if love.keyboard.isDown("n") then
		if estadogame=="fase1" and win then
			estadogame="fase2"
			fase2_load()
			love.audio.pause( )
		elseif  estadogame=="fase2" and win then
			estadogame="fase3"
			fase3_load()
			love.audio.pause( )
		end
	end
end
