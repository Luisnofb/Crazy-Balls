function sistemaF1_load()
	vidas=love.graphics.newImage("graphics/life.png")
	pontos=0
	hits=0
	start=3
	inicio_game=false
	lose=false
	win=false
end

function sistemaF1_update()
	if hits==3 then
		lose=true
		love.audio.pause( )
	elseif pontos==40 then
		win=true
		love.audio.pause( )
	end
end

function sistemaF1_draw()
	if start>0 then
		love.graphics.setColor(64,64,64)
		love.graphics.setFont(fonte0)--o tempo para iniciar o game
		love.graphics.print("Nivel.1",270,200)
		love.graphics.print(math.ceil(start),largura/2,altura/2)
	end

	love.graphics.setColor(0,0,0)
	love.graphics.setFont(fonte2)
	love.graphics.print("vidas:",648,10)
	love.graphics.print("nivel.1",370,10)
	love.graphics.print("progresso:",16,9)

	if pontos>=0 and pontos<10 then
		love.graphics.print("0%",112,9)
	elseif pontos>=10 and pontos<20 then
		love.graphics.print("25%",112,9)
	elseif pontos>=20 and pontos<30 then --imprime o progresso no jogo
		love.graphics.print("50%",112,9)
	elseif  pontos>=30 and pontos<40 then
		love.graphics.print("75%",112,9)
	else
		love.graphics.print("100%",112,9)
	end

	if hits==0 then
		love.graphics.setColor(64,64,64)
		love.graphics.draw(vidas,702,9)
		love.graphics.draw(vidas,724,9)
		love.graphics.draw(vidas,748,9)
	elseif hits==1 then					  --controla a vida nas telas
		love.graphics.setColor(64,64,64)		           
		love.graphics.draw(vidas,702,9)
		love.graphics.draw(vidas,724,9)
	elseif hits==2 then
		love.graphics.setColor(64,64,64)
		love.graphics.draw(vidas,702,9)
	end


	if pause then
		love.graphics.setColor(64,64,0)
		love.graphics.rectangle("fill",150,230,480,230 )

		love.graphics.setColor(64,0,0)
		love.graphics.setFont(fonte0)
		love.graphics.print("pausa",260,240)

		love.graphics.setColor(0,0,0)
		love.graphics.setFont(fonte3)
		love.graphics.print("aperte (N) para retomar o jogo",180,altura/2+20)
		love.graphics.print("aperte (R) para reiniciar o jogo",180,altura/2+50)
		love.graphics.print("aperte (M) para voltar ao menu",180,altura/2+80)
	end

	if lose then
		love.graphics.setColor(64,64,0)
		love.graphics.rectangle("fill",150,230,480,200 )

		love.graphics.setColor(64,0,0)
		love.graphics.setFont(fonte0)
		love.graphics.print("YOU LOSE",180,255)

		love.graphics.setFont(fonte3)
		love.graphics.setColor(0,0,0)
		love.graphics.print("aperte (R) para reiniciar o nivel",180,altura/2+35)
		love.graphics.print("aperte (M) para voltar ao menu",180,altura/2+65)
	end

	if win then
		love.graphics.setColor(64,64,0)
		love.graphics.rectangle("fill",150,230,500,230 )

		love.graphics.setColor(0,125,0)
		love.graphics.setFont(fonte0)
		love.graphics.print("YOU WIN",210,250)

		love.graphics.setFont(fonte3)
		love.graphics.setColor(0,0,0)
		love.graphics.print("aperte (R) para reiniciar o nivel",180,altura/2+30)
		love.graphics.print("aperte (M) para voltar ao menu",180,altura/2+60)
		love.graphics.print("aperte (N) para proseguir no jogo",180,altura/2+90)
	end
end





