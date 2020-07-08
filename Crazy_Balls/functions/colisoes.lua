 

function bolaLados()
 --colisão do player com as bordas da tela--
	if posy+raio>altura then
		posy=altura-raio
		love.audio.play(sfx)
		g=false--gravidade y
		h=true-- movimento lateral
	end
	if posx-raio<=0 then
		posx=raio
		love.audio.play(sfx)
		t=true
		h=true
	end

    if posy-raio<=30 then
		posy=raio+30
		love.audio.play(sfx)
		g=true
		h=true
	end
	if posx+raio>largura then
		posx=largura-raio
		love.audio.play(sfx)
		t=false
		h=true
	end
end

function tocCircle(cx, cy, tocx, tocy, r)
	return (cx - tocx )^2 + (cy - tocy)^2 < r^2
end
function coli_raio(x1,x2,y1,y2,r1,r2)
	return (x2-x1)^2+(y2-y1)^2 <= (r1+r2)^2
end

function medDistancia(x1,x2,y1,y2,dist)
	return (x2-x1)^2+(y2-y1)^2 <= (dist)^2
end


function whiteBallLados()
	for i,ball in ipairs(balls) do
		if ball.x+ball.r>largura then
			ball.x=largura-ball.r
			ball.movx=false
		end
		if ball.x-ball.r<=0 then
			ball.x=ball.r
			ball.movx=true
		end
		if ball.y+ball.r>altura then
			ball.y=altura-ball.r
			ball.movy=false
		end
		if ball.y-ball.r<=30 then
			ball.y=ball.r+30
			ball.movy=true
		end
	end
end


function redBallLados()
	for i,rball in ipairs(rballs) do
		if rball.x+rball.r>largura then
			rball.x=largura-rball.r
			rball.movx=false
		end
		if rball.x-rball.r<=0 then
			rball.x=rball.r
			rball.movx=true
		end
		if rball.y+rball.r>altura then
			rball.y=altura-rball.r
			rball.movy=false
		end
		if rball.y-rball.r<=30 then
			rball.y=rball.r+30
			rball.movy=true
		end
	end
end

function whiteXred()
	for i,ball in ipairs(balls) do
		for j,rball in ipairs(rballs) do
			if coli_raio(ball.x,rball.x,ball.y,rball.y,ball.r,rball.r)  then --colisão de bolas vermelhas e brancas
				if os.time()%2==0 then
					ball.movy=  true
					rball.movy= false
				else
					ball.movy=  false
					rball.movy= true
				end
			end
		end
	end
end


function fugitivaLados()
	for i,fugitiva in ipairs(fugitivas) do
		if fugitiva.x+fugitiva.r>largura then
			fugitiva.x=largura-fugitiva.r
			fugitiva.movx=false
			fugitiva.switch=true
		end
		if fugitiva.x-fugitiva.r<=0 then
			fugitiva.x=fugitiva.r
			fugitiva.movx=true
			fugitiva.switch=true
		end
		if fugitiva.y+fugitiva.r>altura then
			fugitiva.y=altura-fugitiva.r
			fugitiva.movy=false
			fugitiva.switch=true
		end
		if fugitiva.y-fugitiva.r<=30 then
			fugitiva.y=fugitiva.r+30
			fugitiva.movy=true
			fugitiva.switch=true
		end
	end
end


function hunterLados()
	for i,hunter in ipairs(hunters) do
		if hunter.x+hunter.r>largura then
			hunter.x=largura-hunter.r
			hunter.movx=false
			hunter.switch=true
		end
		if hunter.x-hunter.r<=0 then
			hunter.x=hunter.r
			hunter.movx=true
			hunter.switch=true
		end
		if hunter.y+hunter.r>altura then
			hunter.y=altura-hunter.r
			hunter.movy=false
			hunter.switch=true
		end
		if hunter.y-hunter.r<=30 then
			hunter.y=hunter.r+30
			hunter.movy=true
			hunter.switch=true
		end
	end
end
function whiteXscape()
	for i,ball in ipairs(balls) do
		for j,fugitiva in ipairs(fugitivas) do
			if coli_raio(ball.x,fugitiva.x,ball.y,fugitiva.y,ball.r,fugitiva.r)  then --colisão de bolas fugitivas e brancas
				if os.time()%2==0 then
					ball.movy=  true
					fugitiva.movy= false
				else
					ball.movy=  false
					fugitiva.movy= true
				end
			end
		end
	end
end




