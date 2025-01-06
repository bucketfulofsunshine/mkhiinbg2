BEGIN BFSMKB

/* Number of Banters per NPCs
Aerie - 1
Anomen - 3
Cernd - 3
Edwin - 2
Haer'Dalis - 3
Imoen - 1
Jaheira - 2
Jan - 1
Keldorn - 1
Korgan - 1
Mazzy - 1
Minsc - 1
Nalia - 1
Valygar - 1
Viconia - 1
Yoshimo - 2
Dorn - 1
Hexxat - 1
Neera - 1
Rasaad - 1 
Wilson - 1 */ 

/* Base BG2 NPCs */ 
// Aerie 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkAerie1","GLOBAL",0)~ THEN BAERIE BFSMkAerie1
~I don't mean to bring up anything painful from your past. But I have heard talk that you were imprisoned. Locked in a cage and kept as an exhibit. I - I am so sorry.~
DO ~SetGlobal("BFSMkAerie1","GLOBAL",1)~
== BFSMKB ~Heard you went through the same. That true?~
== BAERIE ~When I was younger, yes, back when I still had my wings. People had never seen an Avariel before. That made me a curiosity.~
== BFSMKB ~...and not a person.~
== BFSMKB ~Too many fools around. Always gawking at things that are different.~
== BFSMKB ~You're free now though.~
== BAERIE ~Yes, I am. We both are. And we'll make the world better for others, right?~
== BFSMKB IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN ~Guess so.~ 
== BFSMKB IF ~!Alignment("BFSMK",NEUTRAL_GOOD)~ THEN ~Don't see why. There's always going to be trouble.~
EXIT

// Anomen 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkAnomen1","GLOBAL",0)~ THEN BANOMEN BFSMkAnomen1
~I've slain my fair share of goblins. I never envisioned I would end up traveling with one.~
DO ~SetGlobal("BFSMKAnomen1","GLOBAL",1)~
== BFSMKB ~Some goblins need slaying. Too much danger to everyone otherwise. Even themselves.~
== BANOMEN ~You're being remarkably level-headed about this. Another quality I don't usually associate with your kind.~ 
== BFSMKB ~Why wouldn't I be? Goblins have given me plenty of trouble. Same as you.~
== BFSMKB IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN ~Wouldn't want them killed needlessly. But most are happy to hit first.~
== BANOMEN ~You are a strange one, M'Khiin Grubdoubler.~
== BFSMKB ~Not the first time I've heard that. Won't be the last either.~
EXIT


// Cernd
CHAIN 
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkCernd1","GLOBAL",0)~ THEN BCERND BFSMkCernd1
~Even a goblin should find solace within the forest's embrace. Yet you seem ill at ease. Why is that?~
DO ~SetGlobal("BFSMkCernd1","GLOBAL",1)~
== BFSMKB ~Simple. Forests remind me of home. Never liked home.~
== BCERND ~I understand more than you may realize. I, too, have turned from houses that didn't feel like home. But why not choose to remain and nurture yours? Nature rewards well those serve her well.~
== BFSMKB ~Didn't want to. Didn't have the power to.~
== BFSMKB IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN ~Might be different now. Time will tell.~
EXIT

// Edwin
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkEdwin1","GLOBAL",0)~ THEN BEDWIN BFSMkEdwin1
~That I, the great Edwin Odesseiron, should be reduced to this! Travelling with a goblin of all things! (As though I haven't lowered my standards enough for these simians.)~
DO ~SetGlobal("BFSMkEdwin1","GLOBAL",1)~
== BFSMKB ~Don't like travelling with you either, ant.~
== BEDWIN ~Ant? What manner of comparison is this? (I don't expect someone of her middling intellect to offer a truly intelligent insult but surely…)~ 
== BFSMKB ~You wear red. You're an irritant. Seems fitting to me.~ 
EXIT

// Haer'Dalis 1
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkHaerDalis2","GLOBAL",0)~ THEN BHAERDA BFSMkHaerDalis2
~What draws you to our flock, pigeon? You seem wholly out of place.~
DO ~SetGlobal("BFSMkHaerDalis2","GLOBAL",1)~
== BFSMKB ~Not a pigeon. If you don't like me here, then *you* can leave.~
== BHAERDA ~You misunderstand. I delight in your presence.~
== BHAERDA ~A goblin, removed from her own kind, shunned by the common folk.~
== BHAERDA ~It makes for quite the tale.~
== BFSMKB ~Not your story to share. You haven't lived it.~ 
== BHAERDA ~I think you'll find my skills well-suited to the task. I will listen - and write - if you will tell.~ 
== BFSMKB ~Don't have the words to spare really.~
EXIT

// Imoen
CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkImoen1","GLOBAL",0)~ THEN BFSMKB BFSMkImoen1
~People don't change unless they want to. For better or worse.~
DO ~SetGlobal("BFSMkImoen1","GLOBAL",1)~
== IMOEN2J ~Are you talking to yourself there, M'Khiin?~
== BFSMKB ~Talking to you. About being a Bhaalspawn. It won't change you. Not unless you want it to.~
== BFSMKB ~Needed to be said, it's been eating away at you.~
== IMOEN2J ~It has been, hasn't I? It's just ... learning your dad's the God of Murder isn't the best of news. I can't imagine how <CHARNAME>'s dealt with the knowledge all this time.~
== BFSMKB ~Least there's two of you. Makes the burden lighter. You can carry it together.~
EXIT

// Jaheira 
CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkJaheira1","GLOBAL",0)~ THEN BFSMKB BFSMkJaheira1
~Hard path you chose. Fighting for the balance.~
DO ~SetGlobal("BFSMkJaheira1","GLOBAL",1)~
== BJAHEIR ~All worthwhile fights are - but I am strong and determined to succeed. Wars have been won with less.~
== BFSMKB ~But your fight can't be won. Not in my lifetime. Not even in yours. Maybe never.~
== BJAHEIR ~You don't strike me as someone who shies away from hardship. You left your tribe as difficult as that was. Do you regret it?~
== BFSMKB ~No. Never. Had to be done.~
== BJAHEIR ~Then you understand.~ 
EXIT

// Jan Jansen
// three goblins in a trenchcoat
CHAIN 
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkJan1","GLOBAL",0)~ THEN BJAN BFSMkJan1
~Goblin. Step closer and listen closely because do I have a deal for you!~
DO ~SetGlobal("BFSMkJan1","GLOBAL",1)~
== BFSMKB ~Have a name. Might try to use it.~
== BJAN ~There's no need for gratitude. Let no one ever claim Jan Jansen wasn't as much a philanthropist *cough* as a shrewd inventor and businessman.~
== BFSMKB ~Hearing lots of words. Nothing of substance though.~
== BJAN ~Patience. The sales pitch is as pivotal as the end product. But, to curb your curiosity, let me introduce you to...~
== BJAN ~The Robe of Goblin Disguise. Too often have your kind been shunned within city limits - scorned and reviled. No longer. Three goblins can fit inside this comfortable...~ 
== BFSMKB ~...~
== BJAN ~Where are you running off to? Get back here! I haven't even mentioned the deep pockets feature.~ 
EXIT

// Keldorn 
CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkKeldorn1","GLOBAL",0)~ THEN BFSMKB BFSMkKeldorn1
~Your armor is shiny. Loud. Looks heavy. But you haven't tried to kill me yet. Most who look like you do.~
DO ~SetGlobal("BFSMkKeldorn1","GLOBAL",1)~
== BKELDOR ~The Order are sent to deal with goblin raids on occasion. Most end up being bloodier than I would prefer. Diplomacy has not been an option.~
== BFSMKB ~Wouldn't be. Goblins don't want to listen. Hitting people is more fun.~
== BFSMKB ~Doesn't answer my question though. You don't mind me being here. Why?~
== BKELDOR ~Because I believe everyone is capable of kindness. Anyone can choose to be good regardless of their origin. Goblins are no exception.~
== BFSMKB IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN ~You think we're really capable of that?~
== BKELDOR IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN ~You have already proven it. And where there's one there will be others.~ 
EXIT

// Korgan
CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkKorgan1","GLOBAL",0)~ THEN BFSMKB BFSMkKorgan1
~You remind me of my tribe. Small. Brutal. Unpredictable.~
DO ~SetGlobal("O#BranKorgan1","GLOBAL",1)~
== BKORGAN ~Ha! Now I'll be taking that as a compliment.~
== BFSMKB ~Wasn't meant to be.~
EXIT

// Mazzy 
CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkMazzy1","GLOBAL",0)~ THEN BFSMKB BFSMkMazzy1
~You're tiny but mighty. I like that.~
DO ~SetGlobal("BFSMkMazzy1","GLOBAL",1)~
== BMAZZY ~Well I've always believed one's size shouldn't determine one's valour.~
== BMAZZY ~Those of smaller stature are every bit the equal of their larger counterparts.~ 
== BFSMKB ~Hard to think about when too-talls tower over us.~
== BMAZZY ~Their viewpoint - or lack of one - does not determine our worth.~
== BFSMKB ~Don't know. Seems like they'd see more from way up there.~
EXIT

// Minsc
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkMinsc1","GLOBAL",0)~ THEN BMINSC BFSMkMinsc1
~M'Khiin, Boo says you have a giant heart. How does it fit into your tiny body?~
DO ~SetGlobal("BFSMkMinsc1","GLOBAL",1)~
== BFSMKB ~It's always fit. Are you sure you heard him right?~
== BMINSC ~He spoke clearly. Boo is never wrong about these things.~
== BFSMKB ~My heart's normal sized. Least as far as I know.~ 
== BMINSC ~Then we should ask him. …Oh! Looks like he has already fallen asleep. And at this hour...~
== BFSMKB ~Inside your pack?~
== BMINSC ~It's safer while we travel. Even giant miniature space hamsters require their sleep.~
== BFSMKB ~*sigh* Let me stash some nuts inside. Might be he's hungry when he wakes up.~
EXIT

// Nalia 
CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkNalia1","GLOBAL",0)~ THEN BFSMKB BFSMkNalia1
~You say you help others. But you only do so if they fit your rules. That's no real kindness.~
DO ~SetGlobal("BFSMkNalia1","GLOBAL",1)~
== BNALIA ~I'm doing the best I can. What are *you* doing to help those less fortunate than yourself?~
== BFSMKB ~Not many who are less fortunate than a goblin. Hard to define anyway.~ 
== BFSMKB ~I can forage for food. Plenty of too-talls can't. Luck's fickle.~
== BNALIA ~Yes. Some struggle more than others and the situation can change. But what is your point? That I shouldn't assist anyone? I refuse to be that heartless!~
== BFSMKB ~Simple. If someone asks for help then you help. Not only because they've got less than you.~
== BNALIA ~And if they don't ask?~
== BFSMKB ~Trust them to choose for themselves.~
EXIT 

// Valygar 1 
CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkValygar1","GLOBAL",0)~ THEN BFSMKB BFSMkValygar1
~You don't mind me being here?~ 
DO ~SetGlobal("BFSMkValygar1","GLOBAL",1)~
== BVALYGA ~Is there a reason why I should?~
== BFSMKB ~Most would have reason. I'm a goblin.~ 
== BVALYGA ~You are.~
== BVALYGA ~And you've shown no desire to loot villages or burn down homesteads.~ 
== BFSMKB ~Left my tribe to get away from all that.~ 
== BVALYGA ~Which is why I hold no concerns.~ 
EXIT

// Viconia 
CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkViconia2","GLOBAL",0)~ THEN BFSMKB BFSMkViconia2
~You don't trust easily.~ 
DO ~SetGlobal("BFSMkViconia2","GLOBAL",1)~
== BVICONI ~Why should I? In the Underdark trust is a death sentence, and friendship is a fool's indulgence.~ 
== BFSMKB ~Doesn't sound different from my old tribe. Except we had fewer spiders.~ 
== BVICONI ~Was it survival that drove you to abandon your tribe then?~ 
== BFSMKB ~No. Just wanted something better than that life.~ 
== BVICONI ~Then you have no right to judge me. Our reasons for leaving are nothing alike.~
EXIT

// Yoshimo 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkYoshimo1","GLOBAL",0)~ THEN BYOSHIM BFSMkYoshimo1
~You've a few curious ointments stashed inside your backpack. For what purpose?~
DO ~SetGlobal("BFSMkYoshimo1","GLOBAL",1)~
== BFSMKB ~You dug through my stuff?~
== BYOSHIM ~Of course. I'd be a poor thief if I didn't. Have no fear, I didn't take anything. I merely perused the contents.~ 
== BFSMKB ~Stay out of my bag, sticky-fingers.~
== BYOSHIM ~I have no intention of diving back in there. But, tell me, the ointments. What are they for?~
== BFSMKB ~To heal the burns you'll have if I catch you messing around again.~
== BYOSHIM ~Ah. Healing salves and the like. It explains the lack of obvious poison properties.~
== BFSMKB ~Could poison you too if need be. Plenty of berries that could do that.~
== BYOSHIM ~There's no need for threats. I understand your point quite clearly.~
== BFSMKB ~Good.~
EXIT

// Haer'Dalis 2
CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkHaerDalis2","GLOBAL",1)
Global("BFSMkHaerDalis3","GLOBAL",0)~ THEN BFSMKB BFSMkHaerDalis3
~Why a pigeon?~
DO ~SetGlobal("BFSMkHaerDalis3","GLOBAL",1)~
== BHAERDA ~Is it not obvious?~
== BFSMKB ~Not for me.~
== BHAERDA ~You are dirty. You are an outsider. You wander Athkatla's streets, unwished for, unwanted, fighting for your existence.~
== BFSMKB ~*sigh* Shouldn't have asked.~
== BHAERDA ~It may sound harsh, I grant, but I am something of an outsider myself. Wear the nickname as a badge of pride. You, my pigeon, are a survivor.~
EXIT

// Edwin 2 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkEdwin2","GLOBAL",0)~ THEN BEDWIN BFSMkEdwin2
~Goblin, I would have you attend to me. (Surely she can be of some assistance? No matter how miniscule. She is a female of her species.)~
DO ~SetGlobal("BFSMkEdwin2","GLOBAL",1)~
== BFSMKB ~Got yourself into this mess. Think you should get yourself out.~
EXIT

// Jaheira 2 
CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkJaheira2","GLOBAL",0)~ THEN BFSMKB BFSMkJaheira2
~You're fighting with your tribe?~
DO ~SetGlobal("BFSMkJaheira2","GLOBAL",1)~
== BJAHEIR ~The Harpers are not my tribe. They are an organisation that I number among, and we are currently at odds, but your comparison is flawed.~
== BFSMKB ~Not easy leaving your tribe. Or having them turn on you. Specially when their needs start being different from yours.~
== BJAHEIR ~Is there some point to you stating the obvious?~
== BFSMKB ~It doesn't mean you're wrong. You have to stand up for what you believe.~
== BJAHEIR ~A rather roundabout way of getting to things - especially for you - but I appreciate the thought.~
EXIT

// Cernd 2
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Cernd",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
!Alignment("BFSMK",NEUTRAL_GOOD)
Global("BFSMkCernd2","GLOBAL",0)~ THEN BCERND BFSMkCernd2  
~You carry much bitterness within you, M'Khiin. Does it not tire you?~  
DO ~SetGlobal("BFSMkCernd2","GLOBAL",1)~  
== BFSMKB ~No. It keeps me sharp. Keeps me alive. What's the use of peace when the world's always against you?~  
== BCERND ~Even the sharpest blade must be sheathed lest it lose its edge. Bitterness serves in the moment but corrodes the spirit over time.~  
== BFSMKB ~Not sure I should listen to someone who talks to trees all day.~  
== BCERND ~Trees listen better than most. You should try speaking to them sometime. You might find the silence offers clarity.~  
== BFSMKB ~Talking to ghosts already offers plenty of silence.~
EXIT 

/* fits well into her later banters with Haer'Dalis about Goblins beyond the Prime */ 
// Yoshimo 2
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkYoshimo2","GLOBAL",0)~ THEN BYOSHIM BFSMkYoshimo2
~Have I mentioned that your kin are known to me? In my homeland of Kara-Tur, we name them Bakemono.~
DO ~SetGlobal("BFSMkYoshimo2","GLOBAL",1)~
== BFSMKB ~Goblins are goblins. Doesn't matter where they scurry from.~
== BYOSHIM ~You have left your tribe behind. A rarity in these lands, I am told. Yet, among the Bakemono, such a path would not be unusual. To join another tribe or walk alone is often their way.~
== BFSMKB ~Ain't loyalty that binds goblins. Least these ones sound like they don't pretend otherwise.~
== BYOSHIM ~They thrive in adversity, much like you, using whatever means life provides.~ 
== BFSMKB ~Do you admire them?~
== BYOSHIM ~I respect those who persist in their cause despite overwhelming odds.~
== BFSMKB ~Figures you'd understand. Seen the way you wield those daggers - even if they're more like toothpicks.~
== BYOSHIM ~Hah! Even a dagger, wielded with intent, is capable of striking down mighty foes.~
EXIT

// Haer'Dalis 3 - if M'Khiin was part of the party in SoD
CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkSoDKnown","GLOBAL",1)
Global("BFSMkHaerDalis1","GLOBAL",0)~ THEN BFSMKB BFSMkHaerDalis1
~Where are you from?~
DO ~SetGlobal("BFSMkHaerDalis1","GLOBAL",1)~
== BHAERDA ~Need I choose one place? Sigil, certainly, but... everywhere. Home is wherever my feet take me. The multiverse holds many wonders and this sparrow plans to experience them all.~
== BHAERDA ~Have you, perchance,  plane-hopped yourself? You are a rather small creature, floundering in such a large pond.~
== BFSMKB ~Sure. Been to Avernus once. Too warm though. Didn't care for  it.~
== BHAERDA ~Ah! The hells holds too many laws and regulations. It's not a place suited to my ilk.~
== BFSMKB ~Not a place suited to mine either.~
EXIT

// Anomen 2, Lawful Good
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Anomen",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Global("BFSMkAnomen2","GLOBAL",0)~ THEN BANOMEN BFSMkAnomen2  
~You speak of survival often. Have you never considered aiming for something greater?~  
DO ~SetGlobal("BFSMkAnomen2","GLOBAL",1)~  
== BFSMKB ~Like what?~  
== BANOMEN ~A higher purpose. To live for something more than just yourself.~  
== BFSMKB IF ~!Alignment("BFSMK",NEUTRAL_GOOD)~ THEN ~Living's hard enough. Maybe if I find something worth the trouble...~  
== BFSMKB IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN ~...Might be I already have.~  
== BANOMEN IF ~Alignment("ANOMEN",LAWFUL_GOOD)~ THEN ~It is not an easy lesson to learn, but I am stronger for now knowing it. I have every faith you can too.~ 
EXIT  

// Anomen 3, Chaotic Neutal
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Anomen",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("BFSMkAnomen3","GLOBAL",0)~ THEN BANOMEN BFSMkAnomen3  
~Out of my way, goblin! I've no time for one such as you!~  
DO ~SetGlobal("BFSMkAnomen3","GLOBAL",1)~  
== BFSMKB ~You used to be kinder. Don't like what you've become.~  
== BANOMEN ~Is there something you want to say? Speak clearly!~  
== BFSMKB ~Nothing you'd consider worth hearing.~  
== BANOMEN ~At least we're clear on that point.~
EXIT  

// Cernd 3
CHAIN  
IF ~InParty("Cernd")  
See("Cernd")  
!StateCheck("Cernd",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Global("BFSMkCernd3","GLOBAL",0)~ THEN BFSMKB BFSMkCernd3  
~Lots of herbs in those pouches of yours. Anything good?~  
DO ~SetGlobal("BFSMkCernd3","GLOBAL",1)~  
== BCERND ~A few handfuls of Balsam for healing potions.~  
== BFSMKB ~Goblins use a vine, Yellow Musk Creeper. Works wonders - long as you don't mind the stink of death.~  
== BCERND ~A potent remedy. Not my first choice however.~  
== BFSMKB ~Not mine either. Not unless I'm running low on medicinal roots.~
== BCERND ~Perhaps we should forage together while we're travelling? Exchange a few recipes while we can?~ 
== BFSMKB ~I'd like that.~ 
EXIT  


/* EE NPCs */ 
// Dorn
CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMkDorn1","GLOBAL",0)~ THEN BFSMKB BFSMkDorn1
~You do not value your freedom.~
DO ~SetGlobal("BFSMkDorn1","GLOBAL",1)~
== BDORN ~That you cannot strive for more power - at whatever cost - proves your weakness.~
== BFSMKB ~Not *your* power. Not at the end of the day. Not if you sell your soul for it.~
== BFSMKB ~You displease your patron and they take their favour back. What do you have left?~
== BDORN ~If I valued your opinion, goblin, I would have asked for it!~ 
== BFSMKB ~Just saying. You will regret this. ...And I told you so.~ 
EXIT

// Hexxat
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMkHexxat1","GLOBAL",0)~ THEN BHEXXAT BFSMkHexxat1
~Given your profession, I thought you'd be more comfortable around me. Do you not talk to the undead?~
DO ~SetGlobal("BFSMkHexxat1","GLOBAL",1)~
== BFSMKB ~Not the same. Spirits - ghosts - I can talk to.~
== BFSMKB ~Nothing natural about what you became. You linger like a sickness seeped deep, rotting healthy flesh.~ 
== BHEXXAT ~But there's so much we could teach one another. About life, about death.~
== BFSMKB ~Not interested in anything you know.~
EXIT

// Neera
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMkNeera1","GLOBAL",0)~ THEN BNEERA BFSMkNeera1
~Ugh! M'Khiin, why must you be so...?~
DO ~SetGlobal("BFSMkNeera1","GLOBAL",1)~
== BFSMKB ~What did I do wrong now?~
== BNEERA ~When I asked you 'how I look', you were supposed to say 'nice'. Or give me some kind of advice. Not proclaim 'like a half-elf'.~
== BFSMKB ~But you are a half-elf. And you look like one.~
== BNEERA ~That's not the point! Sometimes a girl wants to gussy up. You're my sentient mirror - ensuring I look my best while protecting my fellow wild mages.~
== BFSMKB ~Don't see the point but, since you're asking, your hair looks stupid.~
== BNEERA ~It does?! Let me che -- no, no! It's fine!~
== BFSMKB ~You asked.~ 
== BNEERA ~Nevermind. I'm not talking to you anymore.~
EXIT

// Rasaad
CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkRasaad1","GLOBAL",0)~ THEN BFSMKB BFSMkRasaad1
~You talk about the light a lot. Sun Soul this, Selune that. What about shadows? Don't they matter?~ 
DO ~SetGlobal("BFSMkRasaad1","GLOBAL",1)~
== BRASAAD ~The light illuminates and guides, M'Khiin. Shadows are nothing but the absence of light.~ 
== BFSMKB ~Shadows hide you. Protect you. They can be a guide too.~ 
== BRASAAD ~A fair point. Shadows can offer refuge - but too much reliance on it can blind one to the truth.~ 
== BFSMKB ~And too much light hurts.~ 
== BFSMKB ~Plenty of my kind who burn in sunlight.~
== BRASAAD ~All things in moderation.~ 
EXIT


// Wilson
// Not saying she has a favourite, but she definitely has a favourite
CHAIN
IF ~InParty("WILSON")
See("WILSON")
!StateCheck("WILSON",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkWilson1","GLOBAL",0)~ THEN BFSMKB BFSMkWilson1
~Saw some goblins ride wargs into battle. Haven't seen any riding a bear.~ 
DO ~SetGlobal("BFSMkWilson","GLOBAL",1)~
== BFSMKB ~Wouldn't mind it when my legs start aching. Keeping up with the group can be tiring.~
== BWILSON ~*snort* *snort* *shuffle*~ 
== BFSMKB ~Who's a good bear? Who's a good bear?~
== BWILSON ~*nudges*~
== BFSMKB ~Brr! Cold nose!~
EXIT
