function whiteBall()
	if limite then
		if nballs%2==0 then
			ball={x=math.random(10,794),y=math.random(10,594),r=8,movx=false,movy=true}--cria uma nova ball
			table.insert(balls,ball)--armazena a ball
	        nballs=nballs-1
	    else
	    	ball={x=math.random(10,794),y=math.random(10,594),r=8,movx=true,movy=false}--cria uma nova ball
			table.insert(balls,ball)--armazena a ball
	        nballs=nballs-1
	    end
    end
    if nballs==0 then
    	limite=false--limita o numero de bolas brancas
    end
	for i,ball in ipairs(balls) do
		if coli_raio(posx,ball.x,posy,ball.y,raio,ball.r) then
			love.audio.play(pont)
			table.remove(balls,i)
			pontos=pontos+1
		end
	end
end

function redBall()
	if rlimite then
		if rnballs%2==0 then
			rball={x=math.random(10,450),y=math.random(10,590),r=8,movx=false,movy=true}--cria uma nova rball
			table.insert(rballs,rball)--armazena a ball
	        rnballs=rnballs-1
	    else
	    	rball={x=math.random(550,790),y=math.random(10,590),r=8,movx=true,movy=false}--cria uma nova rball
			table.insert(rballs,rball)--armazena a ball
	        rnballs=rnballs-1
	    end
    end
    if rnballs==0 then
    	rlimite=false--limita o numero de bolas
    end
	for i,rball in ipairs(rballs) do
		if coli_raio(posx,rball.x,posy,rball.y,raio,rball.r) then
			table.remove(rballs,i)
			love.audio.play(poc)
			hits=hits+1
		end
	end
end

function scapeBall()
	if num>0 then
		fugitiva={x=math.random(1,800),y=math.random(20,80),r=12,movx=true,movy=false,switch=true}
		table.insert(fugitivas,fugitiva)
		num=num-1
	end
	for i,fugitiva in ipairs(fugitivas) do
		if coli_raio(posx,fugitiva.x,posy,fugitiva.y,raio,fugitiva.r) then
			table.remove(fugitivas,i)
			love.audio.play(pgr)
			cap=cap+1
		end
	end
end

function persegBall()
	if lim>0 then
		hunter={x=math.random(1,800),y=math.random(20,80),r=12,movx=true,movy=0,}
		table.insert(hunters,hunter)
		lim=lim-1
	end
	if coli_raio(posx,hunter.x,posy,hunter.y,raio,hunter.r) then
		hits=3
	end
end



