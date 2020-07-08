
 require "estadoGame/menu"
 require "estadoGame/skin"
 require "estadoGame/fase1"
 require "estadoGame/fase2"
 require "estadoGame/fase3"
 require "estadoGame/instructions"

function love.load()
	largura = love.graphics.getWidth()--variável que representa a largura da tela
 	altura  = love.graphics.getHeight()--váriavel que representa a altura da tela
 	skinball=0
 	fonte0 =love.graphics.newFont('04B_30__.TTF',60)
 	fonte1 = love.graphics.newFont('04B_30__.TTF',18)
 	fonte2 = love.graphics.newFont('04B_30__.TTF',12)
 	fonte3 = love.graphics.newFont('04B_11__.TTF',18)
 	fonte4 = love.graphics.newFont('04B_30__.TTF',36)
 	estadogame="menu"
 	if estadogame=="menu" then
 		menu_load()
 	end
 	if estadogame=="fase1" then
 		fase1_load() 
 	end
 	if estadogame=="fase2" then
 		fase2_load()
 	end
 	if estadogame=="fase3" then
 		fase3_load()
 	end
 	if estadogame=="skin" then
 		skin_load()
 	end
 	if estadogame=="instructions" then
 		instructions_load()
 	end
end

function love.update(dt)
	if love.keyboard.isDown("escape") then
		love.event.quit()
	end
	if estadogame=="menu" then
		menu_update()
	elseif estadogame=="fase1" then
		fase1_update(dt) 
	elseif estadogame=="fase2" then
		fase2_update(dt) 
	elseif estadogame=="fase3" then
		fase3_update(dt) 
	elseif estadogame=="skin" then
		skin_update() 
	elseif estadogame=="instructions" then
		instructions_update()
	end  
end

 function love.draw()
	if estadogame=="menu" then
		menu_draw()
	end
	if estadogame=="fase1" then
		fase1_draw()
	end
	if estadogame=="fase2" then
		fase2_draw()
	end
	if estadogame=="fase3" then
		fase3_draw()
	end
	if estadogame=="skin" then
		skin_draw()
	end
	if estadogame=="instructions" then
		instructions_draw()
	end
  end
