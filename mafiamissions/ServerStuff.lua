function PayNumber1Activate(thePlayer)
	givePlayerMoney (thePlayer,math.random(10000,25000))
end
addEvent( "PayNumber1", true )
addEventHandler( "PayNumber1", resourceRoot, PayNumber1Activate )

function PayNumber2Activate(thePlayer)
	givePlayerMoney (thePlayer,math.random(50000,50999))
end
addEvent( "PayNumber2", true )
addEventHandler( "PayNumber2", resourceRoot, PayNumber2Activate )

function PayNumber3Activate(thePlayer)
	givePlayerMoney (thePlayer,math.random(100000,100999))
end
addEvent( "PayNumber3", true )
addEventHandler( "PayNumber3", resourceRoot, PayNumber3Activate )
	

function CreateCriminals(thePlayer)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xx,yy,zz = getElementPosition ( thePlayer )
	local speedx, speedy, speedz = getElementVelocity ( thePlayer )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1 = exports.slothbot:spawnBot (xx, yy-4, zz+1, 90, math.random(280,288), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1 = exports.slothbot:setBotTeam (CriminalGuy1, Government)
			local CriminalGuy2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2 = exports.slothbot:spawnBot (xx+4, yy, zz+1, 90, math.random(280,288), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2 = exports.slothbot:setBotTeam (CriminalGuy2, Government)
	else
		setTimer (function()
				triggerEvent ( "CreateCriminalsNOW", resourceRoot, thePlayer )
		end, 1000, 1)
	end
	
end
addEvent( "CreateCriminalsNOW", true )
addEventHandler( "CreateCriminalsNOW", resourceRoot, CreateCriminals )

function CreateCriminals2(attacker)
	setTimer (function()
		local Criminals = getTeamFromName("Mafia")
		local Criminals = getTeamFromName("Unemployed")
		local Government = getTeamFromName("Government")
		local Government = getTeamFromName("Emergency service")
		local Government = getTeamFromName("STAFF")
		local Government = getTeamFromName("Criminals")
		local xx,yy,zz = getElementPosition ( attacker )
		local speedx, speedy, speedz = getElementVelocity ( attacker )
		if (speedx) or (speedy) == 0 then
				local CriminalGuy1ok = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1ok = exports.slothbot:spawnBot (xx, yy+4, zz+1, 90, math.random(280,288), 0, 0, Criminals, 27, "hunting", Government)
				local setTeamCRM1ok = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1ok = exports.slothbot:setBotTeam (CriminalGuy1, Government)
				local CriminalGuy2ok = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2ok = exports.slothbot:spawnBot (xx-4, yy, zz+1, 90, math.random(280,288), 0, 0, Criminals, 27, "hunting", Government)
				local setTeamCRM2ok = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2ok = exports.slothbot:setBotTeam (CriminalGuy2, Government)
		else
			setTimer (function()
					triggerEvent ( "CreateCriminalsNOW2", resourceRoot, attacker )
			end, 1000, 1)
		end
	end, 5000, 1)
	
end
addEvent( "CreateCriminalsNOW2", true )
addEventHandler( "CreateCriminalsNOW2", resourceRoot, CreateCriminals2 )

function CreatePolice(thePlayer)
	setTimer (function()
			local Criminals = getTeamFromName("Criminals")
			local Criminals = getTeamFromName("Alien")
			local Criminals = getTeamFromName("Unemployed")
			local Government = getTeamFromName("Government")
			local Government = getTeamFromName("Emergency service")
			local Government = getTeamFromName("STAFF")
	
			local xx,yy,zz = getElementPosition ( thePlayer )
			local speedx, speedy, speedz = getElementVelocity ( thePlayer )
			if (speedx) or (speedy) == 0 then
				local PoliceOfficer1 = call(getResourceFromName("slothbot"), "spawnBot") PoliceOfficer1 = exports.slothbot:spawnBot (xx, yy+4, zz+1, 90, math.random(280,288), 0, 0, Government, 27, "hunting", Criminals)
				local setTeamPO1 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamPO1 = exports.slothbot:setBotTeam (PoliceOfficer1, Government)
				local PoliceOfficer2 = call(getResourceFromName("slothbot"), "spawnBot") PoliceOfficer2 = exports.slothbot:spawnBot (xx-4, yy, zz+1, 90, math.random(280,288), 0, 0, Government, 27, "hunting", Criminals)
				local setTeamPO2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamPO2 = exports.slothbot:setBotTeam (PoliceOfficer2, Government)
			else
			setTimer (function()
					triggerEvent ( "CreatePoliceNOW", resourceRoot, thePlayer )-- using else on will repeat event untill the attacker Velocity it
			end, 1000, 1)
			end
	end, 5000, 1)
end
addEvent( "CreatePoliceNOW", true )
addEventHandler( "CreatePoliceNOW", resourceRoot, CreatePolice )

function Place1(thePlayer)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( thePlayer )
	local speedx, speedy, speedz = getElementVelocity ( thePlayer )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1 = exports.slothbot:setBotTeam (CriminalGuy1, Criminals)
			local CriminalGuy2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2 = exports.slothbot:setBotTeam (CriminalGuy2, Criminals)
			local CriminalGuy3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3 = exports.slothbot:spawnBot (-498.70764160156,-549.29260253906,25.5234375, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3 = exports.slothbot:setBotTeam (CriminalGuy3, Criminals)
			local CriminalGuy4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4 = exports.slothbot:spawnBot (-483.63067626953,-521.9443359375,25.5234375, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4 = exports.slothbot:setBotTeam (CriminalGuy4, Criminals)
			local CriminalGuy5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5 = exports.slothbot:spawnBot (-543.32171630859,-480.44662475586,25.5234375, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5 = exports.slothbot:setBotTeam (CriminalGuy5, Criminals)
			local CriminalGuy6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6 = exports.slothbot:spawnBot (-542.9951171875,-498.02365112305,25.5234375, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6 = exports.slothbot:setBotTeam (CriminalGuy6, Criminals)
			local CriminalGuy7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7 = exports.slothbot:spawnBot (-547.12445068359,-499.21392822266,25.5234375, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7 = exports.slothbot:setBotTeam (CriminalGuy7, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace1", resourceRoot, thePlayer )
		end, 1000, 1)
	end
	if not (Moneyyy1) then
		Moneyyy1 = triggerClientEvent ( "onCreateMoney1", resourceRoot, thePlayer )
	end
	if not (Truck1) then
		Truck1 = createVehicle ( 455, -544.76690673828,-491.50991821289,25.5234375)
	end
end
addEvent( "StartPlace1", true )
addEventHandler( "StartPlace1", resourceRoot, Place1 )

function Place2(thePlayer)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( thePlayer )
	local speedx, speedy, speedz = getElementVelocity ( thePlayer )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point2 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point2 = exports.slothbot:setBotTeam (CriminalGuy1point2, Criminals)
			local CriminalGuy2point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point2 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point2 = exports.slothbot:setBotTeam (CriminalGuy2point2, Criminals)
			local CriminalGuy3point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point2 = exports.slothbot:spawnBot (-1038.5736083984,-594.92492675781,32.0078125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point2 = exports.slothbot:setBotTeam (CriminalGuy3point2, Criminals)
			local CriminalGuy4point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point2 = exports.slothbot:spawnBot (-1023.4886474609,-629.13739013672,32.0078125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point2 = exports.slothbot:setBotTeam (CriminalGuy4point2, Criminals)
			local CriminalGuy5point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point2 = exports.slothbot:spawnBot (-1021.9764404297,-686.00561523438,32.0078125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point2 = exports.slothbot:setBotTeam (CriminalGuy5point2, Criminals)
			local CriminalGuy6point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point2 = exports.slothbot:spawnBot (-999.91918945313,-696.412109375,32.0078125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point2 = exports.slothbot:setBotTeam (CriminalGuy6point2, Criminals)
			local CriminalGuy7point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point2 = exports.slothbot:spawnBot (-1003.7144165039,-662.70477294922,32.0078125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point2 = exports.slothbot:setBotTeam (CriminalGuy7point2, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace2", resourceRoot, thePlayer )
		end, 1000, 1)
	end
	if not (Moneyyy2) then
		Moneyyy2 = triggerClientEvent ( "onCreateMoney2", resourceRoot, thePlayer )
	end
	if not (Truck2) then
		Truck2 = createVehicle ( 609, -1015.9505004883,-686.39782714844,32.0078125)
	end
end
addEvent( "StartPlace2", true )
addEventHandler( "StartPlace2", resourceRoot, Place2 )

function Place3(thePlayer)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( thePlayer )
	local speedx, speedy, speedz = getElementVelocity ( thePlayer )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point3 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point3 = exports.slothbot:setBotTeam (CriminalGuy1point3, Criminals)
			local CriminalGuy2point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point3 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point3 = exports.slothbot:setBotTeam (CriminalGuy2point3, Criminals)
			local CriminalGuy3point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point3 = exports.slothbot:spawnBot (153.8692779541,-160.54362487793,1.578125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point3 = exports.slothbot:setBotTeam (CriminalGuy3point3, Criminals)
			local CriminalGuy4point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point3 = exports.slothbot:spawnBot (155.02545166016,-155.37591552734,5.0786128044128, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point3 = exports.slothbot:setBotTeam (CriminalGuy4point3, Criminals)
			local CriminalGuy5point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point3 = exports.slothbot:spawnBot (170.01531982422,-162.03807067871,6.7786130905151, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point3 = exports.slothbot:setBotTeam (CriminalGuy5point3, Criminals)
			local CriminalGuy6point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point3 = exports.slothbot:spawnBot (153.32009887695,-188.53230285645,5.0786118507385, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point3 = exports.slothbot:setBotTeam (CriminalGuy6point3, Criminals)
			local CriminalGuy7point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point3 = exports.slothbot:spawnBot (168.22868347168,-173.31820678711,9.7786149978638, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point3 = exports.slothbot:setBotTeam (CriminalGuy7point3, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace3", resourceRoot, thePlayer )
		end, 1000, 1)
	end
	if not (Moneyyy3) then
		Moneyyy3 = triggerClientEvent ( "onCreateMoney3", resourceRoot, thePlayer )
	end
	if not (Truck3) then
		Truck3 = createVehicle ( 482, 145.99143981934,-166.37469482422,1.578125)
	end
end
addEvent( "StartPlace3", true )
addEventHandler( "StartPlace3", resourceRoot, Place3 )

function Place4(thePlayer)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( thePlayer )
	local speedx, speedy, speedz = getElementVelocity ( thePlayer )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point4 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point4 = exports.slothbot:setBotTeam (CriminalGuy1point4, Criminals)
			local CriminalGuy2point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point4 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point4 = exports.slothbot:setBotTeam (CriminalGuy2point4, Criminals)
			local CriminalGuy3point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point4 = exports.slothbot:spawnBot (844.49890136719,-593.76544189453,18.048086166382, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point4 = exports.slothbot:setBotTeam (CriminalGuy3point4, Criminals)
			local CriminalGuy4point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point4 = exports.slothbot:spawnBot (854.58746337891,-602.01354980469,18.421875, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point4 = exports.slothbot:setBotTeam (CriminalGuy4point4, Criminals)
			local CriminalGuy5point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point4 = exports.slothbot:spawnBot (852.74200439453,-586.23913574219,18.064502716064, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point4 = exports.slothbot:setBotTeam (CriminalGuy5point4, Criminals)
			local CriminalGuy6point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point4 = exports.slothbot:spawnBot (872.94677734375,-596.11840820313,18.28588104248, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point4 = exports.slothbot:setBotTeam (CriminalGuy6point4, Criminals)
			local CriminalGuy7point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point4 = exports.slothbot:spawnBot (848.03033447266,-586.20159912109,19.825624465942, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point4 = exports.slothbot:setBotTeam (CriminalGuy7point4, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace4", resourceRoot, thePlayer )
		end, 1000, 1)
	end
	if not (Moneyyy4) then
	Moneyyy4 = triggerClientEvent ( "onCreateMoney4", resourceRoot, thePlayer )
	end
	if not (Truck4) then
		Truck4 = createVehicle ( 456, 843.74346923828,-598.07507324219,18.421875)
	end
end
addEvent( "StartPlace4", true )
addEventHandler( "StartPlace4", resourceRoot, Place4 )

function Place5(thePlayer)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( thePlayer )
	local speedx, speedy, speedz = getElementVelocity ( thePlayer )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point5 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point5 = exports.slothbot:setBotTeam (CriminalGuy1point5, Criminals)
			local CriminalGuy2point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point5 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point5 = exports.slothbot:setBotTeam (CriminalGuy2point5, Criminals)
			local CriminalGuy3point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point5 = exports.slothbot:spawnBot (1238.8526611328,214.82093811035,19.5546875, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point5 = exports.slothbot:setBotTeam (CriminalGuy3point5, Criminals)
			local CriminalGuy4point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point5 = exports.slothbot:spawnBot (1246.0622558594,209.90148925781,23.055511474609, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point5 = exports.slothbot:setBotTeam (CriminalGuy4point5, Criminals)
			local CriminalGuy5point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point5 = exports.slothbot:spawnBot (1265.0521240234,230.12026977539,25.048685073853, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point5 = exports.slothbot:setBotTeam (CriminalGuy5point5, Criminals)
			local CriminalGuy6point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point5 = exports.slothbot:spawnBot (1251.6354980469,224.34269714355,26.555511474609, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point5 = exports.slothbot:setBotTeam (CriminalGuy6point5, Criminals)
			local CriminalGuy7point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point5 = exports.slothbot:spawnBot (1244.8612060547,235.6004486084,28.072776794434, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point5 = exports.slothbot:setBotTeam (CriminalGuy7point5, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace5", resourceRoot, thePlayer )
		end, 1000, 1)
	end
	if not (Moneyyy5) then
	Moneyyy5 = triggerClientEvent ( "onCreateMoney5", resourceRoot, thePlayer )
	end
	if not (Truck5) then
		Truck5 = createVehicle ( 402, 1231.6307373047,216.46803283691,19.5546875)
	end
end
addEvent( "StartPlace5", true )
addEventHandler( "StartPlace5", resourceRoot, Place5 )

function Place6(thePlayer)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( thePlayer )
	local speedx, speedy, speedz = getElementVelocity ( thePlayer )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point6 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point6 = exports.slothbot:setBotTeam (CriminalGuy1point6, Criminals)
			local CriminalGuy2point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point6 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point6 = exports.slothbot:setBotTeam (CriminalGuy2point6, Criminals)
			local CriminalGuy3point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point6 = exports.slothbot:spawnBot (-146.4958190918,1083.7707519531,19.7421875, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point6 = exports.slothbot:setBotTeam (CriminalGuy3point6, Criminals)
			local CriminalGuy4point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point6 = exports.slothbot:spawnBot (-137.31304931641,1078.3283691406,19.7421875, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point6 = exports.slothbot:setBotTeam (CriminalGuy4point6, Criminals)
			local CriminalGuy5point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point6 = exports.slothbot:spawnBot (-145.6736907959,1070.2446289063,19.749988555908, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point6 = exports.slothbot:setBotTeam (CriminalGuy5point6, Criminals)
			local CriminalGuy6point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point6 = exports.slothbot:spawnBot (-163.85034179688,1068.6943359375,19.7421875, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point6 = exports.slothbot:setBotTeam (CriminalGuy6point6, Criminals)
			local CriminalGuy7point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point6 = exports.slothbot:spawnBot (-151.59265136719,1074.1228027344,23.314058303833, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point6 = exports.slothbot:setBotTeam (CriminalGuy7point6, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace6", resourceRoot, thePlayer )
		end, 1000, 1)
	end
	if not (Moneyyy6) then
		Moneyyy6 = triggerClientEvent ( "onCreateMoney6", resourceRoot, thePlayer )
	end
	if not (Truck6) then
		Truck6 = createVehicle ( 428, -151.93754577637,1087.1239013672,19.7421875)
	end
end
addEvent( "StartPlace6", true )
addEventHandler( "StartPlace6", resourceRoot, Place6 )

function Place7(thePlayer)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( thePlayer )
	local speedx, speedy, speedz = getElementVelocity ( thePlayer )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point7 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point7 = exports.slothbot:setBotTeam (CriminalGuy1point7, Criminals)
			local CriminalGuy2point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point7 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point7 = exports.slothbot:setBotTeam (CriminalGuy2point7, Criminals)
			local CriminalGuy3point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point7 = exports.slothbot:spawnBot (-478.71786499023,623.60089111328,7.8976144790649, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point7 = exports.slothbot:setBotTeam (CriminalGuy3point7, Criminals)
			local CriminalGuy4point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point7 = exports.slothbot:spawnBot (-489.20306396484,611.41851806641,1.78125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point7 = exports.slothbot:setBotTeam (CriminalGuy4point7, Criminals)
			local CriminalGuy5point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point7 = exports.slothbot:spawnBot (-470.22106933594,607.52899169922,14.958957672119, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point7 = exports.slothbot:setBotTeam (CriminalGuy5point7, Criminals)
			local CriminalGuy6point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point7 = exports.slothbot:spawnBot (-459.68276977539,609.70056152344,16.755544662476, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point7 = exports.slothbot:setBotTeam (CriminalGuy6point7, Criminals)
			local CriminalGuy7point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point7 = exports.slothbot:spawnBot (-480.66760253906,609.65069580078,10.146437644958, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point7 = exports.slothbot:setBotTeam (CriminalGuy7point7, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace7", resourceRoot, thePlayer )
		end, 1000, 1)
	end
	if not (Moneyyy7) then
		Moneyyy7 = triggerClientEvent ( "onCreateMoney7", resourceRoot, thePlayer )
	end
	if not (Truck7) then
		Truck7 = createVehicle ( 578, -452.94937133789,599.962890625,16.870670318604)
	end
end
addEvent( "StartPlace7", true )
addEventHandler( "StartPlace7", resourceRoot, Place7 )

function Place8(thePlayer)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( thePlayer )
	local speedx, speedy, speedz = getElementVelocity ( thePlayer )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point8 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point8 = exports.slothbot:setBotTeam (CriminalGuy1point8, Criminals)
			local CriminalGuy2point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point8 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point8 = exports.slothbot:setBotTeam (CriminalGuy2point8, Criminals)
			local CriminalGuy3point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point8 = exports.slothbot:spawnBot (-486.79690551758,-183.77810668945,78.242965698242, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point8 = exports.slothbot:setBotTeam (CriminalGuy3point8, Criminals)
			local CriminalGuy4point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point8 = exports.slothbot:spawnBot (-489.12844848633,-183.57456970215,78.236503601074, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point8 = exports.slothbot:setBotTeam (CriminalGuy4point8, Criminals)
			local CriminalGuy5point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point8 = exports.slothbot:spawnBot (-485.55017089844,-192.9038848877,78.237701416016, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point8 = exports.slothbot:setBotTeam (CriminalGuy5point8, Criminals)
			local CriminalGuy6point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point8 = exports.slothbot:spawnBot (-470.0026550293,-188.24440002441,77.972640991211, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point8 = exports.slothbot:setBotTeam (CriminalGuy6point8, Criminals)
			local CriminalGuy7point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point8 = exports.slothbot:spawnBot (-512.24877929688,-185.2686920166,77.780784606934, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point8 = exports.slothbot:setBotTeam (CriminalGuy7point8, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace8", resourceRoot, thePlayer )
		end, 1000, 1)
	end
	if not (Moneyyy8) then
		Moneyyy8 = triggerClientEvent ( "onCreateMoney8", resourceRoot, thePlayer )
	end
	if not (Truck8) then
		Truck8 = createVehicle ( 580, -484.82611083984,-188.51524353027,78.224060058594)
	end
end
addEvent( "StartPlace8", true )
addEventHandler( "StartPlace8", resourceRoot, Place8 )

function Place1point1(attacker)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( attacker )
	local speedx, speedy, speedz = getElementVelocity ( attacker )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1 = exports.slothbot:setBotTeam (CriminalGuy1, Criminals)
			local CriminalGuy2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2 = exports.slothbot:setBotTeam (CriminalGuy2, Criminals)
			local CriminalGuy3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3 = exports.slothbot:spawnBot (-498.70764160156,-549.29260253906,25.5234375, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3 = exports.slothbot:setBotTeam (CriminalGuy3, Criminals)
			local CriminalGuy4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4 = exports.slothbot:spawnBot (-483.63067626953,-521.9443359375,25.5234375, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4 = exports.slothbot:setBotTeam (CriminalGuy4, Criminals)
			local CriminalGuy5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5 = exports.slothbot:spawnBot (-543.32171630859,-480.44662475586,25.5234375, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5 = exports.slothbot:setBotTeam (CriminalGuy5, Criminals)
			local CriminalGuy6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6 = exports.slothbot:spawnBot (-542.9951171875,-498.02365112305,25.5234375, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6 = exports.slothbot:setBotTeam (CriminalGuy6, Criminals)
			local CriminalGuy7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7 = exports.slothbot:spawnBot (-547.12445068359,-499.21392822266,25.5234375, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7 = exports.slothbot:setBotTeam (CriminalGuy7, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace1point1", resourceRoot, attacker )
		end, 1000, 1)
	end
	if not (Moneyyy1) then
		Moneyyy1 = triggerClientEvent ( "onCreateMoney1point1", resourceRoot, attacker )
	end
	if not (Truck1) then
		Truck1 = createVehicle ( 455, -544.76690673828,-491.50991821289,25.5234375)
	end
end
addEvent( "StartPlace1point1", true )
addEventHandler( "StartPlace1point1", resourceRoot, Place1point1 )

function Place2point1(attacker)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( attacker )
	local speedx, speedy, speedz = getElementVelocity ( attacker )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point2 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point2 = exports.slothbot:setBotTeam (CriminalGuy1point2, Criminals)
			local CriminalGuy2point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point2 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point2 = exports.slothbot:setBotTeam (CriminalGuy2point2, Criminals)
			local CriminalGuy3point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point2 = exports.slothbot:spawnBot (-1038.5736083984,-594.92492675781,32.0078125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point2 = exports.slothbot:setBotTeam (CriminalGuy3point2, Criminals)
			local CriminalGuy4point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point2 = exports.slothbot:spawnBot (-1023.4886474609,-629.13739013672,32.0078125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point2 = exports.slothbot:setBotTeam (CriminalGuy4point2, Criminals)
			local CriminalGuy5point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point2 = exports.slothbot:spawnBot (-1021.9764404297,-686.00561523438,32.0078125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point2 = exports.slothbot:setBotTeam (CriminalGuy5point2, Criminals)
			local CriminalGuy6point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point2 = exports.slothbot:spawnBot (-999.91918945313,-696.412109375,32.0078125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point2 = exports.slothbot:setBotTeam (CriminalGuy6point2, Criminals)
			local CriminalGuy7point2 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point2 = exports.slothbot:spawnBot (-1003.7144165039,-662.70477294922,32.0078125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point2 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point2 = exports.slothbot:setBotTeam (CriminalGuy7point2, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace2point1", resourceRoot, attacker )
		end, 1000, 1)
	end
	if not (Moneyyy2) then
		Moneyyy2 = triggerClientEvent ( "onCreateMoney2point1", resourceRoot, attacker )
	end
	if not (Truck2) then
		Truck2 = createVehicle ( 609, -1015.9505004883,-686.39782714844,32.0078125)
	end
end
addEvent( "StartPlace2point1", true )
addEventHandler( "StartPlace2point1", resourceRoot, Place2point1 )

function Place3point1(attacker)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( attacker )
	local speedx, speedy, speedz = getElementVelocity ( attacker )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point3 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point3 = exports.slothbot:setBotTeam (CriminalGuy1point3, Criminals)
			local CriminalGuy2point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point3 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point3 = exports.slothbot:setBotTeam (CriminalGuy2point3, Criminals)
			local CriminalGuy3point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point3 = exports.slothbot:spawnBot (153.8692779541,-160.54362487793,1.578125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point3 = exports.slothbot:setBotTeam (CriminalGuy3point3, Criminals)
			local CriminalGuy4point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point3 = exports.slothbot:spawnBot (155.02545166016,-155.37591552734,5.0786128044128, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point3 = exports.slothbot:setBotTeam (CriminalGuy4point3, Criminals)
			local CriminalGuy5point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point3 = exports.slothbot:spawnBot (170.01531982422,-162.03807067871,6.7786130905151, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point3 = exports.slothbot:setBotTeam (CriminalGuy5point3, Criminals)
			local CriminalGuy6point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point3 = exports.slothbot:spawnBot (153.32009887695,-188.53230285645,5.0786118507385, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point3 = exports.slothbot:setBotTeam (CriminalGuy6point3, Criminals)
			local CriminalGuy7point3 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point3 = exports.slothbot:spawnBot (168.22868347168,-173.31820678711,9.7786149978638, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point3 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point3 = exports.slothbot:setBotTeam (CriminalGuy7point3, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace3point1", resourceRoot, attacker )
		end, 1000, 1)
	end
	if not (Moneyyy3) then
		Moneyyy3 = triggerClientEvent ( "onCreateMoney3point1", resourceRoot, attacker )
	end
	if not (Truck3) then
		Truck3 = createVehicle ( 482, 145.99143981934,-166.37469482422,1.578125)
	end
end
addEvent( "StartPlace3point1", true )
addEventHandler( "StartPlace3point1", resourceRoot, Place3point1 )

function Place4point1(attacker)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( attacker )
	local speedx, speedy, speedz = getElementVelocity ( attacker )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point4 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point4 = exports.slothbot:setBotTeam (CriminalGuy1point4, Criminals)
			local CriminalGuy2point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point4 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point4 = exports.slothbot:setBotTeam (CriminalGuy2point4, Criminals)
			local CriminalGuy3point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point4 = exports.slothbot:spawnBot (844.49890136719,-593.76544189453,18.048086166382, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point4 = exports.slothbot:setBotTeam (CriminalGuy3point4, Criminals)
			local CriminalGuy4point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point4 = exports.slothbot:spawnBot (854.58746337891,-602.01354980469,18.421875, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point4 = exports.slothbot:setBotTeam (CriminalGuy4point4, Criminals)
			local CriminalGuy5point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point4 = exports.slothbot:spawnBot (852.74200439453,-586.23913574219,18.064502716064, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point4 = exports.slothbot:setBotTeam (CriminalGuy5point4, Criminals)
			local CriminalGuy6point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point4 = exports.slothbot:spawnBot (872.94677734375,-596.11840820313,18.28588104248, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point4 = exports.slothbot:setBotTeam (CriminalGuy6point4, Criminals)
			local CriminalGuy7point4 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point4 = exports.slothbot:spawnBot (848.03033447266,-586.20159912109,19.825624465942, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point4 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point4 = exports.slothbot:setBotTeam (CriminalGuy7point4, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace4point1", resourceRoot, attacker )
		end, 1000, 1)
	end
	if not (Moneyyy4) then
		Moneyyy4 = triggerClientEvent ( "onCreateMoney4point1", resourceRoot, attacker )
	end
	if not (Truck4) then
		Truck4 = createVehicle ( 456, 843.74346923828,-598.07507324219,18.421875)
	end
end
addEvent( "StartPlace4point1", true )
addEventHandler( "StartPlace4point1", resourceRoot, Place4point1 )

function Place5point1(attacker)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( attacker )
	local speedx, speedy, speedz = getElementVelocity ( attacker )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point5 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point5 = exports.slothbot:setBotTeam (CriminalGuy1point5, Criminals)
			local CriminalGuy2point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point5 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point5 = exports.slothbot:setBotTeam (CriminalGuy2point5, Criminals)
			local CriminalGuy3point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point5 = exports.slothbot:spawnBot (1238.8526611328,214.82093811035,19.5546875, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point5 = exports.slothbot:setBotTeam (CriminalGuy3point5, Criminals)
			local CriminalGuy4point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point5 = exports.slothbot:spawnBot (1246.0622558594,209.90148925781,23.055511474609, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point5 = exports.slothbot:setBotTeam (CriminalGuy4point5, Criminals)
			local CriminalGuy5point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point5 = exports.slothbot:spawnBot (1265.0521240234,230.12026977539,25.048685073853, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point5 = exports.slothbot:setBotTeam (CriminalGuy5point5, Criminals)
			local CriminalGuy6point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point5 = exports.slothbot:spawnBot (1251.6354980469,224.34269714355,26.555511474609, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point5 = exports.slothbot:setBotTeam (CriminalGuy6point5, Criminals)
			local CriminalGuy7point5 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point5 = exports.slothbot:spawnBot (1244.8612060547,235.6004486084,28.072776794434, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point5 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point5 = exports.slothbot:setBotTeam (CriminalGuy7point5, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace5point1", resourceRoot, attacker )
		end, 1000, 1)
	end
	if not (Moneyyy5) then
		Moneyyy5 = triggerClientEvent ( "onCreateMoney5point1", resourceRoot, attacker )
	end
	if not (Truck5) then
		Truck5 = createVehicle ( 402, 1231.6307373047,216.46803283691,19.5546875)
	end
end
addEvent( "StartPlace5point1", true )
addEventHandler( "StartPlace5point1", resourceRoot, Place5point1 )

function Place6point1(attacker)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( attacker )
	local speedx, speedy, speedz = getElementVelocity ( attacker )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point6 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point6 = exports.slothbot:setBotTeam (CriminalGuy1point6, Criminals)
			local CriminalGuy2point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point6 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point6 = exports.slothbot:setBotTeam (CriminalGuy2point6, Criminals)
			local CriminalGuy3point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point6 = exports.slothbot:spawnBot (-146.4958190918,1083.7707519531,19.7421875, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point6 = exports.slothbot:setBotTeam (CriminalGuy3point6, Criminals)
			local CriminalGuy4point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point6 = exports.slothbot:spawnBot (-137.31304931641,1078.3283691406,19.7421875, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point6 = exports.slothbot:setBotTeam (CriminalGuy4point6, Criminals)
			local CriminalGuy5point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point6 = exports.slothbot:spawnBot (-145.6736907959,1070.2446289063,19.749988555908, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point6 = exports.slothbot:setBotTeam (CriminalGuy5point6, Criminals)
			local CriminalGuy6point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point6 = exports.slothbot:spawnBot (-163.85034179688,1068.6943359375,19.7421875, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point6 = exports.slothbot:setBotTeam (CriminalGuy6point6, Criminals)
			local CriminalGuy7point6 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point6 = exports.slothbot:spawnBot (-151.59265136719,1074.1228027344,23.314058303833, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point6 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point6 = exports.slothbot:setBotTeam (CriminalGuy7point6, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace6point1", resourceRoot, attacker )
		end, 1000, 1)
	end
	if not (Moneyyy6) then
		Moneyyy6 = triggerClientEvent ( "onCreateMoney6point1", resourceRoot, attacker )
	end
	if not (Truck6) then
		Truck6 = createVehicle ( 428, -151.93754577637,1087.1239013672,19.7421875)
	end
end
addEvent( "StartPlace6point1", true )
addEventHandler( "StartPlace6point1", resourceRoot, Place6point1 )

function Place7point1(attacker)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( attacker )
	local speedx, speedy, speedz = getElementVelocity ( attacker )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point7 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point7 = exports.slothbot:setBotTeam (CriminalGuy1point7, Criminals)
			local CriminalGuy2point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point7 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point7 = exports.slothbot:setBotTeam (CriminalGuy2point7, Criminals)
			local CriminalGuy3point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point7 = exports.slothbot:spawnBot (-478.71786499023,623.60089111328,7.8976144790649, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point7 = exports.slothbot:setBotTeam (CriminalGuy3point7, Criminals)
			local CriminalGuy4point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point7 = exports.slothbot:spawnBot (-489.20306396484,611.41851806641,1.78125, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point7 = exports.slothbot:setBotTeam (CriminalGuy4point7, Criminals)
			local CriminalGuy5point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point7 = exports.slothbot:spawnBot (-470.22106933594,607.52899169922,14.958957672119, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point7 = exports.slothbot:setBotTeam (CriminalGuy5point7, Criminals)
			local CriminalGuy6point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point7 = exports.slothbot:spawnBot (-459.68276977539,609.70056152344,16.755544662476, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point7 = exports.slothbot:setBotTeam (CriminalGuy6point7, Criminals)
			local CriminalGuy7point7 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point7 = exports.slothbot:spawnBot (-480.66760253906,609.65069580078,10.146437644958, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point7 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point7 = exports.slothbot:setBotTeam (CriminalGuy7point7, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace7point1", resourceRoot, attacker )
		end, 1000, 1)
	end
	if not (Moneyyy7) then
		Moneyyy7 = triggerClientEvent ( "onCreateMoney7point1", resourceRoot,attacker )
	end
	if not (Truck7) then
		Truck7 = createVehicle ( 578, -452.94937133789,599.962890625,16.870670318604)
	end
end
addEvent( "StartPlace7point1", true )
addEventHandler( "StartPlace7point1", resourceRoot, Place7point1 )

function Place8point1(attacker)
	local Criminals = getTeamFromName("Mafia")
	local Criminals = getTeamFromName("Unemployed")
	local Government = getTeamFromName("Government")
	local Government = getTeamFromName("Emergency service")
	local Government = getTeamFromName("STAFF")
	local Government = getTeamFromName("Criminals")
	local xxx,yyy,zzz = getElementPosition ( attacker )
	local speedx, speedy, speedz = getElementVelocity ( attacker )
	if (speedx) or (speedy) == 0 then
			local CriminalGuy1point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy1point8 = exports.slothbot:spawnBot (xxx, yyy+4, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM1point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM1point8 = exports.slothbot:setBotTeam (CriminalGuy1point8, Criminals)
			local CriminalGuy2point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy2point8 = exports.slothbot:spawnBot (xxx-4, yyy, zzz+1, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM2point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM2point8 = exports.slothbot:setBotTeam (CriminalGuy2point8, Criminals)
			local CriminalGuy3point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy3point8 = exports.slothbot:spawnBot (-486.79690551758,-183.77810668945,78.242965698242, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM3point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM3point8 = exports.slothbot:setBotTeam (CriminalGuy3point8, Criminals)
			local CriminalGuy4point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy4point8 = exports.slothbot:spawnBot (-489.12844848633,-183.57456970215,78.236503601074, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM4point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM4point8 = exports.slothbot:setBotTeam (CriminalGuy4point8, Criminals)
			local CriminalGuy5point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy5point8 = exports.slothbot:spawnBot (-485.55017089844,-192.9038848877,78.237701416016, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM5point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM5point8 = exports.slothbot:setBotTeam (CriminalGuy5point8, Criminals)
			local CriminalGuy6point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy6point8 = exports.slothbot:spawnBot (-470.0026550293,-188.24440002441,77.972640991211, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM6point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM6point8 = exports.slothbot:setBotTeam (CriminalGuy6point8, Criminals)
			local CriminalGuy7point8 = call(getResourceFromName("slothbot"), "spawnBot") CriminalGuy7point8 = exports.slothbot:spawnBot (-512.24877929688,-185.2686920166,77.780784606934, 90, math.random(117,127), 0, 0, Criminals, 27, "hunting", Government)
			local setTeamCRM7point8 = call(getResourceFromName("slothbot"), "setBotTeam") setTeamCRM7point8 = exports.slothbot:setBotTeam (CriminalGuy7point8, Criminals)

	else
		setTimer (function()
				triggerEvent ( "StartPlace8", resourceRoot, attacker )
		end, 1000, 1)
	end
	if not (Moneyyy8) then
		Moneyyy8 = triggerClientEvent ( "onCreateMoney8point1", resourceRoot, attacker )
	
	end
	if not (Truck8) then
		Truck8 = createVehicle ( 580, -484.82611083984,-188.51524353027,78.224060058594)
	end
end
addEvent( "StartPlace8point1", true )
addEventHandler( "StartPlace8point1", resourceRoot, Place8point1 )