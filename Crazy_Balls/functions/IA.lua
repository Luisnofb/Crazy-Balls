function FugitivaIA()
	for i,fugitiva in ipairs(fugitivas) do
		if medDistancia(fugitiva.x,posx,fugitiva.y,posy,100) and fugitiva.switch then
			if (posy<fugitiva.y) and (g) and (t or t==false) then
				fugitiva.movy=true
				fugitiva.movx=false
				fugitiva.switch=false
			end
			if (posy>fugitiva.y) and (g==false) and (t or t==false) then
				fugitiva.movy=false
				fugitiva.movx=false
				fugitiva.switch=false
		    end
		end
	end
end

function HunterIA()
	for i,hunter in ipairs(hunters) do
		if  medDistancia(hunter.x,posx,hunter.y,posy,220) then
			if posx>hunter.x then
				hunter.movx=true
			else
				hunter.movx=false
			end

			if posy>hunter.y then
				hunter.movy=true
			else
				hunter.movy=false
			end
		end
	end
end
