function MakePeds()
	if not (Target1) then
		Target1 = createPed ( 120, 920.34136962891,-1111.0881347656,24.215400695801, 0 )
		Target1Blip = createBlipAttachedTo ( Target1, 59, 1, 255, 255, 255, 255, 1, 200 )
		addEventHandler ( "onClientPedDamage", Target1, MissionStart1point2 )
	end
	
	if not (Target2) then
		Target2 = createPed ( 124, 2797.9270019531,-1087.2751464844,30.71875, 280 )
		Target2Blip = createBlipAttachedTo ( Target2, 59, 1, 255, 255, 255, 255, 1, 250 )
		addEventHandler ( "onClientPedDamage", Target2, MissionStart1point22)
	end
	
	if not (Target3) then
		Target3 = createPed ( 125, 1371.6805419922,405.78125,19.7578125, 90 )
		Target3Blip = createBlipAttachedTo ( Target3, 59, 1, 255, 255, 255, 255, 1, 250 )
		addEventHandler ( "onClientPedDamage", Target3, MissionStart1point23)
	end
	
	if not (Target4) then
		Target4 = createPed ( 141, 2092.384765625,-1561.1468505859,13.134902000427, 280 )
		Target4Blip = createBlipAttachedTo ( Target4, 59, 1, 255, 255, 255, 255, 1, 250 )
		addEventHandler ( "onClientPedDamage", Target4, MissionStart1point24)
	end

	if not (Target5) then
		Target5 = createPed ( 186, 2771.90234375,-2421.9509277344,13.651704788208, 90 )
		Target5Blip = createBlipAttachedTo ( Target5, 59, 1, 255, 255, 255, 255, 1, 250 )
		addEventHandler ( "onClientPedDamage", Target5, MissionStart1point25)
	end
	
	if not (Target6) then
		Target6 = createPed ( 150, 2357.5510253906,186.17848205566,27.151470184326, 165 )
		Target6Blip = createBlipAttachedTo ( Target6, 59, 1, 255, 255, 255, 255, 1, 250 )
		addEventHandler ( "onClientPedDamage", Target6, MissionStart1point26)
	end
	
	if not (Target7) then
		Target7 = createPed ( 222, -137.43379211426,-51.451953887939,3.1171875, 280 )
		Target7Blip = createBlipAttachedTo ( Target7, 59, 1, 255, 255, 255, 255, 1, 350 )
		addEventHandler ( "onClientPedDamage", Target7, MissionStart1point27)
	end
		--Target8 = createPed ( 295, x,y,z, 90 ) i was going to make more but gave up. making one new mission starter person requires adding stuff EVERYWHERE. So there is only seven 'mission-start' peds to choose from.
		--Target9 = createPed ( 303, x,y,z, 90 )
end
addEventHandler ( "onClientRender", root, MakePeds )

PedsXYZ = {
	{2408.1291503906,-1238.4938964844,23.8125},
	{2470.806640625,-1543.8052978516,24.044546127319},
	{2501.6008300781,-1648.6756591797,13.571829795837},
	{2253.9594726563,-1631.8551025391,15.640411376953},
	{2140.1042480469,-1679.7093505859,15.0859375},
	{2149.32421875,-1811.1708984375,16.140625},
	{2060.1865234375,-1899.8605957031,13.546875},
	{1823.3603515625,-2016.6119384766,13.566893577576},
	{1679.1461181641,-2105.7026367188,13.546875},
	{1714.8137207031,-1910.6866455078,13.566605567932},
	{1564.2947998047,-1890.9844970703,13.559170722961},
	{1481.3895263672,-1766.6097412109,18.795755386353},
	{1347.4201660156,-1756.9500732422,13.5078125},
	{1224.7114257813,-1814.6697998047,16.59375},
	{1118.9698486328,-2028.6524658203,74.4296875},
	{206.19868469238,-1768.6973876953,6.546875},
	{459.59594726563,-1523.7823486328,30.288284301758},
	{736.29858398438,-1435.7894287109,13.5390625},
	{738.91717529297,-1345.7337646484,13.515712738037},
	{822.68072509766,-1351.2365722656,13.530927658081},
	{925.7275390625,-1294.1856689453,13.641004562378},
	{912.57977294922,-1234.8577880859,17.2109375},
	{1105.1357421875,-1133.2045898438,23.828125},
	{873.49597167969,-874.29077148438,77.582679748535},
	{1025.9892578125,-823.68084716797,101.85472106934},
	{1332.9985351563,-653.57434082031,108.26316833496},
	{1551.3021240234,-800.49975585938,72.217529296875},
	{1468.5914306641,-902.58697509766,54.8359375},
	{1307.9936523438,-865.40838623047,39.578125},
	{1203.3173828125,-921.07562255859,43.080631256104},
	{2264.953125,-1027.2215576172,59.28577041626},
	{2314.7189941406,-1413.1782226563,24.9921875},
	{2232.056640625,-1442.6455078125,24.087396621704},
	{1975.3189697266,-1855.0867919922,4.0538311004639},
	{1862.8494873047,-1871.0881347656,13.519597053528},
	{1762.8461914063,-1949.6004638672,14.109554290771},
	{1664.6917724609,-2330.1674804688,13.546875},
	{1208.2795410156,-2346.3107910156,13.995714187622},
	{995.26635742188,-1864.5472412109,12.8203125},
	{154.99880981445,-1965.4990234375,3.7734375},
	{170.44160461426,-1664.6004638672,15.655575752258},
	{17.18433380127,-1154.3255615234,7.8228130340576},
	{-82.429969787598,-1173.9284667969,2.1366996765137},
	{-381.87817382813,-1439.3395996094,25.7265625},
	{325.44955444336,-843.96441650391,12.108150482178},
	{673.65936279297,-474.97897338867,16.536296844482},
	{660.53497314453,-570.46875,16.3359375},
	{791.7177734375,-508.47640991211,18.012922286987},
	{1301.6713867188,167.8851776123,20.4609375},
	{1285.4372558594,260.07229614258,19.546892166138},
	{1360.7961425781,484.26675415039,20.2109375},
	{2271.1560058594,-51.195999145508,26.530889511108},
	{2308.1655273438,-5.3111085891724,26.7421875},
	{2379.3010253906,70.998886108398,27.324970245361},
	{2419.8146972656,-2.7896087169647,26.642074584961},
	{1367.9405517578,259.81524658203,19.566932678223},
	{251.79615783691,-54.070095062256,1.5703125},
	{247.73648071289,-65.515892028809,1.578125},
	{266.60070800781,-120.93032836914,2.7618598937988},
	{209.63177490234,-181.02629089355,1.578125},
	{264.99645996094,18.555158615112,2.4424524307251},
	{221.75611877441,147.44721984863,2.4296875},
	{-36.147701263428,65.822456359863,3.1171875},
	{84.43726348877,-179.38633728027,1.5322635173798},
	{674.11309814453,-1898.0737304688,3.3838257789612},
	{1930.4147949219,-1764.3403320313,13.539072036743},
	{1800.5695800781,-1697.2138671875,13.537021636963},
	{1803.8472900391,-1574.9273681641,13.412924766541},
	{1723.4967041016,-1631.7790527344,20.214826583862},
	{1693.0904541016,-1509.1323242188,13.546875},
	{1658.2348632813,-1411.8851318359,15.0703125},
	{1526.5567626953,-1447.7205810547,13.546875},
	{1413.6810302734,-1488.8763427734,20.433372497559},
	{1145.6104736328,-1489.7536621094,22.769031524658},
	{1117.7113037109,-1318.9250488281,13.741367340088},
	{1102.6298828125,-1233.3704833984,15.8203125},
	{1073.0048828125,-1298.5368652344,17.046875},
	{996.70129394531,-1297.2521972656,13.546875},
	{958.47326660156,-1333.3563232422,13.52663230896},
	{1012.0866699219,-1117.8051757813,23.898904800415},
	{1118.8717041016,-1163.2797851563,23.591617584229},
	{1272.7255859375,-1092.6022949219,26.407430648804},
	{1468.7145996094,-1047.5424804688,23.828125},
	{1654.4260253906,-1073.6107177734,23.8984375},
	{1645.5887451172,-1149.4659423828,24.071043014526},
	{1944.2644042969,-1219.3764648438,20.0234375},
	{2087.8625488281,-1166.1748046875,25.536418914795},
	{2192.333984375,-1278.3405761719,24.772089004517},
	{2249.6166992188,-1472.3024902344,23.480480194092},
	{2315.6948242188,-1538.1430664063,25.34375},
	{2285.5095214844,-1645.6184082031,15.12997341156},
	{2252.8298339844,-1914.0777587891,13.546875},
	{2406.3920898438,-1906.2373046875,13.546875},
	{2486.1745605469,-2017.5026855469,13.546875},
	{1661.8229980469,-1703.0412597656,15.609375},
	{1940.9296875,-2136.564453125,13.702333450317},
	{1905.9879150391,-1995.1942138672,13.546875},
	{1755.4230957031,-2139.4792480469,13.546875},
	{1888.7113037109,-2099.5026855469,13.543642044067},
	{2235.1591796875,-2264.2917480469,14.764669418335},
	{2140.369140625,-2271.7136230469,17.5625},
	{2410.0537109375,-2474.4580078125,13.630757331848},
	{2612.5070800781,-2207.4521484375,13.546875},
	{1164.8048095703,-2149.3125,68.162956237793},
	{492.65463256836,-1857.8077392578,3.6914474964142},
	{2322.0229492188,11.374381065369,26.484375},
}

Chats = {
	{"I'm gunna draw this mark on your map. Do what you do best!"},
	{"Hey, Go take this guy out. He fucked with my sister, he is very disrespectful aswell. I'll pay $30k."},
	{"Go get em tiger! 30k to make them shutup."},
	{"TAKE HIM OUTTTT! HE FUCKING CHEATED ON ME!!!"},
	{"That fucking whore! Sorry for my language... Hey, i'll pay you 30k to kill my wife..."},
	{"Hmmmm... Can you 'clean' a certain stain for me? I pay well... You'll get the rest when you're done..."},
	{"If I kill this person, I get a rank in my gang... But I can't bring myself to do it... I'll give you 30k to do it for me.!"},
	{"Meet this person! Kill them, Get payed. Easy money. Or you can go back and make $10 an hour at a regular job! L:"},
	{"I can't stand anyone who gives an entire hour of their life for 'minimum wage'. Kill this person. and get 30k EASY."},
	{"I'm sure you know what to do. I marked the person on your map. 30k total."},
	{"Use your map(F11) to find the target. Murder them... Slowly. I'll give you $30k total once the job is done!"},
	{"Gotta love freewill... Go kill this person, and watch out for cops!"},
	{"I could swear this person is the one who took my brother... I'll give you 30k for killing them."},
	{"We do what we gotta do! Kill this person, and you'll get 30k"},
	{"FUCK THAT! Hey, this person called me out! They wanna fight... go remove this problem for good."},
	{"Handle this person for me. I will pay you well! Does $30k sound good?"},
	{"Wanna earn quick easy cash? Go kill this person for me! I'll give you $30,000 :)"},
	{"Hello! Can you 'take out the trash' for me? back at my place? I'll toss you 50 thousand dollars!"},
	{"Don't tell anyone, but i'll give you $30,000 if you kill this person for me... I'll mark them on your map(F11)!"},
	{"Hey, my boss mojtabaR needs this person dead. Go kill them for 30k!"},
	{"Hey, someone in the mafia put a hit on me, can you kill the guy for me? I'll give you $30,000."},
	{"Go see this person, they are DYING to meet you... Just blow off their fucking head! "},
	{"You've killed people before right? Sure you have, go kill this person and i'll pay you $30,000."},
	{"I need a hitman to go kill my spouse, because I'll get money from their life insurance. I'll give you 30k to do it."},
	{"No words... I'm just going to mark this person on your map. Go take them out. $30,000. GO NOW!"},
	{"Wanna kill someone? No? I'm paying $30k Of course! Hahaha get moving, I don't have all day!"},
	{"I'd give you a gun, but hitmen normally have their own... Go kill this person for $30k!"},
	{"$30,000 says your going to kill this person, and never talk about it again."},
	{"Are you the hitman my friend sent? I'll pay you $30k to take out this person!"},
	{"I'm placing a symbol on your map. Go find and kill the person there. You'll be payed $30k as usual."},
	{"The streets never seem to be clean, with scumbag sex offenders out there. Kill this person on your map(F11)!"},
	{"*Drops peace of paper near your feet*  (Paper): Go kill this person. They are now on your map! $30000. "},
	{"I never seemed to get why some people steal. This person stole from me. Go kill them and i'll pay you 30 racks."},
	{"30 LARGE, if you take out someone for me. I'll mark their location on your map(F11)."},
	{"Grab a gun. Some asshole wants to kill me... FUCK that, go take him out for me, i'll pay you 30 LARGE."},
	{"Go get em fam! I'm marking this person on your map. Ight, One."},
	{"They tried to screw me over again. Go kill this person now. Their location is now on your map(F11)."},
	{"Police are on to me. I need YOU to finnish my job for me. I'll pay you 30k."},
	{"Fuck with me on this one. You fix my problems, and i'll fix your money problems. ONE kill is 30k... deal?"},
	{"You into blood money? One simple murder and you'll be RICH! Just never get caught. Go kill this person on your map(F11)!"},
	{"Get what you need in this life, correct? Go kill this person and you'll get what you need. I drew them on your map(F11)."},
	{"KILL for BILLS. Finnish this person, and i'll make you rich."},
	{"People make me mad sometimes... Go do what you gotta do. They are on your map. You know i'm good for it."},
	{"PLEASE!!! The police won't help me unless they attack me! But if they attack me, i'll be dead! Go kill their set boss!"},
	{"Cops were protecting me, but now that the case is closed, their gang is after me! Can you take one of them off the earth? for $30k?"},
	{"Here is the current location of the target. Take them out! Do it right, and you'll be payed 30 large!"},
	{"Fuck small talk, TAKE THIS PERSON OUT! They have made me mad for the last time! I'll draw their location on your map(F11)!"},
	{"Take your time, and kill this person. Don't leave any evidence of your visit. I do not wish to be in jail forever. $30k is guarenteed."},
	{"Wanna go on a hitman mission! Yea, of course. GET IT DONE! They are marked on your map(F11)."},
	{"Simply kill this person, get away, get $30k! I'll draw them on your map(F11), in case you decide to do it :)"},
	{"They are on your map now, kill them! You'll get an EASY $30k. "},
	{"Whenever you have time, swing by this place, and maybe ummm... idk... Drive by and shoot it up... I'll give you 30 Large.(30k)"},
	{"Wassup, bro. Go pay this guy a visit, and i'll make sure you get MAD MONEY. At LEAST 25k. Maybe more..."},
	{"I'll hook you up if you go get this job done for me... Go murder the person i'm marking on your map(F11)."},
	{"Here is their current location... Go get that money!"},
	{"I got $25k with your name on it. Get this job done right and I might throw in an extra 5k..."},
	{"Grab a nice gun. And go kill this person. I don't know them, but I do know they cheated in the lottery. I'll pay you $30k to off them."},
	{"Knowledge is power. You can either throw rocks, or use knowledge to make a gun. Take out this person. They're on your map."},
	{"You're a good hitman, I want you to kill this other hitman I know. They know too much. They're on your map(F11)."},
	{"Kill someone for me. I'll make it worth your while. Does $30,000 sound nice?"},
	{"HELLO! You seem like you know alot about guns, how about you kill someone for me? huh? $30k all for you! Check your map(F11)."},
	{"Damn... This person is creating alot of problems in my personal life. Go kill them. I'll pay you ALOT! Maybe more then $10,000+."},
	{"Wanna make 30 racks clean? Nice, nice...  They're on your map(F11). kill em!"},
	{"This person is trying to date my spouse! Go kill them! They're on your map(F11)."},
	{"Spitting game? hahaha, Watch who you date... Go kill this person. Their trying to get with the person i'm married to."},
	{"Yea... It's horrible. But I have money, thus I can pay others to do the killing. $30k says you kill the person on your map!"},
	{"This person has some blackmail on me, go kill them before they release it! They're marked on your map(F11)."},
	{"*talking on phone* FUCK OFF! DO YOU KNOW WHO I AM!? *Hangs up* Hey, kill someone for me and i'll drop 30 Racks on you."},
	{"I got bands. Rubber bands full of money. Want some? Go kill this person, and i'll bitcoin that shit to you."},
	{"Try and get this person erased, they are no good for anyone. They're going to stress out and kill someone. I marked them on your map."},
	{"I hate people who think they can use me for easy gain. Go kill them."},
	{"Have you seen a gun around here? I lost it... Forget it... Go kill this person for me, and i'll pay the normal $30k street price."},
	{"Got some time on your hands? go kill this person for me L:  $30,000!"},
	{"This person stole my car! Go pay them a visit! $30k pay if you kill them."},
	{"Ask no questions, 30 stacks if you kill them. They are drawn on your map(F11) now. "},
	{"Be honest, a job that pays well, requires no chill. Now go kill, and i'll give big bills."},
	{"Check your map(F11)! I made a new mark on your map. It's the person i'd like you to assassinate."},
	{"THEY STOLE EVERYTHING I HAD!!! Go kill one of them! I marked them on your map! $30k if you kill them with your hands!"},
	{"Weed isn't bad, but it can cause problems when people don't pay. Go kill this person who took some of my stash."},
	{"I love pussy as much as the next guy, but sometimes it gets people hurt. Go kill this person for $30k, they're trying to take my girl."},
	{"Hey, can you kill this person using a knife(F3)? I'll pay you $30k."},
	{"My boss, 'Scatterbain' doesn't like this person, go murder them, straight up. You'll get $30k."},
	{"I beleave in money, don't you? I'll give you $30k to kill this person who broke down my front door."},
	{"Stuff is crazy, some random masked person stole my car, but they dropped their id card. HAHAHA go kill them >:)"},
	{"Robbers get robbed, of their life this time. They stole my kid. You will steal their life for me."},
	{"Hey. There's a person on your map(F11), they need to be killed. it's better if you don't know what they did."},
	{"This person left me for dead while we were in Vegas, the Mafia nearly killed me."},
	{"Handy work needs to be done. A 30k hit has been placed on your map(F11). Go get it done, I know how you like Hand Jobs L:"},
	{"Hello, i'm trying to get this person killed, no one will do it for me. This person used to be a cop. They are on your map."},
	{"You're ok with killing doctors right? This 'life saver' killed my son due to phone distractions. They are on your map(F11)."},
	{"I seriously hope your not actually a cop... Go commit murder for me? I'll pay you $30k... They're on your map!"},
	{"I marked a person to kill on your map. It pays 30 thousand. We never met!"},
	{"Forget what my face looks like. Go kill this person, I'll give you ALOT of money, if you're down."},
	{"Hello... hey, are you down to murder someone? Or are you scared? Shit, you can find the person on your map(F11)."},
	{"I'm getting very stressed out due to 1 problem. I need you to fix this one problem... "},
	{"I need you to kill a fellow human for me, you good to do that? They're on your map now!"},
	{"Delete this person from the world. It pays $30k, Their on your map(F11). GO GET THEM NOW! I hate small time drug dealers."},
	{"Small drug dealers are stealing my customers. Take this dealer out for me. Their blip is on your map(F11)."},
	{"These small time drug dealers, are still selling their suff in my turfs. Go try and kill them."},
	{"Get a gun, and FUCKING DEMOLISH this person! They broke "..math.random(2,5).." child offensive inmates out of prison."},
	{"I located an escaped prison inmate that is an escaped sex offender. Go take life away from this scum bag."},
	{"Calm down,. You may die tomorrow, so why give a fuck about others. Get money today. Kill this guy for me... 30k! It's on your map(F11)."},
	{"Come through for me fam! This asshole is going to fuck me over. They have pictures of me in a stripclub. Take them out! $30,000"},
	{"A few of my workers spotted yet another snitch in our gang. Go kill them."},
	{"Make me proud! Kill this human, and maybe, MAYBE you'll see $30k wired to you."},
	{"We have word of a snitch in my gang. Turns out, their an 'undercover' cop. Go fuck them UP!"},
	{"Have a heart! As a matter of fact, have a REAL heart! I'll give you $30k to kill my spouse!"},
	{"I, am very rich. I, will give you a portion of my riches, to kill someone. I, do not take no for an answer. YOU will do this for 30k?"},
	{"I got proof this person is corrupt! Go show them what it's like, to not see the light anymore. They cheat too much."},
	{"A small shipment came in and it was smaller then expected! Here is where the person is located, you know what to do."},
	{"The SAPD let one of their guys go today, they are no longer protected! Go kill them, i'll pay you $30 grand."},
	{"The FBI has released a witness. They snitched on one of our main sellers . Go end them, as they tried to end us... $30,000!"},
	{"We found out the identity of a SWAT member. Make them disappear."},
	{"How about we see what that gun does? I hope you take pleasure in killing this person, they've been trying to snitch on your 'activities'."},
	{"Oh hey, wanna make some money? Go to THIS location, the send this person my regards. It pays $30 grand. You down?"},
	{"You seem legit enough to handle this... Go find this person, and take them out! I'll be watching... you'll get 30k when you're done."},
	{"Use your map(F11), I marked a target for you. Take them out and my associates will make sure you get the money for it."},
	{"Hey, Get over to this location i'm marking on your map. If you kill a certain person for me, i'll gve you $30k, street price."},
	{"Can't help being violent? Then, why not make some money from it. Go kill someone for me, they have disrespected my family by stealing from us."},
	{"Money talks, but I don't hear it unless there's crowd. You like crowd of money right? Good, murder someone for me..."},
	{"Life comes and goes. Life is also given and taken. I wan't you to take the life of a former friend of mines. He has destroyed my trust."},
	{"Go kill this person. Leave no witness behined. I do not wish to live in prison."},
	{"I feel horrible for asking, but can you kill a family member of mines? They seemed to have married into the family but only want our money."},
	{"I have been at war with a small gang. I have found out one of their member's name. Go murder them, I'll pay you 30 stacks."},
	{"I'm worried one of my gang members is going to crack under police pressure. Take them out! You'll get $30k from this."},
	{"$30k tells me you wanna kill someone... Go kill THIS person, and i'll make sure you get $30k, TODAY."},
	{"Aye, want 30k? go kill this person for me. They stole all my credit card info. Here is their location! Map(F11)"},
	{"KILL THIS PERSON NOWWWWW!!!! THEY STOLE MY CAR AND SHIPPED IT TO VICE CITY! $30k if you do this for me >:)"},
	{"How often do you steal? I hope not at all. I want you to kill this person, they took some of my money. $30k if you do this for me L:"},
	{"We were ment to be, your Faith brought you here. This is your mission. Kill someone for me ;U  It pays $30,000!"},
	{"Someone owes me $30k. They have it but won't pay. You can have the $30k if you kill them."},
	{"How often do you sell your soul for money? Sell your soul to me by killing someone. I'll pay you $30 grand, for your time, once your done."},
	{"I heard someone is starting a new hitman company. Go kill them, and i'll pay you $27k+ !"},
	{"Go get this person. They called our service asking for a suicide. Standard $30,000 payment."},
	{"If you got time, swoop on into this place i'm drawing on your map(F11), I hear there's a wanted hit to claim there. ;)"},
	{"Can't talk, i'll draw this $ on your map. Go there and get the target! Easy $30k!"},
	{"Hmmmm... You look rough, Ready to work? GOOD! Here is your target... $30k"},
	{"Give me the non living head of this person. Someone called my services asking for a $30k hit."},
	{"$30k for you if you kill someone for me... Use your map(F11) to find them, I drew their location on it."},
	{"Make this person pay for their crimes. They got away with murder yesterday. $30k to kill them!"},
	{"Here's a Target. Look on your map(F11) to find them. Kill them for an easy $30 grand!"},
	{"How often do you reap souls? Assassins are crazy expensive these days. $30k to kill this person i'm drawing on your map(F11)."},
	{"When can you kill this person? I need them dead soon. They want to start a war with my company. $30k to off them."},
	{"How are you today? I hope you're ready to kill... Here's a target. I'll pay you $30,000 to take them out!"},
	{"Wassup, I need you to get rid of someone for me. They have stolen some drugs for personal use. $30k to off them."},
	{"I have found yet another crackhead using our product for personal use. I need them gone. There's $30k in it for you. "},
	{"People are way too lazy these days. Someone is not selling their portions fast enough, and I need you to kill them. $30k."},
	{"I know you fucks with this kind of thing. Can you kill someone for me? $30,000 if you take this person out."},
	{"I need your time today... If you go kill this person, $30k will be given as a reward."},
	{"Go get this person. They need to be killed for their war crimes. They used their powers for harm. $30k as usual."},
	{"Let me know when you decide to kill this target... I'll pay you $30 grand for it."},
	{"I love my life. Do you love yours? I hope so. Go take life away from this person... They don't want it anymore. It pays $30k."},
	{"You should go to this location. Kill this person for me. I'll give you $30,000."},
	{"My group isn't willing to work with this person, so the person want's to snitch. Go kill them. $30k."},
	{"One of my hitmen let a target get away! Go and kill the target! I'm sure $30k will get this done correctly."},
	{"How often do you kill? I think it's nice you understand the value of life, $30k is your price right? Go kill this person."},
	{"I want this person to see black, and nothing-ness forever. Cast this person away from the earth. I'll pay you $30 Large."},
	{"Do you think I am ugly? This person said I looked ugly, go kill them for me. I can't stand people like that. There's $30,000 for doing this."},
	{"Why can't people just be nice... Go find and kill this person for me. $30k for finnishing this"},
	{"HAPPY EARTH DAY! Go make sure this person never see's the earth again. $30k"},
	{"Technology is awesome... I have located a target for you using an RC plane. Go kill them for $30k."},
	{"Have you ever had money stolen from you? Yea it sucks... kill this person and end their spending spree. It pays $30k "}
--  {"You can as many lines as you want like this here."},
}

Chats2 = {
	{"I've already given you a task. Don't come back untill tomorrow!"},
	{"We talked already, Leave."},
	{"Go away, I don't know you."},
	{"Who are you?"},
	{"Have I seen you before?"},
	{"Hey, hows it going?"},
	{"I hope you are having a nice day!"},
	{"Don't touch me, i'm rich!"},
	{"I know people, don't mess with me."},
	{"What's YOUR problem?"},
	{"What are YOU looking at?"},
	{"Get out of here kid."},
	{"Go play somewhere els."},
	{"Fuck off! We haven't met before."},
	{"Don't look at me like that. Go somewhere."},
	{"Why do you want to annoy me? That's stupid."},
	{"Don't be stupid. I can have you killed."},
	{"Try again later my friend."},
	{"Do I know you bro?"},
	{"Go away Fam!"},
	{"Go do something, i'm busy!"},
	{"Feel free to fuck off. I don't mind."},
	{"Wassup homie, let's 'Get down' with getting lost."},
	{"I have no missions for you today."},
	{"I'm sure we have already seen each other today."},
	{"Back off! I don't need you breathing all over me."},
	{"Is there a problem? Didn't think so..."},
	{"Give me some room, i'll see you later on."},
	{"Bless you. Come back tomorrow."},
	{"Have a beautiful day and night my fellow human."},
	{"Good Looking out!"},
	{"Thanks for doing that 'thing' for me :)"},
}

-- If you kill Target1(the mission starter) the mafia will appear chase you later when you stop moving. Change what they say below.
AngryWorkerChat = {
	{"HEY! You killed our boss! DIE YOU FUCKER!!!!"},
	{"That's the person who killed our leader! Let's fuck em up!"},
	{"HEY YOU!!! STOP!!! WE WANNA GIVE YOU SOMETHING FOR KILLING OUR BOSS!"},
	{"FUCK YOU! You killed our boss!!"},
	{"HEY COME HERE! We wanna talk to you! I hear you like killing bosses. I'm out of a job now asshole!"},
	{"You killed our leader! AND WE FINNALY FOUND YOU!"},
	{"FUCK YOU!!! YOU KILLED OUR BOSS!!!"},
	{"Get over here boss killer!"},
	{"I've been waiting forever to get my revenge! You killed our boss bitch!"},
	{"You think it's cool to shoot our boss? FUCK YOU!!!"},
	{"We own this city! Fuck you for killing one of our Leaders!"},
	{"STOP!!! YOU KILLED OUR BOSS! WE WOULD LIKE TO TALK TO YOU!"},
	{"EAT LEAD!!! BOSS KILLER!"},
	{"You shot my boss, We're here to kill you."},
	{"You got no fucking respect! You killed our boss, so we're here to kill you!"},
	{"You!!!! It's the guy who killed our boss! Let's get them!"},
	{"Are you ready to die? Disrespectful fuck, you killed our boss!"},
	{"COME AND FIGHT US! Don't run bitch! You killed our boss, and now it's time to pay!"},
	{"MAFIA! YOU KILLED OUR LEADER!!! DIE!!!!"},
	{"Isn't that the guy who killed our boss?"},
	{"LOOK! it's the person who killed our boss!"},
	{"Stay still, we wanna see what your face looks like as we get our revenge."},
	{"Looks like we got us a hitter, EAT LEAD!!!"},
	{"Watch who you kill, the Mafia sends their regards!"},
	{"You fucked with the wrong mafia! Thanks for killing our boss dickhead!"},
	{"You like killing our boss? Meet my friend, AK-47!"},
	{"Wassup, my fellow human. Killed any mafia bosses lately?  DIE YOU FUCK!"},
	{"We are here from the Mafia, you killed our leader, and now it's time to kill you!"},
	{"This isn't the last you'll hear from us! The Mafia family will make sure you die!"},
	{"I hear you love to kill mafia bosses, EAT LEAD BITCH!?"},
	{"The Mafia family sends their regards!"},
	{"I HATE YOU!!!! YOU KILLED MY BOSS!! TIME TO DIE!"},
	{"HEY YOU, YOU KILLED MY BOSS! The Mafia is going to show you some damn respect!"},
	{"Get over here! You thought you were going to kill my boss and get away with it? HAAAA!"},
	{"EAT BULLETS BITCH! You killed my boss!"},
	{"The Mafia wants you dead! Thanks for killing our boss! Bitch!"},
	{"Let's Fuck this person up! They think it's cool to kill our boss!"},
	{"The mafia and their AK-47's send their regards!"},
	
}

--Hitman 1-------------------------------------------------------------------------
--Attack the hitman to start the mission.
function MissionStart1point2(attacker)
	if (attacker ==  getLocalPlayer ()) then
		destroyElement(Target1Blip)
		removeEventHandler( "onClientPedDamage", Target1, MissionStart1point2)
		addEventHandler( "onClientPedWasted", Target1, HitBossDown)
		local ListyDoodle  = math.random(#PedsXYZ)
		local chat1 = math.random(#Chats)
		outputChatBox(Chats[chat1][1],0,0,190)
		outputChatBox("Visit the $ symbol and murder them to claim this hit/bounty.",222,0,0)
		if not (hitPerson1) or ( isPedDead ( hitPerson1 ) ) then
			hitPerson1 = createPed ( math.random(9,162),PedsXYZ[ListyDoodle][1], PedsXYZ[ListyDoodle][2], PedsXYZ[ListyDoodle][3], math.random(1,359) )
			hitPerson1Blip = createBlipAttachedTo ( hitPerson1, 52, 4, 255, 255, 255, 255, 1, 99999 )
			addEventHandler("onClientPedWasted", hitPerson1, HitDown1)
			addEventHandler ( "onClientPedDamage", Target1, MissionStart2point2 )
			addEventHandler ( "onClientPedDamage", hitPerson1, DefendTheHit )
		end
	end
end --420 smoke up! If you don't smoke go eat a snack.

function MissionStart2point2( attacker )
	if (attacker ==  getLocalPlayer ()) then
		local chat2 = math.random(#Chats2)
		outputChatBox(Chats2[chat2][1],0,0,190)
		removeEventHandler ( "onClientPedDamage", Target1, MissionStart2point2 )
	end
end

function HitBossDown( killer )
	if (killer ==  getLocalPlayer ()) then
		setTimer(function()
				outputChatBox("You just killed your boss... This mission is no longer available :L",255,0,0)
				setTimer(function()
						outputChatBox("The MAFIA is now after you!",255,0,0)
				end, 2000, 1)
				destroyElement(Target1)
				destroyElement(hitPerson1Blip)
				destroyElement(hitPerson1)
				removeEventHandler("onClientPedWasted", hitPerson1, HitDown1)
				setTimer(function()
						local AngryWorkerChat1 = math.random(#AngryWorkerChat)
						outputChatBox(AngryWorkerChat[AngryWorkerChat1][1],255,0,0)
						triggerServerEvent ( "onKillBoss", resourceRoot,killer )
				
						setTimer(function()
								local AngryWorkerChat2 = math.random(#AngryWorkerChat)
								outputChatBox(AngryWorkerChat[AngryWorkerChat2][1],255,0,0)
								triggerServerEvent ( "onKillBoss", resourceRoot,killer )
						end, 10000,1)
				end, 6000,1)
		end, 1000,1)
	end
end

function DefendTheHit(attacker)
	removeEventHandler ( "onClientPedDamage", hitPerson1, DefendTheHit )
	triggerServerEvent ( "onDefense", resourceRoot, attacker )
end

function HitDown1( killer )
	if (killer ==  getLocalPlayer ()) then
		removeEventHandler("onClientPedWasted", hitPerson1, HitDown1)
		destroyElement(hitPerson1Blip)
		outputChatBox("Mission Completed! +$30,100!!!",0,222,0)
		triggerServerEvent ( "onPayPlayer", resourceRoot, killer )
		removeEventHandler("onClientPedWasted", Target1, HitBossDown)
		Target1Blip = createBlipAttachedTo ( Target1, 59, 1, 255, 255, 255, 255, 1, 200 )
		addEventHandler ( "onClientPedDamage", Target1, MissionStart1point2 )
		removeEventHandler ( "onClientPedDamage", Target1, MissionStart2point2 )
	end
end


--Hitman 1 END-------------------------------------------------------------------------

--Hitman 2-------------------------------------------------------------------------

function MissionStart1point22(attacker)
	if (attacker ==  getLocalPlayer ()) then
		destroyElement(Target2Blip)
		removeEventHandler( "onClientPedDamage", Target2, MissionStart1point22)
		addEventHandler( "onClientPedWasted", Target2, HitBossDown2)
		local ListyDoodle  = math.random(#PedsXYZ)
		local chat1 = math.random(#Chats)
		outputChatBox(Chats[chat1][1],0,0,190)
		outputChatBox("Visit the $ symbol and murder them to claim this hit/bounty.",222,0,0)
		if not (hitPerson2) or ( isPedDead ( hitPerson2 ) ) then
			hitPerson2 = createPed ( math.random(9,162),PedsXYZ[ListyDoodle][1], PedsXYZ[ListyDoodle][2], PedsXYZ[ListyDoodle][3], 0.0 )
			hitPerson2Blip = createBlipAttachedTo ( hitPerson2, 52, 4, 255, 255, 255, 255, 1, 99999 )
			addEventHandler("onClientPedWasted", hitPerson2, HitDown12)
			addEventHandler ( "onClientPedDamage", Target2, MissionStart2point22 )
			addEventHandler ( "onClientPedDamage", hitPerson2, DefendTheHit2 )
		end
	end
end

function MissionStart2point22( attacker )
	if (attacker ==  getLocalPlayer ()) then
		local chat2 = math.random(#Chats2)
		outputChatBox(Chats2[chat2][1],0,0,190)
		removeEventHandler ( "onClientPedDamage", Target2, MissionStart2point22 )
	end
end

function HitBossDown2( killer )
	if (killer ==  getLocalPlayer ()) then
		setTimer(function()
				outputChatBox("You just killed your boss... This mission is no longer available :L",255,0,0)
				setTimer(function()
						outputChatBox("The MAFIA is now after you!",255,0,0)
				end, 2000, 1)
				destroyElement(Target2)
				destroyElement(hitPerson2Blip)
				destroyElement(hitPerson2)
				removeEventHandler("onClientPedWasted", hitPerson2, HitDown12)
				setTimer(function()
						local AngryWorkerChat1 = math.random(#AngryWorkerChat)
						outputChatBox(AngryWorkerChat[AngryWorkerChat1][1],255,0,0)
						triggerServerEvent ( "onKillBoss", resourceRoot,killer )
				
						setTimer(function()
								local AngryWorkerChat2 = math.random(#AngryWorkerChat)
								outputChatBox(AngryWorkerChat[AngryWorkerChat2][1],255,0,0)
								triggerServerEvent ( "onKillBoss", resourceRoot,killer )
						end, 10000,1)
				end, 6000,1)
		end, 1000,1)
	end
end

function DefendTheHit2(attacker)
	removeEventHandler ( "onClientPedDamage", hitPerson2, DefendTheHit2 )
	triggerServerEvent ( "onDefense", resourceRoot, attacker )
end

function HitDown12( killer )
	if (killer ==  getLocalPlayer ()) then
		removeEventHandler("onClientPedWasted", hitPerson2, HitDown12)
		destroyElement(hitPerson2Blip)
		outputChatBox("Mission Completed! +$30,100!!!",0,222,0)
		triggerServerEvent ( "onPayPlayer", resourceRoot, killer )
		removeEventHandler("onClientPedWasted", Target2, HitBossDown2)
		Target2Blip = createBlipAttachedTo ( Target2, 59, 1, 255, 255, 255, 255, 1, 200 )
		addEventHandler ( "onClientPedDamage", Target2, MissionStart1point22 )
		removeEventHandler ( "onClientPedDamage", Target2, MissionStart2point22 )
	end
end

--Hitman 2 END-------------------------------------------------------------------------

--Hitman 3-------------------------------------------------------------------------

function MissionStart1point23(attacker)
	if (attacker ==  getLocalPlayer ()) then
		destroyElement(Target3Blip)
		removeEventHandler( "onClientPedDamage", Target3, MissionStart1point23)
		addEventHandler( "onClientPedWasted", Target3, HitBossDown3)
		local ListyDoodle  = math.random(#PedsXYZ)
		local chat1 = math.random(#Chats)
		outputChatBox(Chats[chat1][1],0,0,190)
		outputChatBox("Visit the $ symbol and murder them to claim this hit/bounty.",222,0,0)
		if not (hitPerson3) or ( isPedDead ( hitPerson3 ) ) then
			hitPerson3 = createPed ( math.random(9,162),PedsXYZ[ListyDoodle][1], PedsXYZ[ListyDoodle][2], PedsXYZ[ListyDoodle][3], 0.0 )
			hitPerson3Blip = createBlipAttachedTo ( hitPerson3, 52, 4, 255, 255, 255, 255, 1, 99999 )
			addEventHandler("onClientPedWasted", hitPerson3, HitDown13)
			addEventHandler ( "onClientPedDamage", Target3, MissionStart2point23 )
			addEventHandler ( "onClientPedDamage", hitPerson3, DefendTheHit3 )
		end
	end
end

function MissionStart2point23( attacker )
	if (attacker ==  getLocalPlayer ()) then
		local chat2 = math.random(#Chats2)
		outputChatBox(Chats2[chat2][1],0,0,190)
		removeEventHandler ( "onClientPedDamage", Target3, MissionStart2point23 )
	end
end

function HitBossDown3( killer )
	if (killer ==  getLocalPlayer ()) then
		setTimer(function()
				outputChatBox("You just killed your boss... This mission is no longer available :L",255,0,0)
				setTimer(function()
						outputChatBox("The MAFIA is now after you!",255,0,0)
				end, 2000, 1)
				destroyElement(Target3)
				destroyElement(hitPerson3Blip)
				destroyElement(hitPerson3)
				removeEventHandler("onClientPedWasted", hitPerson3, HitDown13)
				setTimer(function()
						local AngryWorkerChat1 = math.random(#AngryWorkerChat)
						outputChatBox(AngryWorkerChat[AngryWorkerChat1][1],255,0,0)
						triggerServerEvent ( "onKillBoss", resourceRoot,killer )
				
						setTimer(function()
								local AngryWorkerChat2 = math.random(#AngryWorkerChat)
								outputChatBox(AngryWorkerChat[AngryWorkerChat2][1],255,0,0)
								triggerServerEvent ( "onKillBoss", resourceRoot,killer )
						end, 10000,1)
				end, 6000,1)
		end, 1000,1)
	end
end

function DefendTheHit3(attacker)
	removeEventHandler ( "onClientPedDamage", hitPerson3, DefendTheHit3 )
	triggerServerEvent ( "onDefense", resourceRoot, attacker )
end

function HitDown13( killer )
	if (killer ==  getLocalPlayer ()) then
		removeEventHandler("onClientPedWasted", hitPerson3, HitDown13)
		destroyElement(hitPerson3Blip)
		outputChatBox("Mission Completed! +$30,100!!!",0,222,0)
		triggerServerEvent ( "onPayPlayer", resourceRoot, killer )
		removeEventHandler("onClientPedWasted", Target3, HitBossDown3)
		
		Target3Blip = createBlipAttachedTo ( Target3, 59, 1, 255, 255, 255, 255, 1, 200 )
		addEventHandler ( "onClientPedDamage", Target3, MissionStart1point23 )
		removeEventHandler ( "onClientPedDamage", Target3, MissionStart2point23 )
	end
end

--Hitman 3 END-------------------------------------------------------------------------

--Hitman 4-------------------------------------------------------------------------

function MissionStart1point24(attacker)
	if (attacker ==  getLocalPlayer ()) then
		destroyElement(Target4Blip)
		removeEventHandler( "onClientPedDamage", Target4, MissionStart1point24)
		addEventHandler( "onClientPedWasted", Target4, HitBossDown4)
		local ListyDoodle  = math.random(#PedsXYZ)
		local chat1 = math.random(#Chats)
		outputChatBox(Chats[chat1][1],0,0,190)
		outputChatBox("Visit the $ symbol and murder them to claim this hit/bounty.",222,0,0)
		if not (hitPerson4) or ( isPedDead ( hitPerson4 ) ) then
			hitPerson4 = createPed ( math.random(9,162),PedsXYZ[ListyDoodle][1], PedsXYZ[ListyDoodle][2], PedsXYZ[ListyDoodle][3], 0.0 )
			hitPerson4Blip = createBlipAttachedTo ( hitPerson4, 52, 4, 255, 255, 255, 255, 1, 99999 )
			addEventHandler("onClientPedWasted", hitPerson4, HitDown14)
			addEventHandler ( "onClientPedDamage", Target4, MissionStart2point24 )
			addEventHandler ( "onClientPedDamage", hitPerson4, DefendTheHit4 )
		end
	end
end

function MissionStart2point24( attacker )
	if (attacker ==  getLocalPlayer ()) then
		local chat2 = math.random(#Chats2)
		outputChatBox(Chats2[chat2][1],0,0,190)
		removeEventHandler ( "onClientPedDamage", Target4, MissionStart2point24 )
	end
end

function HitBossDown4( killer )
	if (killer ==  getLocalPlayer ()) then
		setTimer(function()
				outputChatBox("You just killed your boss... This mission is no longer available :L",255,0,0)
				setTimer(function()
						outputChatBox("The MAFIA is now after you!",255,0,0)
				end, 2000, 1)
				destroyElement(Target4)
				destroyElement(hitPerson4Blip)
				destroyElement(hitPerson4)
				removeEventHandler("onClientPedWasted", hitPerson4, HitDown14)
				setTimer(function()
						local AngryWorkerChat1 = math.random(#AngryWorkerChat)
						outputChatBox(AngryWorkerChat[AngryWorkerChat1][1],255,0,0)
						triggerServerEvent ( "onKillBoss", resourceRoot,killer )
				
						setTimer(function()
								local AngryWorkerChat2 = math.random(#AngryWorkerChat)
								outputChatBox(AngryWorkerChat[AngryWorkerChat2][1],255,0,0)
								triggerServerEvent ( "onKillBoss", resourceRoot,killer )
						end, 10000,1)
				end, 6000,1)
		end, 1000,1)
	end
end

function DefendTheHit4(attacker)
	removeEventHandler ( "onClientPedDamage", hitPerson4, DefendTheHit4 )
	triggerServerEvent ( "onDefense", resourceRoot, attacker )
end

function HitDown14( killer )
	if (killer ==  getLocalPlayer ()) then
		removeEventHandler("onClientPedWasted", hitPerson4, HitDown14)
		destroyElement(hitPerson4Blip)
		outputChatBox("Mission Completed! +$30,100!!!",0,222,0)
		triggerServerEvent ( "onPayPlayer", resourceRoot, killer )
		removeEventHandler("onClientPedWasted", Target4, HitBossDown4)
		
		Target4Blip = createBlipAttachedTo ( Target4, 59, 1, 255, 255, 255, 255, 1, 200 )
		addEventHandler ( "onClientPedDamage", Target4, MissionStart1point24 )
		removeEventHandler ( "onClientPedDamage", Target4, MissionStart2point24 )
	end
end

--Hitman 4 END-------------------------------------------------------------------------

--Hitman 5-------------------------------------------------------------------------

function MissionStart1point25(attacker)
	if (attacker ==  getLocalPlayer ()) then
		destroyElement(Target5Blip)
		removeEventHandler( "onClientPedDamage", Target5, MissionStart1point25)
		addEventHandler( "onClientPedWasted", Target5, HitBossDown5)
		local ListyDoodle  = math.random(#PedsXYZ)
		local chat1 = math.random(#Chats)
		outputChatBox(Chats[chat1][1],0,0,190)
		outputChatBox("Visit the $ symbol and murder them to claim this hit/bounty.",222,0,0)
		if not (hitPerson5) or ( isPedDead ( hitPerson5 ) ) then
			hitPerson5 = createPed ( math.random(9,162),PedsXYZ[ListyDoodle][1], PedsXYZ[ListyDoodle][2], PedsXYZ[ListyDoodle][3], 0.0 )
			hitPerson5Blip = createBlipAttachedTo ( hitPerson5, 52, 4, 255, 255, 255, 255, 1, 99999 )
			addEventHandler("onClientPedWasted", hitPerson5, HitDown15)
			addEventHandler ( "onClientPedDamage", Target5, MissionStart2point25 )
			addEventHandler ( "onClientPedDamage", hitPerson5, DefendTheHit5 )
		end
	end
end

function MissionStart2point25( attacker )
	if (attacker ==  getLocalPlayer ()) then
		local chat2 = math.random(#Chats2)
		outputChatBox(Chats2[chat2][1],0,0,190)
		removeEventHandler ( "onClientPedDamage", Target5, MissionStart2point25 )
	end
end

function HitBossDown5( killer )
	if (killer ==  getLocalPlayer ()) then
		setTimer(function()
				outputChatBox("You just killed your boss... This mission is no longer available :L",255,0,0)
				setTimer(function()
						outputChatBox("The MAFIA is now after you!",255,0,0)
				end, 2000, 1)
				destroyElement(Target5)
				destroyElement(hitPerson5Blip)
				destroyElement(hitPerson5)
				removeEventHandler("onClientPedWasted", hitPerson5, HitDown15)
				setTimer(function()
						local AngryWorkerChat1 = math.random(#AngryWorkerChat)
						outputChatBox(AngryWorkerChat[AngryWorkerChat1][1],255,0,0)
						triggerServerEvent ( "onKillBoss", resourceRoot,killer )
				
						setTimer(function()
								local AngryWorkerChat2 = math.random(#AngryWorkerChat)
								outputChatBox(AngryWorkerChat[AngryWorkerChat2][1],255,0,0)
								triggerServerEvent ( "onKillBoss", resourceRoot,killer )
						end, 10000,1)
				end, 6000,1)
		end, 1000,1)
	end
end

function DefendTheHit5(attacker)
	removeEventHandler ( "onClientPedDamage", hitPerson5, DefendTheHit5 )
	triggerServerEvent ( "onDefense", resourceRoot, attacker )
end

function HitDown15( killer )
	if (killer ==  getLocalPlayer ()) then
		removeEventHandler("onClientPedWasted", hitPerson5, HitDown15)
		destroyElement(hitPerson5Blip)
		outputChatBox("Mission Completed! +$30,100!!!",0,222,0)
		triggerServerEvent ( "onPayPlayer", resourceRoot, killer )
		removeEventHandler("onClientPedWasted", Target5, HitBossDown5)
		
		Target5Blip = createBlipAttachedTo ( Target5, 59, 1, 255, 255, 255, 255, 1, 200 )
		addEventHandler ( "onClientPedDamage", Target5, MissionStart1point25 )
		removeEventHandler ( "onClientPedDamage", Target5, MissionStart2point25 )
	end
end

--Hitman 5 END-------------------------------------------------------------------------

--Hitman 6-------------------------------------------------------------------------

function MissionStart1point26(attacker)
	if (attacker ==  getLocalPlayer ()) then
		destroyElement(Target6Blip)
		removeEventHandler( "onClientPedDamage", Target6, MissionStart1point26)
		addEventHandler( "onClientPedWasted", Target6, HitBossDown6)
		local ListyDoodle  = math.random(#PedsXYZ)
		local chat1 = math.random(#Chats)
		outputChatBox(Chats[chat1][1],0,0,190)
		outputChatBox("Visit the $ symbol and murder them to claim this hit/bounty.",222,0,0)
		if not (hitPerson6) or ( isPedDead ( hitPerson6 ) ) then
			hitPerson6 = createPed ( math.random(9,162),PedsXYZ[ListyDoodle][1], PedsXYZ[ListyDoodle][2], PedsXYZ[ListyDoodle][3], 0.0 )
			hitPerson6Blip = createBlipAttachedTo ( hitPerson6, 52, 4, 255, 255, 255, 255, 1, 99999 )
			addEventHandler("onClientPedWasted", hitPerson6, HitDown16)
			addEventHandler ( "onClientPedDamage", Target6, MissionStart2point26 )
			addEventHandler ( "onClientPedDamage", hitPerson6, DefendTheHit6 )
		end
	end
end

function MissionStart2point26( attacker )
	if (attacker ==  getLocalPlayer ()) then
		local chat2 = math.random(#Chats2)
		outputChatBox(Chats2[chat2][1],0,0,190)
		removeEventHandler ( "onClientPedDamage", Target6, MissionStart2point26 )
	end
end

function HitBossDown6( killer )
	if (killer ==  getLocalPlayer ()) then
		setTimer(function()
				outputChatBox("You just killed your boss... This mission is no longer available :L",255,0,0)
				setTimer(function()
						outputChatBox("The MAFIA is now after you!",255,0,0)
				end, 2000, 1)
				destroyElement(Target6)
				destroyElement(hitPerson6Blip)
				destroyElement(hitPerson6)
				removeEventHandler("onClientPedWasted", hitPerson6, HitDown16)
				setTimer(function()
						local AngryWorkerChat1 = math.random(#AngryWorkerChat)
						outputChatBox(AngryWorkerChat[AngryWorkerChat1][1],255,0,0)
						triggerServerEvent ( "onKillBoss", resourceRoot,killer )
				
						setTimer(function()
								local AngryWorkerChat2 = math.random(#AngryWorkerChat)
								outputChatBox(AngryWorkerChat[AngryWorkerChat2][1],255,0,0)
								triggerServerEvent ( "onKillBoss", resourceRoot,killer )
						end, 10000,1)
				end, 6000,1)
		end, 1000,1)
	end
end

function DefendTheHit6(attacker)
	removeEventHandler ( "onClientPedDamage", hitPerson6, DefendTheHit6 )
	triggerServerEvent ( "onDefense", resourceRoot, attacker )
end

function HitDown16( killer )
	if (killer ==  getLocalPlayer ()) then
		removeEventHandler("onClientPedWasted", hitPerson6, HitDown16)
		destroyElement(hitPerson6Blip)
		outputChatBox("Mission Completed! +$30,100!!!",0,222,0)
		triggerServerEvent ( "onPayPlayer", resourceRoot, killer )
		removeEventHandler("onClientPedWasted", Target6, HitBossDown6)
		
		Target6Blip = createBlipAttachedTo ( Target6, 59, 1, 255, 255, 255, 255, 1, 200 )
		addEventHandler ( "onClientPedDamage", Target6, MissionStart1point26 )
		removeEventHandler ( "onClientPedDamage", Target6, MissionStart2point26 )
	end
end

--Hitman 6 END-------------------------------------------------------------------------

--Hitman 7-------------------------------------------------------------------------

function MissionStart1point27(attacker)
	if (attacker ==  getLocalPlayer ()) then
		destroyElement(Target7Blip)
		removeEventHandler( "onClientPedDamage", Target7, MissionStart1point27)
		addEventHandler( "onClientPedWasted", Target7, HitBossDown7)
		local ListyDoodle  = math.random(#PedsXYZ)
		local chat1 = math.random(#Chats)
		outputChatBox(Chats[chat1][1],0,0,190)
		outputChatBox("Visit the $ symbol and murder them to claim this hit/bounty.",222,0,0)
		if not (hitPerson7) or ( isPedDead ( hitPerson7 ) ) then
			hitPerson7 = createPed ( math.random(9,162),PedsXYZ[ListyDoodle][1], PedsXYZ[ListyDoodle][2], PedsXYZ[ListyDoodle][3], 0.0 )
			hitPerson7Blip = createBlipAttachedTo ( hitPerson7, 52, 4, 255, 255, 255, 255, 1, 99999 )
			addEventHandler("onClientPedWasted", hitPerson7, HitDown17)
			addEventHandler ( "onClientPedDamage", Target7, MissionStart2point27 )
			addEventHandler ( "onClientPedDamage", hitPerson7, DefendTheHit7 )
		end
	end
end

function MissionStart2point27( attacker )
	if (attacker ==  getLocalPlayer ()) then
		local chat2 = math.random(#Chats2)
		outputChatBox(Chats2[chat2][1],0,0,190)
		removeEventHandler ( "onClientPedDamage", Target7, MissionStart2point27 )
	end
end

function HitBossDown7( killer )
	if (killer ==  getLocalPlayer ()) then
		setTimer(function()
				outputChatBox("You just killed your boss... This mission is no longer available :L",255,0,0)
				setTimer(function()
						outputChatBox("The MAFIA is now after you!",255,0,0)
				end, 2000, 1)
				destroyElement(Target7)
				destroyElement(hitPerson7Blip)
				destroyElement(hitPerson7)
				removeEventHandler("onClientPedWasted", hitPerson7, HitDown17)
				setTimer(function()
						local AngryWorkerChat1 = math.random(#AngryWorkerChat)
						outputChatBox(AngryWorkerChat[AngryWorkerChat1][1],255,0,0)
						triggerServerEvent ( "onKillBoss", resourceRoot,killer )
				
						setTimer(function()
								local AngryWorkerChat2 = math.random(#AngryWorkerChat)
								outputChatBox(AngryWorkerChat[AngryWorkerChat2][1],255,0,0)
								triggerServerEvent ( "onKillBoss", resourceRoot,killer )
						end, 10000,1)
				end, 6000,1)
		end, 1000,1)
	end
end

function DefendTheHit7(attacker)
	removeEventHandler ( "onClientPedDamage", hitPerson7, DefendTheHit7 )
	triggerServerEvent ( "onDefense", resourceRoot, attacker )
end

function HitDown17( killer )
	if (killer ==  getLocalPlayer ()) then
		removeEventHandler("onClientPedWasted", hitPerson7, HitDown17)
		destroyElement(hitPerson7Blip)
		outputChatBox("Mission Completed! +$30,100!!!",0,222,0)
		triggerServerEvent ( "onPayPlayer", resourceRoot, killer )
		removeEventHandler("onClientPedWasted", Target7, HitBossDown7)
		
		Target7Blip = createBlipAttachedTo ( Target7, 59, 1, 255, 255, 255, 255, 1, 200 )
		addEventHandler ( "onClientPedDamage", Target7, MissionStart1point27 )
		removeEventHandler ( "onClientPedDamage", Target7, MissionStart2point27 )
	end
end

--Hitman 7 END-------------------------------------------------------------------------