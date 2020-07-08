--gravidade e impulso--
function gt()
	if g==true then-- g=deslocamento vertical do player
		posy=posy+3.5
	elseif g==false then
		posy=posy-3.5
	end

 	if t==true then--t=deslocamento vertical do player
		posx=posx+1
	elseif t==false then
		posx=posx-1
	end
end
function whitemovxy()
	for i,ball in ipairs(balls) do	-----------------
		if ball.movy==true then
				ball.y=ball.y+3
		elseif ball.movy==false then
				ball.y=ball.y-3
		end
		if ball.movx==true then
				ball.x=ball.x+3
		elseif ball.movx==false then
				ball.x=ball.x-3
		end
	end
end

function redmovxy()
	for i,rball in ipairs(rballs) do	-----------------
		if rball.movy==true then
				rball.y=rball.y+3
		elseif rball.movy==false then
				rball.y=rball.y-3
		end

		if rball.movx==true then
				rball.x=rball.x+3
		elseif rball.movx==false then
				rball.x=rball.x-3
		end
	end
end

function fugitivamovxy()
	for i,fugitiva in ipairs(fugitivas)do
		if fugitiva.movy==true then
			fugitiva.y=fugitiva.y+3.5
		elseif fugitiva.movy==false then
			fugitiva.y=fugitiva.y-3.5
		end
		if fugitiva.movx==true then
			fugitiva.x=fugitiva.x+3.5
		elseif fugitiva.movx==false then
			fugitiva.x=fugitiva.x-3.5
		end
	end
end

function huntermovxy()
	for i,hunter in ipairs(hunters)do
		if hunter.movy==true then
			hunter.y=hunter.y+2
		elseif hunter.movy==false then
			hunter.y=hunter.y-2
		end
		if hunter.movx==true then
			hunter.x=hunter.x+2
		elseif hunter.movx==false then
			hunter.x=hunter.x-2
		end
	end
end

		

