function onKillBoss(killer)
	if (killer) then
		Criminals = getTeamFromName("Criminals")
		MafiaTeam = getTeamFromName("Mafia")
		xx,yy,zz = getElementPosition ( killer )
		speedx, speedy, speedz = getElementVelocity ( killer )
	end
	
	if (speedx) and (speedy) and (speedz) == 0 then
			
			call(getResourceFromName("slothbot"), "spawnBot") createMafia1 = exports.slothbot:spawnBot (xx, yy+4, zz+1, 90, 117, 0, 0, MafiaTeam, 30, "hunting", Criminals)
			call(getResourceFromName("slothbot"), "setBotTeam") setTeamMafia1 = exports.slothbot:setBotTeam (createMafia1, MafiaTeam)
			call(getResourceFromName("slothbot"), "spawnBot") createMafia2 = exports.slothbot:spawnBot (xx-4, yy, zz+1, 90, 118, 0, 0, MafiaTeam, 30, "hunting", Criminals)
			call(getResourceFromName("slothbot"), "setBotTeam") setTeamMafia2 = exports.slothbot:setBotTeam (createMafia2, MafiaTeam)
	else
		setTimer (function()
				triggerEvent ( "onKillBoss", resourceRoot, killer )
		end, 10000, 1)
	end
end
addEvent( "onKillBoss", true )
addEventHandler( "onKillBoss", resourceRoot, onKillBoss )

function payThePerson(killer)
	givePlayerMoney(killer,30100)
end
addEvent( "onPayPlayer", true )
addEventHandler( "onPayPlayer", resourceRoot, payThePerson )

function Defend(attacker)
	if (attacker) then
		Criminals = getTeamFromName("Criminals")
		Tutorials = getTeamFromName("Tutorials")
		xx1,yy1,zz1 = getElementPosition ( attacker )
		speedx1, speedy1, speedz1 = getElementVelocity ( attacker )
	end
	if (speedx1) or (speedy1) == 0 then
			call(getResourceFromName("slothbot"), "spawnBot") createGuard1 = exports.slothbot:spawnBot (xx1, yy1+4, zz1+1, 90, math.random(0,264), 0, 0, Tutorials, 27, "hunting", Criminals)
			call(getResourceFromName("slothbot"), "setBotTeam") setTeamGuard1 = exports.slothbot:setBotTeam (createGuard1, Tutorials)
			call(getResourceFromName("slothbot"), "spawnBot") createGuard2 = exports.slothbot:spawnBot (xx1-4, yy1, zz1+1, 90, math.random(0,264), 0, 0, Tutorials, 27, "hunting", Criminals)
			call(getResourceFromName("slothbot"), "setBotTeam") setTeamGuard2 = exports.slothbot:setBotTeam (createGuard2, Tutorials)
	else
		setTimer (function()
				triggerEvent ( "OnDefense", resourceRoot, attacker )
		end, 1000, 1)
	end
end
addEvent( "onDefense", true )
addEventHandler( "onDefense", resourceRoot, Defend )