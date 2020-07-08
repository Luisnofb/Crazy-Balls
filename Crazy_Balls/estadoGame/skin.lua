require "functions/colisoes"
function skin_load()
	fundo=love.graphics.newImage("graphics/skins.jpg")
	toc = love.audio.newSource("sons/toc.wav", "static")
	esfera=love.graphics.newImage("graphics/colocarl.png")
	olhoVerde=love.graphics.newImage("graphics/olhov.png")
	poke=love.graphics.newImage("graphics/pokebola.png")
	emotion=love.graphics.newImage("graphics/love.png")
	Brasil=love.graphics.newImage("graphics/br.png")
	bilhar=love.graphics.newImage("graphics/8.png")
	dragonball=love.graphics.newImage("graphics/dbz.png")
	retornar=love.graphics.newImage("graphics/return.png")

end

function skin_update()
	function love.keypressed(key)
		if key == "m" then
			 estadogame="menu"
			 menu_load()
		end
	end
	function love.mousepressed(x, y, button, istouch)
		if button == 1 and tocCircle(232,333, x, y,25 )  then 
	     	skinball=love.graphics.newImage("graphics/olhov.png")
	     	love.audio.play(toc)
	    elseif button == 1 and tocCircle(297,333, x, y,25 )  then
	     	skinball=love.graphics.newImage("graphics/pokebola.png")
	     	love.audio.play(toc)
     	elseif button == 1 and tocCircle(362,333, x, y,25 )  then
	     	skinball=love.graphics.newImage("graphics/love.png")
	     	love.audio.play(toc)
	    elseif button == 1 and tocCircle(427,333, x, y,25 )  then
	     	skinball=love.graphics.newImage("graphics/br.png")
	     	love.audio.play(toc)
	    elseif button == 1 and tocCircle(492,333, x, y,25 )  then
	     	skinball=love.graphics.newImage("graphics/8.png")
	     	love.audio.play(toc)
	    elseif button == 1 and tocCircle(557,333, x, y,25 )  then
	     	skinball=love.graphics.newImage("graphics/dbz.png")
	     	love.audio.play(toc)
	    elseif button == 1 and (x>=10 and  x<=42) and (y>=20 and y<=52)  then 
     		estadogame="menu"
     		menu_load()
	 	end
	end
end

function skin_draw()
	

	love.graphics.setColor(0,64,64)
	love.graphics.draw(fundo,0,0)
	love.graphics.draw(retornar,10,20)

	love.graphics.setColor(0,0,0)
	love.graphics.setFont(fonte3)
	love.graphics.print('selecione uma skin',270,200)

	
	love.graphics.setColor(64,64,64)
	-----
	love.graphics.draw(esfera,200,300)
	love.graphics.draw(esfera,265,300)
	love.graphics.draw(esfera,330,300)
	love.graphics.draw(esfera,395,300)
	love.graphics.draw(esfera,460,300)
	love.graphics.draw(esfera,525,300)


	-----
	love.graphics.draw(olhoVerde,232-25,333-25)
	love.graphics.draw(poke,297-25,333-25)
	love.graphics.draw(emotion,362-25,333-25)
	love.graphics.draw(Brasil,427-25,333-25)
	love.graphics.draw(bilhar,492-25,333-25)
	love.graphics.draw(dragonball,557-25,333-25)

end