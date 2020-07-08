require "functions/criaball"
function ballsF1_load()
	poc=love.audio.newSource("sons/picball.wav","static")
	pont=love.audio.newSource("sons/pont.wav","static")
	---------------------------------
	balls={}--armezana as ballsbrancas
	limite=true
	nballs=40
	white=love.graphics.newImage("graphics/whiteball.png")
	---------------------------
	rballs={}--armezana as ballsvermelhas
	rlimite=true
	if estadogame=="fase2" or  estadogame=="fase3" then 
		rnballs=5
	else
		rnballs=6
	end
	red=love.graphics.newImage("graphics/redball.png")
end

function ballsF1_update()
	whiteBall()
	whiteBallLados()
	whitemovxy()
	redBall()
	redBallLados()
	redmovxy()
	whiteXred()
end

function ballsF1_draw()
	for i,ball in ipairs(balls) do
		love.graphics.draw(white,ball.x-8,ball.y-8)
	end
	for i,rball in ipairs(rballs) do
		love.graphics.draw(red,rball.x-8,rball.y-8)
	end

end


    

