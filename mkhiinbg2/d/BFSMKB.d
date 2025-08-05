BEGIN BFSMKB

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
~I-I don't mean to dredge up painful memories, but I heard you were imprisoned. Locked in a cage and kept as an exhibit. I'm so sorry.~
DO ~SetGlobal("BFSMkAerie1","GLOBAL",1)~
== BFSMKB ~Heard you endured the same. That true?~
== BAERIE ~When I was younger, yes, b-back when I still had my wings. People had never seen an Avariel before. That made me a curiosity.~
== BFSMKB ~...and not a person. *sigh* Too many fools around. Always gawking at things that are other.~
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
~I have slain my fair share of goblins, I never thought I'd count one among my companions.~
DO ~SetGlobal("BFSMKAnomen1","GLOBAL",1)~
== BFSMKB ~Some goblins need slaying. Too much danger to everyone otherwise. Even themselves.~
== BANOMEN ~A most unusual outlook for someone of your species… and, I admit, not what I anticipated.~
== BFSMKB ~My kin have given me plenty of trouble. Same as your kind.~
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
~Even a goblin should find solace within the forest's embrace. Yet you seem ill at ease when walking beneath its boughs. Why is that?~
DO ~SetGlobal("BFSMkCernd1","GLOBAL",1)~
== BFSMKB ~Simple. Forests remind me of home. Never liked home.~
== BCERND ~I understand. I, too, have turned away from houses that didn't feel like home.~
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
== BHAERDA ~A goblin, removed from her own kind, shunned by the common folk. It makes for quite the tale.~
== BFSMKB ~Not your story to share. You haven't lived it.~ 
EXIT

// Imoen 1
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkImoen1","GLOBAL",0)~ THEN IMOEN2J BFSMkImoen1
~Y'know, ever since Spellhold, folks treat me like I'm fragile. Like I'm gonna break without warning. But you don't do that. How come?~
DO ~SetGlobal("BFSMkImoen1","GLOBAL",1)~
== BFSMKB ~You're not fragile, you just got hurt. Big difference.~
EXIT

// Jaheira 1 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(CITY)
Global("BFSMkJaheira1","GLOBAL",0)~ THEN BJAHEIR BFSMkJaheira1
~Cities are not kind to goblinkind. You must know you will find no belonging here, M'Khiin.~
DO ~SetGlobal("BFSMkJaheira1","GLOBAL",1)~
== BFSMKB ~Didn't find it with my tribe either. World's full of places I don't fit in.~
== BJAHEIR ~Perhaps not...but tread carefully. We've enemies enough without drawing undue attention.~
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
~Goblin. Step closer and listen intently because do I have a deal for you!~
DO ~SetGlobal("BFSMkJan1","GLOBAL",1)~
== BFSMKB ~Have a name. Might try to use it.~
== BJAN ~There's no need for gratitude. Let no one ever claim Jan Jansen wasn't as much a philanthropist *cough* as a shrewd inventor and businessman.~
== BFSMKB ~Hearing lots of words. Nothing of substance though.~
== BJAN ~Patience. The sales pitch is as pivotal as the end product. But, to curb your curiosity, let me introduce you to...~
== BJAN ~The Robe of Goblin Disguise. Too often have your kind been shunned within city limits. Scorned and reviled. No longer. Three goblins can fit inside this comfortable...~ 
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
== BKELDOR ~The Order is sent to deal with goblin raids on occasion. Most skirmishes end up being bloodier than I would prefer. Unfortunately, diplomacy has never been an option.~
== BFSMKB ~Wouldn't be. Goblins don't want to listen. Hitting people is more fun.~
== BFSMKB ~Doesn't answer my question though. You don't mind me being here. Why?~
== BKELDOR ~Because I believe everyone is capable of kindness. Anyone can *choose* to be good regardless of their origin. Goblins are no exception.~
== BFSMKB IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN ~You really think we're capable of that?~
== BKELDOR IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN ~You have already proven it. And when there's one setting an example, there will be others who follow.~ 
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
== BFSMKB ~I left my tribe to get away from all that.~ 
== BVALYGA ~Thus why I hold no concerns over your presence.~ 
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
== BVICONI ~We may both be outsiders, goblin, but our reasons for leaving are nothing alike.~
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
== BFSMKB ~Could poison you too if need be.~
== BYOSHIM ~There's no need for threats. I understand your point quite clearly.~
== BFSMKB ~Good.~
EXIT

// Aerie 2
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkAerie2","GLOBAL",0)~ THEN BAERIE BFSMkAerie2
~Your magic feels different from the spells that I cast. Wilder somehow, less...restrained.~
DO ~SetGlobal("BFSMkAerie2","GLOBAL",1)~
== BFSMKB ~Nature doesn't like cages. Neither do spirits. My magic draws from them, not from books or rules.~
== BAERIE ~I-I envy that kind of freedom.~
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

// Imoen 2
CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkImoen2","GLOBAL",0)~ THEN BFSMKB BFSMkImoen2
~People don't change unless they've a mind to.~
DO ~SetGlobal("BFSMkImoen2","GLOBAL",1)~
== IMOEN2J ~Heh. Sounds like you're talking to yourself there, M'Khiin.~
== BFSMKB ~I'm talking to you. About you being a Bhaalspawn. It won't change who you are, not unless you let it.~
== BFSMKB ~So don't let it!~
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
~Your tribe turned on you?~
DO ~SetGlobal("BFSMkJaheira2","GLOBAL",1)~
== BJAHEIR ~The Harpers are not my tribe. They are an organisation that I number among. And one that, at present, sees fit to question my choices.~
== BFSMKB ~Hurts, doesn't it? When your own look at you like you're a stranger.~
== BJAHEIR ~Is there some point to you stating the obvious?~
== BFSMKB ~It doesn't mean you're wrong.~
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
== BFSMKB ~Sure. Been to Avernus once. Too warm though. Didn't like it.~
== BHAERDA ~Ah! The hells holds too many laws and regulations. It's not a place suited to my ilk.~
== BFSMKB ~Not suited to mine either.~
EXIT

// Anomen 2, Chaotic Neutal
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
== BFSMKB ~You used to be better. Don't like what you've become.~  
== BANOMEN ~Is there something you want to say? Speak clearly!~  
== BFSMKB ~Nothing you'd consider worth hearing.~  
== BANOMEN ~At least we're clear on that point.~
EXIT  

// Cernd 2
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
== BCERND ~Perhaps we should forage together while we're travelling? Exchange a few recipes?~ 
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
~Freedom's wasted on you.~
DO ~SetGlobal("BFSMkDorn1","GLOBAL",1)~
== BDORN ~Says one who walks through life with nothing to call her own.~
== BFSMKB ~Don't think you're better. What's left of you when your patron takes back your powers?~
== BDORN ~Careful, goblin. My patience for your prattle wears ever thinner.~ 
== BFSMKB ~When your chains start rattling again, don't say I didn't warn you.~ 
EXIT

// Hexxat
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMkHexxat1","GLOBAL",0)~ THEN BHEXXAT BFSMkHexxat1
~You shy from me, little goblin. I'd have thought one who speaks with the dead wouldn't flinch at what I am.~
DO ~SetGlobal("BFSMkHexxat1","GLOBAL",1)~
== BFSMKB ~Not the same. Spirits - ghosts - I can talk to. There's nothing natural about what you are. You linger like a sickness seeped deep, rotting healthy flesh.~ 
== BFSMKB ~I'm not interested in anything you have to say.~
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
== BNEERA ~When I asked how I looked, you could've answered 'great' or 'amazing'. But nooo you go with 'like a half-elf.'~
== BFSMKB ~You are a half-elf. Seems honest enough.~
== BNEERA ~That's not the point! Sometimes a girl wants to gussy up. You're on sentient mirror duty, remember?~
== BFSMKB ~Fine. Your hair looks stupid.~
== BNEERA ~It does?! Let me che -- no, no! It's fine!~
== BFSMKB ~You asked.~ 
== BNEERA ~And I'm regretting it deeply. Conversation over!~
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
~Seen goblins ride wargs before, never seen any on a bear.~
DO ~SetGlobal("BFSMkWilson","GLOBAL",1)~
== BWILSON ~*snort* *snort* *shuffle*~ 
== BFSMKB ~Wouldn't mind trying it when my legs start aching though.~
EXIT
