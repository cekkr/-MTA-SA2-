function DiedRestart(killer) --Ped death
	if killer == getLocalPlayer() then
		removeEventHandler("onClientPedWasted", Person1, DiedRestart)
		removeEventHandler ( "onClientPlayerWasted", attacker, DiedRestart2 )
		outputChatBox ( "Mission failed!   -'The mafia person died early'-", 255, 0, 0, false )
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			removeEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
			destroyElement(MoneyBagBlip1)
			destroyElement(MoneyBag1)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			removeEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
			destroyElement(MoneyBlip2)
			destroyElement(MoneyBag2)
		end
		if (MoneyBag1) and (MoneyBag2) and (MoneyBag3) then
			removeEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
			destroyElement(MoneyBlip3)
			destroyElement(MoneyBag3)
		end
		
		setTimer(function()
			removeEventHandler ( "onClientPedDamage", Person1, MissionStart)
			setTimer(function()
			CreateStartingPeople()
			end, 3000,1)

		end, 7000,1)
	end
	
end



DamnMessages = {
	{"-'You died... that sucks!'-"},
	{"-'You've died. Now you gotta start over!'-"},
	{"-'You just died! Now you must start from the beginning!'-"},
	{"-'You died! Maybe try a better weapon?'-"},
	{"-'You just died.'-"},
	{"-'Try again, Dying = restart!'-"},
	{"-'Ouch! You're dead! Start over.'-"},
	{"-'Don't die! Hahaha, too late!'-"},
	{"-'You are now dead.'-"},
	{"-'When you die, you must start over!'-"},
	{"-'Try harder next time! You died.'-"},
	{"-'You died. Maybe try something else?'-"},
	{"-'Looks like your dead...'-"},
	{"-'You got shit faced.'-"},
	{"-'Your body is no longer working.'-"},
	{"-'You pissed your pants and died.'-"},
	{"-'You shit your pants and died.'-"},
	{"-'You stopped breathing.'-"},
	{"-'You died from organ failure'-"},
	{"-'You passed out cold.'-"},
	{"-'You hit the bricks. (YOU DIED)'-"},
	{"-'You kicked the bucket.(YOU DIED)'-"},
	{"-'You wandered too far from home...(YOU DIED)'-"},
	{"-'You checked out.(YOU DIED)'-"},
	{"-'You fucked yourself up too much.'-"},
	{"-'You died.'-"},
	{"-'Your body was dumped near the hospital.'-"},
	{"-'Maybe getting more friends will help you not die.'-"},
	{"-'Heaven's gates awaits. You did what you had to do.'-"},
	{"-'You died. Have you tried playing better?'-"},
	{"-'You died. Are you even trying?'-"},
	{"-'Death has come for you!'-"},
	{"-'You no longer have that life.'-"},
	{"-'Shit got too real for you!'-"},
	{"-'You got stuff twisted. (YOU DIED)'-"},
	{"-'Your face was bashed in!'-"},
	{"-'You have been removed from the scene.'-"},
	{"-'What use is money or items if you're dead?'-"},
	{"-'You passed away. (R.I.P)'-"},
	{"-'Yepp! Dying will do that!'-"},
	{"-'Maybe you can't handle this?'-"},
}

function DiedRestart2(killer) --player death
	if killer == getLocalPlayer() then
		removeEventHandler ( "onClientPlayerWasted", attacker, DiedRestart2 )
		removeEventHandler("onClientPedWasted", Person1, DiedRestart)
		GiveMeHeadList  = math.random(#DamnMessages)
		outputChatBox ( "Mission failed! " .. DamnMessages[GiveMeHeadList][1], 255, 0, 0, false )
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			removeEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
			if (MoneyBlip1) then
				destroyElement(MoneyBlip1)
				destroyElement(MoneyBag1)
			end
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			removeEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
			if (MoneyBlip2) then
				destroyElement(MoneyBlip2)
				destroyElement(MoneyBag2)
			end
		end
		if (MoneyBag1) and (MoneyBag2) and (MoneyBag3) then
			removeEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
			if (MoneyBlip3) then
				destroyElement(MoneyBlip3)
				destroyElement(MoneyBag3)
			end
		end
		setTimer(function()
			removeEventHandler ( "onClientPedDamage", Person1, MissionStart)
			setTimer(function()
			CreateStartingPeople()
			end, 3000,1)
		end, 7000,1)
	end
end
-- Job for hire.

Chats = {
	{"Don't touch me, I'm rich! My money is being transported by the Mafia's TOP killers."},
	{"I'm too rich to deal with you. I could have you killed right now! But the mafia is busy moving my money!"},
	{"Don't Attack me! I'm rich, and you're poor. The Mafia makes sure my money is protected!"},
	{"I'll use my ties to the Mafia, and have you killed! You're lucky their busy moving my money!"},
	{"I own a large part of Los Santos. It takes the Mafia days just to move my money around."},
	{"I told the Mafia to watch my money... I hope they know what their doing..."},
	{"The Mafia is taking my money to a new location. I hope they don't loose any..."},
	{"I hired some heavily armed people to transport my money around. I hope these 'Mafia' people, get it done."},
	{"I have more money then you can imagine! In fact, I have $100k+ that's being sent over from Vice city!"},
	{"I don't mean to brag, but I have an entire warehouse full of money, it's guarded by the Mafia, so don't fuck with me..."},
	{"I got loads of money comming in from another country. It's a good thing I hired the Mafia to transport it. Now It shouldn't get stolen!"},
	{"I have ALOT of money, so don't touch me! As a matter of fact, my money is being delivered by the Mafia as we speak!"},
	{"You have no right to hit me! Me and all my money, are protected by the Mafia! You'd have to get past them, in order to steal it."},
	{"Many people have tried to steal my money, but my friends in the Mafia always stop them. The Mafia is very good at protecting money."},
	{"The Mafia isn't a family you wanna mess with. As a matter of fact, I hired the Mafia to protect me, AND my money.."},
	{"Why would you hit me? I'm calling my Mafia friends! They protect me and all my cash. I got a shipment comming in soon actually!"},
	{"Attacking people will get you killed! I'm calling my Mafia friends! They handle my money, AND people like you!"},
	{"I'm too rich to deal with this... I've got Mafia ties! The Mafia handles all my money, and all my problems."},
	{"The Mafia family is moving $100k+ over here from Iran. I can't wait for it to arrive, I'm going to spend soo much!"},
	{"The Mafia is shipping my money here from Europe, Don't kill me and i'll tell you where it's at!"},
	{"Don't kill me! I'm rich! The Mafia protects me and my money! My money is being shipped by them now!"},
	{"I don't have any money one me! The Mafia watches my money for me! They also protect me."},
	{"Why would you attack me? I'm rich, I pay the Mafia to watch my money, AND me."},
	{"I'm protected by the Mafia. Fuck you if you think your stealing money from ME, OR them! "},
	{"Take it easy! I'll tell you where the Mafia is holding my money... just don't kill me!"},
	{"Don't kill me! and I'll tell you where the Mafia is holding my money. There's $100k+ there!"},
	{"I don't have any money on me! The Mafia is keeping it somewhere! I'll tell you where it is, if you don't kill me!"},
	{"You can't rob me, I hired the Mafia to move MY money around."},
	{"Trying to rob me? I think not! I hired the Mafia to ship my money over to another country!"},
	{"Don't mess with me, I'm rich as heck! I ALSO hired the Mafia to move my money around, and protect me."},
	{"I will tell you where the Mafia keeps my money, just don't kill me!"},
	{"I don't have any $ on me. I can tell you where the Mafia is holding my money... but you will need the help of friends to get to it >:L"},
	{"BACK OFF! The mafia protects me, AND my money."},
	{"Ouch! Have you met my cleaners? They clean my problems, and hold my money in safe hidden places."},
	{"Why would you hit me? That's fucked. GUARDS! KILL THIS MAN!  Meet my guards. They hold my money in secret locations."},
	{"Why would you hit me? I have no money! My mafia friends have it hidden somewhere!"},
	{"You'll never find my money! You just tried to rob the WRONG person! I have Mafia people that watch my money for me."},
	{"Sorry, You cannot rob me. My money is protected by the Mafia, in a secret bank somewhere!"},
	{"I don't have any money! SOMEONE HELP!!! All my money is protected by the Mafia!"},
	{"I got 2 words for you... fuck off. Are you trying to rob me??? Good luck, The Mafia is protecting MY money."},
	{"Why would you attack someone you do not know? OK! Meet my friends, that YOU do not know. They protect me from robbers, and they hold my money."},
	{"The Mafia has all my money, so you can not take it from me! Oh, and they protect me L:"},
	{"How often do you rob people? Because this is the last time! The Mafia always murders anyone who touches me. AND they protect my money..."},
	{"Try somewhere els! The Mafia will kill anyone who tries to rob me! They keep my money safe, and hidden! Here they come now!"},
	{"Trying to rob me is the biggest mistake you could ever make! The Mafia is going to kill you. They are the ones in charge of my money! About $100k..."},
	{"The mafia has about $100,000 of my money. They protect it, and ME!"},
	{"Have you met anyone in the mafia before? Yeaaaa.... I kinda have some close ties. They keep my money REAL safe ya know?"},
	{"Meet my Mafia friends! Why would you hit a stranger? These guys have my money on LOCK DOWN!"},
	{"Are you trying to steal from me? I have friends in the Mafia! They protect my money, in secret locations!"},
	{"Why are you attacking me? My money is protected by the Mafia!"},
	{"Be carefull who you hit! I have no money on me for you to steal. However, there's money over at this secret place I know about."},
	{"Don't kill me!!! I'll tell you where the Mafia is keeping my money! Oh look, here they come!  L:"},
	{"My boss 'Scatterbrain' said I must kill you now... he also wanted me to say something about where my money was hidden or something like that."},
	{"Don't kill me, the mafia is hiding my money at some place, OH SHIT! There they are!"},
	{"Here come's the mafia... They hide my money so no one steals it, AND they protect me."},
	{"ROBBER!!! I'm calling the Mafia! They handle all MY money."},
	{"You can't rob me! I'm in the Mafia! I have my money hidden somehwere!"},
}
--grabbing the first money bag.
Chats2 = {
	{"I fucking trusted you, and you stole my money! It's a good thing they moved most of it already!"},
	{"I see you found where my money was hidden... FUCK YOU! I already moved the rest!"},
	{"You like stealing my money? FUCK YOU i'm going to make sure you die, and REALLY soon..."},
	{"WTF!? You stole my money!? It's a good thing I moved the rest somewhere els. I hope you get your kharma!"},
	{"Why would you steal from me? I'm going to make sure you never steal again!"},
	{"FUCK YOUU!!!!! WHY ARE YOU STEALING FROM ME!!!! I'll make sure you die, TODAY!"},
	{"HAHAHAH You thought you could steal my money and get away??? Fuck that! I'll see you real soon!"},
	{"Tell one person about some money, and THIS is what they do... I'm going to KILL you for stealing from me!"},
	{"I kill people like you every day, I WILL FIND YOU FOR TAKING MY MONEY!!!"},
	{"You better hope I don't find you! When I do, I'm going to MURDER YOUR FUCKING BRAINS OUT!"},
	{"I see you have found some of my money... Meet me here to return it. Or I'll simply kill you! ok? nice? nice?"},
	{"Who the fuck are you!? I should kill you for stealing my money, but I wont... Meet me somewhere."},
	{"You must have a death-wish! Shit, meet me here with the money, and you and my men will talk!"},
	{"Come see me! I'm the person who told you where that money was! Guess what, it's MINES! Meet me PUSSY!"},
	{"Fuck you bro, not cool! You stole my money! Meet me somewhere, and we can talk about this!"},
	{"Did you just steal my money? OK! You'll be dead soon enough! I'm sending men after you!"},
	{"Hello, i'm the Mafia boss you just stole from! I'm also the person who's going to kill you..."},
	{"Looks like we got a theif here... STEAL MY MONEY AND YOU DIE!!! FUCK YOU!!!"},
	{"My friends in the Mafia are going to kill you. You stole my money, I will steal your HEAD!"},
	{"I'm going to stomp your face in for stealing my money! I'm in the Mafia!"},
	{"You think you can take my cash and get away with it??? FUCK YOU! Watch your back!"},
	{"Watch your back, you stole from me, and you WILL repay me back."},
	{"Watch who you steal from! I'm in the Mafia bitch!"},
	{"I'm the rich guy you just stole from... I'm gunna find you, and i'm going to KILL YOU!"},
	{"What do you think you're doing? WHY would you steal from me??? YOU'RE DEAD!!!"},
	{"Keep your hands to yourself! I heard you're the one who took my money! Watch out."},
	{"Watch yourself... My Mafia friends do not like it when you steal from them."},
	{"Have a nice day! You stole from us... don't think you'll get away with it!"},
	{"YOU STOLE MY MONEY!!! Fuck you! I'm calling the Mafia, they will handle you."},
	{"Have you met my Mafia friends? Anyways, Hello... I'm the person you STOLE FROM"},
	{"I knew you would go after the Mafia once I said they were watching my money. So I made them move it!"},
	{"I can't beleave you stole from me! OK, I'm sending someone to kill you!"},
	{"Theif!!! I'll have you killed! You'll be dead before tomorrow."},
	{"Enjoy that money you stole from me... I'm telling the Mafia your location!"},
	{"Don't fuck with the GANG, GANG, GANG, GANG! You gone die today!"},
	{"Feel good about yourself? You stole from us, And thus, you must die!"},
	{"Why would you steal from me? OK! It's cool. I'll simply have you killed!"},
	{"Don't worry about that money you stole from me. You'll be dead soon enough."},
	{"Take my words seriously when I say this. YOU WILL DIE FOR TAKING MY MONEY!"},
	{"I'm gunna murder you! That was MY money!"},
	{"You don't know who you just messed with! You just stole from the Mafia, we are watching you. "},
	{"Have fun with that money, you will not have it for long... -Mafia"},
	{"Eat shit you little money stealer! -Mafia"},
	{"Do you really think we would have all of our money in one place? We will see you soon!!!"},
	{"We eat people like you for breakfast! We are comming for our money! -Mafia"},
	{"Stop acting so tough! We will kill you soon enough... Enjoy that money! -Mafia"},
	{"Do you think you're savage? Stealing money is how you get on my bad side! We are comming for you! -Mafia"},
	{"Try again! Hahahah! Our money is hidden! We will MURDER YOUR HEAD OFF! Come back and give us the $, and we will think about letting you go."},
	{"Good afternoon, I'm the person you stole that money from. Yea, I called my Mafia buddies... Good luck!"},
	{"You better have my money X4 when I come for it. Or my men will murder you! -Mafia"},
	{"You're really bold. Stealing that money is the biggest mistake you'll ever make. -Mafia"},
	{"Are you stupid?, or just dumb? You're going to get murdered for taking that money."},
	{"You better run, because when we find you, we're gunna murder you. We take our stolen money seriously. -Mafia"},
	{"FUCK YOU THEIF! WE WILL FIND YOU!!! AND WE WILL KILL YOU!!!!!!"},
	{"Bring that money to me now. It isn't yours! I'm going to call my Mafia friends!"},
	{"Hahaha I'll send you my location, we can end this now..."},
	{"You're like a lost puppy! One of my men would like to show you his new gun! Come see us!"},
	{"Ever heard of trial and error? Come on over, i'll send you my location! We can 'CHAT'."},
	{"Knock knock! Who's there? Some BITCH who's killing my men! Here's my location! Meet me there!"},
	{"I hear your trying to take back that money... come see me. I got it all right here..."},
	{"Hey, If you stop attacking my workers, I'll give you the money, no problem! Come meet me!"},
	{"Hey, here's my location! Come over whenever you wanna talk! I got your money :L"},
	{"Don't play games with me. Either kill me, or go away. Here's my location, come get your $."},
	{"I hate pests like you. Visit me and we will solve this little money problem of yours."},
	{"You done? I figured you'd never find me, so here is my location! If your still mad about the money, We can talk."},
	{"Come on over! Your 'Deeds' are bad for buisness... Let's talk about them huh?"},
	{"Stealing your money back huh? Nice nice.... hey, you should come pay me a visit!"},
	{"I try to kill you, and THIS is how you repay me? Come see me, I'm sending you my location...."},
	{"I see your taking more then what's given... Come see me! Here is my location!"},
	{"I feel bad that you're doing extra work to get this money... come see me, I can pay you now!"},
	{"You're causing me alot of problems for me... Hey, come see me! I'll send you my location!"},
	{"Fuck you! If you wanna fight, come see me! Don't kill my men! Here's my real location."},
	{"Some people say I kill too much... Anyways... Here's my location! Come get your money. "},
	{"Eat shit you fucker! Stop stealing my stuff, come see me! We can fight face to face!"},
	{"I'm getting tired of you causing all these problems for me... Here is my location! Come and visit."},
	{"Come see me! You seemed to have gotten me in some trouble... We're going to talk about this."},
	{"I don't think you know how this works... You were supposed to die. Come see me, and we'll talk!"},
	{"Stop killing my men! Hey, come meet me at this place i know..."},
	{"Wan't more money? I know you could have killed me earlier but i'd like to meet up just ONE last time."},
	{"That was MY money you stole. Come meet me... Here is my location! (The truck symbol.)"},
	{"I hear you found my money... Meet me somewhere please? I wanna have a nice CHAT!"},
	{"What is your name? You stole my money! It's too bad the rest is hidden SUPER well. I'll find and kill you one day!"},
	{"THAT WAS MY FUCKING MONEY YOU THEIF!!! The mafia will find, and kill you!"},
	{"Was that you who stole my money? I need that back! Meet me at the regular meeting spot. (The truck symbol.)"},
	{"I need that money back! You were not supposed to find it! You're supposed to be DEAD!!!"},
	{"Why would you steal my money? I WILL FIND YOU, AND I WILL MAKE SURE YOU DIE!"},
	{"I've been tracking your phone location! I see you found my money... HAHAH I took the rest somewhere else!"},
	{"You stole from us... we will walk into your house and kill you. The Mafia don't fuck around."},
	{"Meet me at this location, I'm taking my money back, and i'm  also taking your life!"},
	{"Meet me somewhere... I'm the person you just stole from. You would like more money right? Come see me."},
	{"I hate texting, but for you, I will make an exeption. YOU WILL BRING ME MY MONEY BACK. Come meet me."},
	{"I'm going to make sure you never steal again! Come see me, NOW!"},
	{"Come see me! We have some more money we want to give you! L^:"},
	{"How often do you steal from us? Because I think this stops today. We will find you -Mafia"},
	{"Do you know what it's like to be murdered? You will soon... Don't worry."},
	{"I hope these words sink deep into your brain, YOU WILL be killed for stealing from us. -Mafia"},
	{"Come see me. And you better have every dollar you just STOLE from me."},
	{"I can't beleave you would steal from MY mafia. MY MAFIA!!! Come see me if your dumb enough."},
	{"Stealing from us is the last thing you will ever do. Come see me. We are all waiting for you."},
	{"I would like you to come see me. You're invited to come get some more money! L:<"},
	{"Have you met my workers? Yeaaa They're good with guns... Come see me! We can talk about how your day is going! Bitch."},
}
-- Pleading for life.
Chats4 = {
	{"C'mon bro! I thought we were cool!? I only took the money because I got family! and... and BILLS!"},
	{"You don't have the guts to shoot me! Your really going to kill me over some money???"},
	{"Do you really think i'm scared? I've been stealing money from chumps like you, MY WHOLE LIFE!"},
	{"Hahaha! Are you still mad that I stole your money? You should have just taken the $50k and left."},
	{"You REALLY wanted that money huh? Guess I stole from the wrong person >:L"},
	{"Long time no see! Here to kill me? Hahahah, good luck! I'll NEVER die!!!"},
	{"You fucked with the wrong Mafia! I'll see you in HELL you fuck!"},
	{"OK! KILL ME! My workers will find, and torture you! I hope you enjoyed the money, you won't have it for long..."},
	{"After you kill me, my workers are going to fucking murder you!"},
	{"Tell my wife... She was fat! And tell your mom she's sexy! HAHAHAAHA!"},
	{"Your going to kill someone for money? You're fucking stupid!"},
	{"You shouldn't have made it this far... STOP! Don't kill me! Then you won't get your money."},
	{"Let me live! I can get you your money! I just need a few more years to get it together!"},
	{"Fuck to you, and fuck to your face!? You'll never build an empire like mines!"},
	{"Why don't you FUCK OFF! Killing me won't get you your money!"},
	{"All this because you didn't get payed the full amount??? You're fucked..."},
	{"Ok, Kill me... you seriously have alot of time time on your hands..."},
	{"FINE, Kill me. You'll be dead within the hour! Mafia bosses do not die quietly!"},
	{"You're a fuckboy! I don't care if you kill me!"},
	{"The Mafia will find you if you kill me!"},
	{"Keep me alive, and maybe i'll tell the Mafia to stop chasing you!"},
	{"PLEASE! I'm sorry, keep the money, just don't kill me!"},
	{"If you kill me, someone will only replace me. And THEY will kill you."},
	{"We have Mafia members EVERYWHERE. They will murder you for killing me."},
	{"It's nice to see you again... Too bad you're gunna die now."},
	{"Are you ready to die now? It's nice seeing you again."},
	{"Sooo... You stole my money, and now you're going to kill me... Let's do this!"},
	{"You're not ready for this life. I'm suprised you made it this far... Either way... You'll be killed by the Mafia soon."},
	{"MY GANG WILL KILL YOU!"},
	{"I hope to see you in the next life. So I can try and discomfort you."},
	{"I don't think killing me will not solve your problems. The Mafia is still going to kill you."},
	{"Go ahead! Kill me! I dare you!"},
	{"You don't have the balls to kill a Mafia boss! Come get me!"},
	{"I keep my money moving! The mafia transports my money to nearby safe areas so I don't get robbed!"},
	{"Why would you hurt me? Now these Mafia people are going kill you. They are the ones watching me and my $."},
}

-- Mission Person 1 START.

PlaceChooser = {
	{"StartPlace1"},
	{"StartPlace2"},
	{"StartPlace3"},
	{"StartPlace4"},
	{"StartPlace5"},
	{"StartPlace6"},
	{"StartPlace7"},
	{"StartPlace8"},

	
}

PlaceChooser2 = {
	{"StartPlace1point1"},
	{"StartPlace2point1"},
	{"StartPlace3point1"},
	{"StartPlace4point1"},
	{"StartPlace5point1"},
	{"StartPlace6point1"},
	{"StartPlace7point1"},
	{"StartPlace8point1"},

	
}
function MissionStart(attacker)
	if (attacker ==  getLocalPlayer ()) then
		if not (that) then
			that = removeEventHandler ( "onClientPedDamage", Person1, MissionStart)
		end
		if not(Something) then
			Something = addEventHandler ( "onClientPlayerWasted", attacker, DiedRestart2 )
		end
		destroyElement(PedBlip1)
		setTimer(function()
				setPedAnimation( Person1, "ped", "DUCK_cower")
		end, 5000,1)
		ListPlease  = math.random(#PlaceChooser2)
		triggerServerEvent ( PlaceChooser2[ListPlease][1], resourceRoot, attacker )
		setTimer(function()
			local ChangeItUpBro = math.random(#Chats)
			outputChatBox("Mafia Person: "..Chats[ChangeItUpBro][1],200,10,100)
			outputChatBox("Visit the Truck icon to continue this mission!",222,0,0)
		end, 1000,1)
	end
end

function StartPart2(thePlayer)
	if (thePlayer ==  getLocalPlayer ()) then
		removeEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		destroyElement(MoneyBlip1)
		destroyElement(MoneyBag1)
		ListPlease  = math.random(#PlaceChooser)
		triggerServerEvent ( PlaceChooser[ListPlease][1], resourceRoot, thePlayer )
		triggerServerEvent ( "PayNumber1", resourceRoot, thePlayer )
		setTimer(function()
				outputChatBox("All of the money is not here! More then half is missing!",222,0,0)
		end, 3000,1)
		
		setTimer(function()
				local ChangeItUpMAN = math.random(#Chats2)
				outputChatBox("SMS: "..Chats2[ChangeItUpMAN][1],200,10,100)
				outputChatBox("Visit the next truck icon to seek revenge, and to take the rest of your money.",222,0,0)
		end, 10000,1)
	end
end

function StartPart3(thePlayer)
	if (thePlayer ==  getLocalPlayer ()) then
		removeEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		destroyElement(MoneyBlip2)
		destroyElement(MoneyBag2)
		ListPlease  = math.random(#PlaceChooser)
		triggerServerEvent ( PlaceChooser[ListPlease][1], resourceRoot, thePlayer )
		triggerServerEvent ( "PayNumber2", resourceRoot, thePlayer )
		setTimer(function()
				outputChatBox("The Police are looking for you!",0,0,222)
				triggerServerEvent ( "CreatePoliceNOW", resourceRoot, thePlayer )
		end, 20000,1)
		setTimer(function()
				outputChatBox("The Police are nearby! You are wanted, RUN!",0,0,222)
				triggerServerEvent ( "CreatePoliceNOW", resourceRoot, thePlayer )
		end, 50000,1)
		setTimer(function()
				outputChatBox("The Police are still chasing you! Stop moving, and they will catch up!",0,0,222)
				triggerServerEvent ( "CreatePoliceNOW", resourceRoot, thePlayer )
				setTimer(function()
						triggerServerEvent ( "CreatePoliceNOW", resourceRoot, thePlayer )
				end, 10000,1)
		end, 100000,1)
	end
end

function StartPart4(thePlayer)
	if (thePlayer ==  getLocalPlayer ()) then
		removeEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		destroyElement(MoneyBag3)
		destroyElement(MoneyBlip3)
		triggerServerEvent ( "PayNumber3", resourceRoot, thePlayer )
		local ChangeItUpOK = math.random(#Chats4)
		outputChatBox("Mafia person: "..Chats4[ChangeItUpOK][1],200,10,100) -- Line 420 bro! Smoke up!!! like, now!!! Too young? Go get a snack!
		removeEventHandler("onClientPedWasted", Person1, DiedRestart)
		addEventHandler("onClientPedWasted", Person1, RevengeTaken)
		addEventHandler("onClientPedDamage", Person1, RevengeBegin)
		where, they, at = getElementPosition ( thePlayer )
		NewPos = setElementPosition ( Person1, where-5, they, at+1, true )
		KillBlip = createBlipAttachedTo ( Person1, 23, 2, 0, 0, 0, 255, 0, 250)
		outputChatBox("Kill the Mafia Leader/Friend to finnish this mission!",222,0,0)
		
		setTimer(function()
				setPedAnimation( Person1, "ped", "DUCK_cower")
		end, 10000,1)
	end
end

function RevengeBegin(attacker)
	if (attacker ==  getLocalPlayer ()) then
		removeEventHandler("onClientPedDamage", Person1, RevengeBegin)
		local ChangeItUpOKman = math.random(#Chats4)
		outputChatBox("Mafia Person: "..Chats4[ChangeItUpOKman][1],200,10,100)
		
	end
end

function RevengeTaken(killer)
	if (killer ==  getLocalPlayer ()) then
		removeEventHandler("onClientPedWasted", Person1, RevengeTaken)
		destroyElement(KillBlip)
		triggerServerEvent ( "PayNumber2", resourceRoot, killer )
		outputChatBox("Mission Complete! +$100,000!",0,255,0)
		setTimer(function()
				CreateStartingPeople()
		end, 10000,1)
	end
end

-- Set where the money bags appear per place. Example: If you change StartPlace1MONEYBAG Do the exact same with StartPlace1MONEYBAGpoint1 and the rest.
function StartPlace1MONEYBAG(thePlayer)
	if thePlayer == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( -535.49420166016,-504.76110839844,25.517845153809, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( -535.49420166016,-504.76110839844,25.517845153809, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
		MoneyBag1 = createPickup ( -535.49420166016,-504.76110839844,25.517845153809, 3, 1550 )
		MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
		addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney1", true )
addEventHandler( "onCreateMoney1", resourceRoot, StartPlace1MONEYBAG )

function StartPlace2MONEYBAG(thePlayer)
	if thePlayer == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( -1016.1353149414,-691.44787597656,32.007812, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( -1016.1353149414,-691.44787597656,32.007812, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
		MoneyBag1 = createPickup ( -1016.1353149414,-691.44787597656,32.007812, 3, 1550 )
		MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
		addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney2", true )
addEventHandler( "onCreateMoney2", resourceRoot, StartPlace2MONEYBAG )

function StartPlace3MONEYBAG(thePlayer)
	if thePlayer == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( 167.38252258301,-173.36283874512,9.7786149978638, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( 167.38252258301,-173.36283874512,9.7786149978638, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( 167.38252258301,-173.36283874512,9.7786149978638, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney3", true )
addEventHandler( "onCreateMoney3", resourceRoot, StartPlace3MONEYBAG )

function StartPlace4MONEYBAG(thePlayer)
	if thePlayer == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( 854.35437011719,-604.55798339844,18.421875, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and(MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( 854.35437011719,-604.55798339844,18.421875, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( 854.35437011719,-604.55798339844,18.421875, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney4", true )
addEventHandler( "onCreateMoney4", resourceRoot, StartPlace4MONEYBAG )

function StartPlace5MONEYBAG(thePlayer)
	if thePlayer == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( 1245.1488037109,237.1619720459,28.072776794434, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( 1245.1488037109,237.1619720459,28.072776794434, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( 1245.1488037109,237.1619720459,28.072776794434, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney5", true )
addEventHandler( "onCreateMoney5", resourceRoot, StartPlace5MONEYBAG )

function StartPlace6MONEYBAG(thePlayer)
	if thePlayer == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( -151.31651306152,1069.83984375,19.749988555908, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( -151.31651306152,1069.83984375,19.749988555908, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( -151.31651306152,1069.83984375,19.749988555908, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney6", true )
addEventHandler( "onCreateMoney6", resourceRoot, StartPlace6MONEYBAG )

function StartPlace7MONEYBAG(thePlayer)
	if thePlayer == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( -489.3356628418,613.41320800781,1.78125, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( -489.3356628418,613.41320800781,1.78125, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( -489.3356628418,613.41320800781,1.78125, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney7", true )
addEventHandler( "onCreateMoney7", resourceRoot, StartPlace7MONEYBAG )

function StartPlace8MONEYBAG(thePlayer)
	if thePlayer == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( -487.5192565918,-189.05467224121,78.269943237305, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( -487.5192565918,-189.05467224121,78.269943237305, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( -487.5192565918,-189.05467224121,78.269943237305, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney8", true )
addEventHandler( "onCreateMoney8", resourceRoot, StartPlace8MONEYBAG )

function StartPlace1MONEYBAGpoint1(attacker)
	if attacker == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( -535.49420166016,-504.76110839844,25.517845153809, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( -535.49420166016,-504.76110839844,25.517845153809, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( -535.49420166016,-504.76110839844,25.517845153809, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney1point1", true )
addEventHandler( "onCreateMoney1point1", resourceRoot, StartPlace1MONEYBAGpoint1 )

function StartPlace2MONEYBAGpoint1(attacker)
	if attacker == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( -1016.1353149414,-691.44787597656,32.007812, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( -1016.1353149414,-691.44787597656,32.007812, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( -1016.1353149414,-691.44787597656,32.007812, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney2point1", true )
addEventHandler( "onCreateMoney2point1", resourceRoot, StartPlace2MONEYBAGpoint1 )

function StartPlace3MONEYBAGpoint1(attacker)
	if attacker == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( 167.38252258301,-173.36283874512,9.7786149978638, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( 167.38252258301,-173.36283874512,9.7786149978638, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( 167.38252258301,-173.36283874512,9.7786149978638, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney3point1", true )
addEventHandler( "onCreateMoney3point1", resourceRoot, StartPlace3MONEYBAGpoint1 )

function StartPlace4MONEYBAGpoint1(attacker)
	if attacker == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( 854.35437011719,-604.55798339844,18.421875, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( 854.35437011719,-604.55798339844,18.421875, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( 854.35437011719,-604.55798339844,18.421875, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney4point1", true )
addEventHandler( "onCreateMoney4point1", resourceRoot, StartPlace4MONEYBAGpoint1 )

function StartPlace5MONEYBAGpoint1(attacker)
	if attacker == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( 1245.1488037109,237.1619720459,28.072776794434, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( 1245.1488037109,237.1619720459,28.072776794434, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( 1245.1488037109,237.1619720459,28.072776794434, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney5point1", true )
addEventHandler( "onCreateMoney5point1", resourceRoot, StartPlace5MONEYBAGpoint1 )

function StartPlace6MONEYBAGpoint1(attacker)
	if attacker == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( -151.31651306152,1069.83984375,19.749988555908, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( -151.31651306152,1069.83984375,19.749988555908, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( -151.31651306152,1069.83984375,19.749988555908, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney6point1", true )
addEventHandler( "onCreateMoney6point1", resourceRoot, StartPlace6MONEYBAGpoint1 )

function StartPlace7MONEYBAGpoint1(attacker)
	if attacker == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( -489.3356628418,613.41320800781,1.78125, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( -489.3356628418,613.41320800781,1.78125, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( -489.3356628418,613.41320800781,1.78125, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney7point1", true )
addEventHandler( "onCreateMoney7point1", resourceRoot, StartPlace7MONEYBAGpoint1 )

function StartPlace8MONEYBAGpoint1(attacker)
	if attacker == getLocalPlayer() then
		if (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag2 = createPickup ( -487.5192565918,-189.05467224121,78.269943237305, 3, 1550 )
			MoneyBlip2 = createBlipAttachedTo ( MoneyBag2, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag2, StartPart3)
		end
		if (MoneyBag1) and (MoneyBag2) and not (MoneyBag3) then
			MoneyBag3 = createPickup ( -487.5192565918,-189.05467224121,78.269943237305, 3, 1550 )
			MoneyBlip3 = createBlipAttachedTo ( MoneyBag3, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag3, StartPart4)
		end
		if not (MoneyBag1) and not (MoneyBag2) and not (MoneyBag3) then
			MoneyBag1 = createPickup ( -487.5192565918,-189.05467224121,78.269943237305, 3, 1550 )
			MoneyBlip1 = createBlipAttachedTo ( MoneyBag1, 51, 2, 0, 0, 0, 255, 5, 99999 )
			addEventHandler("onClientPickupHit", MoneyBag1, StartPart2)
		end
	end
end
addEvent( "onCreateMoney8point1", true )
addEventHandler( "onCreateMoney8point1", resourceRoot, StartPlace8MONEYBAGpoint1 )

function CreateStartingPeople()
	if not (Person1) then
		Person1 = createPed ( math.random(0,312), -478.63357543945,292.66217041016,2.4296875, 180) --This is the ped you must attack to start the mission.			PedBlip1 = createBlipAttachedTo ( Person1, 61, 2, 0, 0, 0, 255, 0, 250)
		PedBlip1 = createBlipAttachedTo ( Person1, 61, 2, 0, 0, 0, 255, 0, 250)
		addEventHandler("onClientPedWasted", Person1, DiedRestart)
		addEventHandler ( "onClientPedDamage", Person1, MissionStart)
		setElementHealth (Person1, 200 )
	else
		if (KillBlip) then
			destroyElement(KillBlip)
		end
		setElementPosition ( Person1, -478.63357543945,292.66217041016,2.4296875, true )
		setElementHealth (Person1, 200 )
		PedBlip1 = createBlipAttachedTo ( Person1, 61, 2, 0, 0, 0, 255, 0, 250)
		addEventHandler("onClientPedWasted", Person1, DiedRestart)
		addEventHandler ( "onClientPedDamage", Person1, MissionStart)
		
	end
end
addEventHandler( "onClientResourceStart", resourceRoot, CreateStartingPeople)
addEvent( "RestartITall", true )
addEventHandler( "RestartITall", resourceRoot, CreateStartingPeople )

--Mission Person 1 END.