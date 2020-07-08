require "estadoGame/fase1"
require "estadoGame/fase2"
require "estadoGame/fase3"
require "estadoGame/skin"
require "estadoGame/instructions"
require "functions/colisoes"
function menu_load()
	background=love.graphics.newImage("graphics/menu.jpg")
	play=love.graphics.newImage("graphics/play.png")
	skins=love.graphics.newImage("graphics/skin.png")
	lista=love.graphics.newImage("graphics/lista.png")
	love.mouse.setVisible(true)
end

function menu_update()
	function love.keypressed(key)
		if key == "t" then
			estadogame="fase2"
			fase2_load()
		end
		if key == "b" then
			estadogame="fase3"
			fase3_load()
		end
	end
	function love.mousepressed(x, y, button, istouch)
  	 	if button == 1 and (x>=50 and  x<=150) and (y>=380 and y<=412)  then 
     		estadogame="fase1"
	 		fase1_load()
	 	elseif button == 1 and (x>=75 and  x<=160) and (y>=460 and y<=475)  then 
     		estadogame="skin"
     		skin_load()
     	elseif button == 1 and (x>=45 and  x<=270) and (y>=530 and y<=550)  then 
     		estadogame="instructions"
     		instructions_load()
  	 	elseif button == 1 and tocCircle(65, 455, x, y,16 )  then 
     		estadogame="skin"
     		skin_load()
	 	end
   	end
end

function menu_draw()
	love.graphics.setColor(64,64,64)
	love.graphics.draw(background,0,0)
	love.graphics.draw(play,50,380)
	love.graphics.draw(skins,49,450)
	love.graphics.draw(lista,50,520)

	love.graphics.setColor(0,0,0)
	love.graphics.setFont(fonte0)
	love.graphics.print('Crazy-Balls',125,160)

	love.graphics.setColor(0,0,0)
	love.graphics.setFont(fonte1)
	love.graphics.print('PLAY',85,390)
	love.graphics.print('SKINS',85,460)
	love.graphics.print('INSTRUCTIONS',85,530)

end
