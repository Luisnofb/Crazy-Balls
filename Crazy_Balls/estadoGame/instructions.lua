function instructions_load()
	retornar=love.graphics.newImage("graphics/return.png")
	fundo=love.graphics.newImage("graphics/skins.jpg")
	passagem=50
end
function instructions_update()
	function love.mousepressed(x, y, button, istouch)
		if button == 1 and (x>=10 and  x<=42) and (y>=20 and y<=52)  then 
     		estadogame="menu"
     		menu_load()
	 	end
	end
end
function instructions_draw()
		love.graphics.setColor(64,0,64)
		love.graphics.draw(fundo,0,0)
		love.graphics.draw(retornar,10,20)

		love.graphics.setColor(0,0,0)
		love.graphics.setFont(fonte1)
		love.graphics.print("Nivel.1",100,passagem)

		love.graphics.setFont(fonte3)
		love.graphics.print("O objetivo do jogo e coletar as bolas brancas",110,passagem+30)
		love.graphics.print("desviando das vermelhas que diminuem a vida.",110,passagem+50)

		love.graphics.setFont(fonte1)
		love.graphics.print("Nivel.2",100,passagem+100)

		love.graphics.setFont(fonte3)
		love.graphics.print("Somado com o objetivo do nivel 1 ,pegue as",110,passagem+130)
		love.graphics.print("bolas fugitivas que desviam do player.",110,passagem+150)

		love.graphics.setFont(fonte1)
		love.graphics.print("Nivel.3",100,passagem+200)

		love.graphics.setFont(fonte3)
		love.graphics.print("Somado com o objetivo do nivel 1 ,desvie da",110,passagem+230)
		love.graphics.print("bola perseguidora que segue o player,se ela ",110,passagem+250)
		love.graphics.print("lhe pegar... gameover na hora !",110,passagem+270)

		love.graphics.setFont(fonte1)
		love.graphics.print("Comandos",100,passagem+310)

		love.graphics.setFont(fonte3)
		love.graphics.print("'w,a,s,d' e as setas movimentam o player",110,passagem+340)
		love.graphics.print("'o':aumenta o volume,'l':diminui o volume",110,passagem+360)
		love.graphics.print("'p' pausa o jogo",110,passagem+380)

		love.graphics.setFont(fonte1)
		love.graphics.print("Dica",100,passagem+410)

		love.graphics.setFont(fonte3)
		love.graphics.print("Enquanto no ar pode-se desviar verticalmetne",110,passagem+440)
		love.graphics.print("uma vez,podendo novamente ao colidir com as",110,passagem+460)
		love.graphics.print("bordas da tela.",110,passagem+480)

	
end