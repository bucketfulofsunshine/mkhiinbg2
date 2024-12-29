/* If I can't create suitable new area art, reuse AR0201 the underground city for the new goblin hideout */ 

/* Obligatory Celvan Limerick */ 
CHAIN IF WEIGHT #-1 
~InParty("BFSMK")
See("BFSMK")
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMKCelvan","AR0300",0)~ THEN CELVAN BFS.Mk2Celv
@363 /* A goblin once snuck from her home,
Preferring to strike out on her own,
But with no place to stay,
As an unwanted stray,
She was forced to continue to roam.  */
DO ~SetGlobal("BFSMKCelvan","AR0300",1)~
== BFSMKJ @364 /* How'd you know that? */
END CELVAN 1

BEGIN BFSMKJ

// Gobbos Dead
IF ~Global("BFSMkDeadGobbos","GLOBAL",1)~ THEN BEGIN BFSMk2.JoinQuestDone
SAY @365 /* Dead? Good. Should give the others a few more days. */
= @366 /* Not that I care about them. Not that I should. Caring's never done me any good. */ 
IF ~~ DO ~SetGlobal("BFSMkDeadGobbos","GLOBAL",2)~ EXIT
END

// Tanner
IF ~Global("BFSMkTanner","GLOBAL",1)~ THEN BEGIN BFSMk2.Tanner
SAY @367 /* Smells like my old tribe's den after a feast. */ 
IF ~~ DO ~SetGlobal("BFSMkTanner","GLOBAL",2)~ EXIT
END

// Freed the Slaves
IF ~Global("BFSMkFreedSlaves","GLOBAL",1)~ THEN BEGIN BFSMk2.FreedSlaves
SAY @368 /* They are free. Might not stay that way. City's plenty dangerous. */
++ @369 /* Just because we couldn't make a lasting difference, doesn't mean we shouldn't act today. Every small step helps. */ + BFSMk2.SlaveryDifference
++ @370 /* I've done my part. I don't care what happens to them. */ + BFSMk2.SlaveryUncaring
++ @371 /* Whatever you have to say, M'Khiin, I'm not interested. */ + BFSMk2.SlaveryDisinterest
END

IF ~~ BFSMk2.SlaveryUncaring
SAY @372 /* Can't control what happens. Caring only gets you hurt. */ 
= @373 /* Still... */ 
IF ~~ + BFSMk2.SlaveryUnderstand
END

IF ~~ BFSMk2.SlaveryDifference
SAY @374 /* Difficult, sometimes, trying to change things. Already knowing you won't be enough. */  
= @373 /* Still... */ 
IF ~~ + BFSMk2.SlaveryUnderstand
END

IF ~~ BFSMk2.SlaveryUnderstand
SAY @375 /* I wanted to try. */ 
= @376 /* The cages. The fighting ring. Hits too close to home. Been in that position once - fighting when I didn't want to. */ 
+ ~!Global("BFSMkSoDKnown","GLOBAL",1)~ + @377 /* I don't know what happened but I'm glad you're free now. */ + BFSMk2.BaelothNotKnown
+ ~Global("BFSMkSoDKnown","GLOBAL",1)~ + @378 /* I'm glad you escaped Baeloth's imprisonment. */ + BFSMk2.BaelothUnderstand
++ @379 /* Whatever personal trauma you're going through, I don't want to get involved. */ + BFSMk2.SlaveryDisinterest
++ @380 /* I was imprisoned and caged too. I don't think recovering from that's ever easy. */ + BFSMk2.ThanksForTheTraumaIrenicus
END

IF ~~ BFSMk2.ThanksForTheTraumaIrenicus
SAY @381 /* Wouldn't be. Nothing easy - right - about it. */
= @382 /* But if too-talls imprison themselves, why wouldn't others? Not like they treat their kin any better. */
= @383 /* Goblins are the same. Violent. Short-sighted. Might be they don't know another path. Someone needs to teach them. */
++ @384 /* You can teach them, M'Khiin. The change might not happen in your lifetime - but it won't happen *at all* unless you start somewhere. */ + BFSMk2.TeachUntilTheyLearn
++ @385 /* You can't change someone's nature. Just accept things as they are. */ + BFSMk2.LeaveThemBe
++ @386 /* We cage others before they can cage us. Or we kill them. Survival is what counts. */ + BFSMk2.SurviveAtAllCosts
END

IF ~~ BFSMk2.BaelothNotKnown
SAY @387 /* Drow offered me shelter and food. Said I'd be an exhibit but not be forced to fight. I fell for it. */
= @388 /* I should hate him. Do sometimes. But I understand too. */ 
= @389 /* He's no more welcome than a goblin. If too-talls imprison themselves, why shouldn't a drow do the same? Not like he's one of them. Not like they'd treat him better. */ 
= @390 /* Might be he doesn't know another path. Might be other goblins don't either. Someone needs to teach them. */ 
++ @384 /* You can teach them, M'Khiin. The change might not happen in your lifetime - but it won't happen *at all* unless you start somewhere. */ + BFSMk2.TeachUntilTheyLearn
++ @385 /* You can't change someone's nature. Just accept things as they are. */ + BFSMk2.LeaveThemBe
++ @386 /* We cage others before they can cage us. Or we kill them. Survival is what counts. */ + BFSMk2.SurviveAtAllCosts
END

IF ~~ BFSMk2.BaelothUnderstand
SAY @391 /* Dumb drow. I should hate him. Do sometimes. But I understand too. */ 
= @389 /* He's no more welcome than a goblin. If too-talls imprison themselves, why shouldn't a drow do the same? Not like he's one of them. Not like they'd treat him better. */ 
= @390 /* Might be he doesn't know another path. Might be other goblins don't either. Someone needs to teach them. */ 
++ @384 /* You can teach them, M'Khiin. The change might not happen in your lifetime - but it won't happen *at all* unless you start somewhere. */ + BFSMk2.TeachUntilTheyLearn
++ @385 /* You can't change someone's nature. Just accept things as they are. */ + BFSMk2.LeaveThemBe
++ @386 /* We cage others before they can cage us. Or we kill them. Survival is what counts. */ + BFSMk2.SurviveAtAllCosts
END

IF ~~ BFSMk2.TeachUntilTheyLearn
SAY @392 /* Has to be me, doesn't it? No one else will. */ 
= @393 /* I'll do it then. ...I'll try. */ 
IF ~~ DO ~SetGlobal("BFSMkFreedSlaves","GLOBAL",2) ActionOverride("BFSMK",ChangeAlignment(Myself,NEUTRAL_GOOD))~ EXIT
END

IF ~~ BFSMk2.SurviveAtAllCosts
SAY @394 /* At all costs? Might be you're right. Don't want to end up where I was before. */
= @395 /* If it's me or them ...I have to choose me. */
IF ~~ DO ~SetGlobal("BFSMkFreedSlaves","GLOBAL",2) IncrementGlobal("BFSMkEvilCounter","GLOBAL",1)~ EXIT
END

IF ~~ BFSMk2.LeaveThemBe
SAY @396 /* Right. I'm only one goblin. Don't need to involve myself. */ 
IF ~~ DO ~SetGlobal("BFSMkFreedSlaves","GLOBAL",2)~ EXIT
END

IF ~~ BFSMk2.SlaveryDisinterest
SAY @397 /* Won't bother you then. */ 
IF ~~ DO ~SetGlobal("BFSMkFreedSlaves","GLOBAL",2)~ EXIT
END

// Theshal is dead, the city is empty 
IF ~Global("BFSMk2Ghoul","GLOBAL",2)~ THEN BEGIN BFSMk2.GhoulCity
SAY @398 /* Was hoping they wouldn't attack. They wanted to be better. */
++ @399 /* They attacked first. We had to defend ourselves. */ + BFSMk2.GhoulDefense
++ @400 /* You're not mourning a ghoul, are you? */ + BFSMk2.GhoulMourn
+ ~OR(2) Class(PLAYER1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + @401 /* These creatures were starving. Nature takes its course. */ + BFSMk2.GhoulOvercomingNature
++ @402 /* I worry, sometimes, that my nature will overcome me too. That my Bhaalspawn blood will overwrite any control. */ + BFSMk2.GhoulBhaalspawnYikes
++ @403 /* Just be quiet. */ DO ~SetGlobal("BFSMk2Ghoul","GLOBAL",3)~ EXIT
END

IF ~~ BFSMk2.GhoulDefense
SAY @404 /* Not blaming you. We had no choice. Just think Theshal didn't have a choice either. */ 
IF ~~ + BFSMk2.CityEmpty
END

IF ~~ BFSMk2.GhoulMourn
SAY @405 /* No, I'm a shaman. Sometimes death is easier. Might be for Theshal. */ 
= @406 /* Seems he didn't have a choice. Not in the end. */ 
IF ~~ + BFSMk2.CityEmpty
END

IF ~~ BFSMk2.GhoulOvercomingNature
SAY @407 /* They had no choice. There was only hunger left. */
IF ~~ + BFSMk2.CityEmpty
END

IF ~~ BFSMk2.GhoulBhaalspawnYikes
SAY @408 /* Can't be easy staying in control. But you're strong, you can win. */
IF ~~ + BFSMk2.CityEmpty
END

IF ~~ BFSMk2.CityEmpty
SAY @409 /* City's empty now. Seems wrong. Death is normal, it shouldn't be feared, but life usually follows. */ 
= @410 /* Might make a good hideout for goblins. Needs a good scrubbin' though. We'd have to learn to live in a city. */
++ @411 /* There are other logistics to consider: food, water. */ + BFSMk2.WeBuiltThisCityOnRockAndGnolls
++ @412 /* Well, given the lack of owners, I'd say it's free real estate. */ + BFSMk2.WeBuiltThisCityOnRockAndGnolls
++ @413 /* This place is a dump. It's suitable for your kind. */ + BFSMk2.WeBuiltThisCityOnRockAndGnolls
END

IF ~~ BFSMk2.WeBuiltThisCityOnRockAndGnolls
SAY @414 /* Won't decide now. Too much blood still. */ 
= @415 /* ...And we have a goal. Beholder needs to die first. */
IF ~~ DO ~SetGlobal("BFSMk2Ghoul","GLOBAL",3)~ EXIT
END

// City Gates 
CHAIN IF WEIGHT #-1 ~Global("BFSCityGatesGoblin","GLOBAL",1)~ THEN BFSMKJ BFSMk2.CityGates
@416 /* Guards chased me off earlier. Would've killed me if they could. Careful. */
DO ~SetGlobal("BFSCityGatesGoblin","GLOBAL",2)~
== AESOLD @417 /* Hey! You there! You can't bring a goblin into the city! Or...it was already *in* the city? Explain yourself! */
== BFSMKJ @418 /* I can summon spirits to distract him. Then we run... */ 
END
++ @419 /* Do it. */ EXTERN BFSMKJ BFSMk2.GuardDistracted
++ @420 /* It's okay, M'Khiin, I'll deal with this. */ EXTERN BFSMKJ BFSMk2.GuardBribe
++ @421 /* Seems you're more trouble than you're worth. I'm done with you. Figure it out yourself. */ EXTERN BFSMKJ BFSMk2.GateKinLeaves

CHAIN BFSMKJ BFSMk2.GuardBribe
@422 /* Right behind you. */ 
== AESOLD @423 /* Are you ignoring me, citizen? I asked - ordered - you to explain the presence of this goblin. */ 
END
+ ~CheckStatGT(Player1,14,CHR)~ + @424 /* Everything is in order. This goblin is my pet. She's registered under the exotic-pets-act. */ EXTERN AESOLD BFSMk2.ChaBribeWorked
+ ~!CheckStatGT(Player1,14,CHR)~ + @424 /* Everything is in order. This goblin is my pet. She's registered under the exotic-pets-act. */ EXTERN AESOLD BFSMk2.BribeNotWork
++ @425 /* How much should I pay you to look the other way? */ EXTERN AESOLD BFSMk2.GoldBribe
+ ~CheckStatGT(Player1,14,STR)~ + @426 /* Get out of my way. Or else! */ EXTERN AESOLD BFSMk2.StrBribeWorked
+ ~!CheckStatGT(Player1,14,STR)~ + @426 /* Get out of my way. Or else! */ EXTERN AESOLD BFSMk2.BribeNotWork
++ @427 /* *whispers* On second thought, M'Khiin, I prefer your plan. */ EXTERN BFSMKJ BFSMk2.GuardDistracted

CHAIN AESOLD BFSMk2.GoldBribe
@428 /* A goblin walking freely is a security risk. My duty is to protect the citizens of Athkatla from such dangers. */
== AESOLD @429 /* But, mmm, my pay is on the lower end. For, let's say, five-hundred gold I will look the other way. */
END
++ @430 /* I don't have that much on me. */ EXTERN AESOLD BFSMk2.GoldNotEnough
++ @431 /* Fine. Here you go. */ EXTERN AESOLD BFSMk2.GoldBribeWorked
++ @427 /* *whispers* On second thought, M'Khiin, I prefer your plan. */ EXTERN BFSMKJ BFSMk2.GuardDistracted

CHAIN AESOLD BFSMk2.GoldNotEnough
@432 /* It seems we're at an empass. I can settle for nothing less. */ 
== BFSMKJ @433 /* Enough. */ 
END
IF ~~ EXTERN BFSMKJ BFSMk2.GuardDistracted

CHAIN AESOLD BFSMk2.GoldBribeWorked
@434 /* A pleasure doing business with you. */ 
DO ~TakePartyGold(500)~
== AESOLD @435 /* Very well. Move along. We don't need the goblin frightening any visitors. */ 
EXIT

CHAIN AESOLD BFSMk2.BribeNotWork
@436 /* Deterring an Amnian Soldier from his duty is a criminal offen... */ 
== BFSMKJ @433 /* Enough. */ 
END
IF ~~ EXTERN BFSMKJ BFSMk2.GuardDistracted

CHAIN AESOLD BFSMk2.ChaBribeWorked
@437 /* I've never heard of such an act - but you seem like an upstanding <PRO_MANWOMAN>. */ 
== AESOLD @435 /* Very well. Move along. We don't need the goblin frightening any visitors. */ 
EXIT

CHAIN AESOLD BFSMk2.StrBribeWorked
@438 /* I'm not getting paid enough to deal with this. */ 
== AESOLD @439 /* Move along. We don't need the goblin frightening any visitors. */ 
EXIT

CHAIN BFSMKJ BFSMk2.GateKinLeaves
@440 /* Never should have trusted you. */ 
DO ~EscapeArea()~ EXIT

CHAIN BFSMKJ BFSMk2.GuardDistracted
@441 /* ...Done. Move. Fast. */ 
DO ~CreateCreatureObjectEffect("BDBGOBG1","BDSHSUM","BFSMK") Wait(3) ActionOverride("BDBGOBG1",DestroySelf())~
EXIT

// Interjections
// Tree of Life, M'Khiin was part of the party in SoD
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) Global("BFSMkTreeOfLife","GLOBAL",0) Global("BFSMkSoDKnown","GLOBAL",1)~ 
EXTERN PLAYER1 bfsmktree1
END

CHAIN PLAYER1 bfsmktree1
@442 /* M'Khiin Grubdoubler, the inquisitive goblin shaman, still seeking her own path. She claims she would follow you anywhere - but should you cut her journey of self-reflection short? */
DO ~SetGlobal("O#BranTreeOfLife","GLOBAL",1)~
END
++ @443 /* M'Khiin, there's a lot you have left to explore. To learn. You don't have to follow me any further. This isn't your fight. */ EXTERN BFSMKJ bfsmktree1.1
++ @444 /* We've lost friends before. There's a chance we won't survive this fight either. You don't have to follow me if you don't want to. */ EXTERN BFSMKJ bfsmktree1.1
++ @445 /* We're nearing the end. I have to know that you're ready. There's no turning back. */ EXTERN BFSMKJ bfsmktree1.1


CHAIN BFSMKJ bfsmktree1.1
@446 /* Got used to running. First from my tribe, then when the too-talls caged you. I'm tired of it. No retreat. Not today. I'm going to stay and I'm going to fight. */
END
COPY_TRANS PLAYER1 33 

// Tree of Life, M'Khiin wasn't party of the party in SoD

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) Global("BFSMkTreeOfLife","GLOBAL",0) !Global("BFSMkSoDKnown","GLOBAL",1)~
EXTERN PLAYER1 bfsmktree2
END

CHAIN PLAYER1 bfsmktree2
@442 /* M'Khiin Grubdoubler, the inquisitive goblin shaman, still seeking her own path. She claims she would follow you anywhere - but should you cut her journey of self-reflection short? */
DO ~SetGlobal("O#BranTreeOfLife","GLOBAL",1)~
END
++ @443 /* M'Khiin, there's a lot you have left to explore. To learn. You don't have to follow me any further. This isn't your fight. */ EXTERN BFSMKJ bfsmktree2.1
++ @444 /* We've lost friends before. There's a chance we won't survive this fight either. You don't have to follow me if you don't want to. */ EXTERN BFSMKJ bfsmktree2.1
++ @445 /* We're nearing the end. I have to know that you're ready. There's no turning back. */ EXTERN BFSMKJ bfsmktree2.1

CHAIN BFSMKJ bfsmktree2.1
@447 /* Got used to running. Ran from my tribe, ran from the guards at the gate. I'm tired of it. No retreat. Not today. I'm going to stay and I'm going to fight. */ 
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 BFSMKBangBangTheIrenicusIsDead
== BFSMKJ IF ~InParty("BFSMK") Range("BFSMK",15) !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @448 /* Doesn't seem real. Not yet. Something's missing. */
END

// Promenade - Circus Tent (Aerie)
I_C_T AERIE 30 BFSMKAERIE1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @449 /* Lots of things that look like monsters but aren't. Reverse is also true. */
END

// City Gates - Innkeeper
I_C_T CROBAR01 1 BFSMKCROW
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @450 /* Slept in worse. Doesn't sound so bad. */
END

// Slums - Planar Sphere Seller
CHAIN IF WEIGHT #-1 ~InParty("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) RandomNum(2,1) Global("BFSMkWaylane","GLOBAL",0)~ THEN WAYLANE BFSKinWaylane
@451 /* Hey! You there! The...goblin? */
DO ~SetGlobal("BFSMkWaylane","GLOBAL",1)~
== BFSMKJ @452 /* Something to say? */
== WAYLANE @453 /* See this mighty fine sphere? You can have it for 500 gold pieces! What a steal! */
== BFSMKJ @454 /* Sounds good. Might take it. */
== WAYLANE @455 /* I knew you were smarter than you, uh, looked. */
== BFSMKJ @456 /* Steal, you said? Sphere isn't yours, is it? Not gonna pay you anything. It's as much mine as yours now. */
== WAYLANE @457 /* Can't believe I got outwitted by a *goblin* of all things. */
EXIT

// Slums - Kylie, Turnip Shopkeeper
I_C_T KYLIE1 6 BFSMKTURNIPSTEW
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @458 /* Turnip stew sounds good. */
END

// Copper Coronet - Lehtinan
I_C_T LEHTIN 9 BFSMKLEHT1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @459 /* He's not gonna talk. Have to find another way. */
END

I_C_T LEHTIN 17 BFSMKLEHT2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @460 /* None of it good by the sound of it. */
END

// Copper Coronet - Llynis
I_C_T LLYNIS 0 BFSMKLLYN1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @461 /* No ghosts here. I would know. */
END

I_C_T LLYNIS 5 BFSMKLLYN2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @462 /* Ghosts don't remain for nothing. Must be a reason. He's lying. */
END

I_C_T LLYNIS 11 BFSMKLLYN3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @463 /* Better than he deserves. */
END

I_C_T LLYNIS 12 BFSMKLLYN4
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @463 /* Better than he deserves. */
END

// Copper Coronet - Greeter
I_C_T COPGREET 1 BFSMKGREET1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @464 /* Don't like this. Don't like it at all! */
END

I_C_T COPGREET 6 BFSMKGREET2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @465 /* We have to stop this. They didn't *choose* to fight. */
END

// Copper Coronet - Hendak
I_C_T HENDAK 7 BFSMKHEND1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @466 /* We should help them. They didn't choose to fight. */
END

I_C_T HENDAK 2 BFSMKHEND2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @467 /* You did good. Both to survive. And to care for others. */
END

I_C_T HENDAK 4 BFSMKHEND3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @468 /* No more fights, no more cages! */
END

// Slums - Slaver Compound
I_C_T HAEGAN 1 BFSMKHAEG1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @469 /* Freedom or death! */
== HAEGAN @470 /* Your death is easily granted. */
END

I_C_T HAEGAN 2 BFSMKHAEG2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @469 /* Freedom or death! */
== HAEGAN @470 /* Your death is easily granted. */
END

I_C_T HAEGAN 3 BFSMKHAEG3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @469 /* Freedom or death! */
== HAEGAN @470 /* Your death is easily granted. */
END

I_C_T HAEGAN 5 BFSMKHAEG4
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @469 /* Freedom or death! */
== HAEGAN @470 /* Your death is easily granted. */
END

// De'Arnise Keep, Delcia
I_C_T DELCIA 17 BFSMKDELC1
== DELCIA IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @471 /* A goblin too! The nerve! We'll never get the stink out. */
END

I_C_T DELCIA 16 BFSMKDELC2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @472 /* Thought goblins were the worst company. I was wrong. Would prefer them over her. */
END

// Bridge District, Rose 
I_C_T MURDGIRL 11 BFSMKROSE1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @473 /* Makes no sense. Guril Berries are for natural remedies. Why would a killer use 'em? */
== BFSMKJ @474 /* Might be Solik Berries. Might be - if the killer was eating while they worked. */ 
END

I_C_T MURDGIRL 21 BFSMKROSE2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @475 /* Feels like I'm missing something. Better off not knowing. */
END

// Bridge District, Qadeel
I_C_T BMERCH1 0 BFSMKOGREMERCH1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @476 /* Know goblins don't have a place in the city. Seems ogres don't either. */
END

I_C_T BMERCH1 2 BFSMKOGREMERCH2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @477 /* They're much bigger. Could push *him* around. Why don't they? */
END

I_C_T BMERCH1 3 BFSMKOGREMERCH3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @478 /* Wish the ogres won. */
END

// Bridge District, Playhouse
I_C_T RAELIS 47 BFSMKRAELIS2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @479 /* Same here. Same everywhere, really. */
END

// Sewers - Beholder Cult
I_C_T CTRAITOR 2 BFSMKCULT1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @480 /* Jumping down could be fun. Could also be dangerous. My bet's on dangerous. */
END

// Underground Temple
I_C_T RIFTC01 6 BFSMKRIFT1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @481 /* Flesh might be infected. If you only add poison, don't expect a cut to heal. */
== RIFTC01 @482 /* You don't understand. Hoping for change is dangerous. Nothing ever changes. */
END

I_C_T RIFTC02 4 BFSMKRIFT2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @483 /* If there's a wound, might try to heal it. Won't fix itself otherwise. */
END

I_C_T RIFTG03 7 BFSMKRIFT3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @484 /* Think this is a god. Or was once. Faith should've kept him strong - his followers have none though. */
END

I_C_T RIFTM01 14 BFSMKRIFT4
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @485 /* Don't worship Maglubiyet either. Not goblin enough. */
END

// Ghoul City - Cracking a couple of cold ones open with the party
I_C_T THESHAL 6 BFSMKGHOUL3 /* this literally sets the global we NEED for M'Khiin's Theshal talk do NOT delete this Bucket */ 
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @486 /* Not good. */
== THESHAL @487 /* HssSS! */
DO ~SetGlobal("BFSMk2Ghoul","GLOBAL",1)~ 
END

I_C_T THESHAL 4 BFSMKGHOUL3 /* this literally sets the global we NEED for M'Khiin's Theshal talk do NOT delete this Bucket */ 
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @486 /* Not good. */
== THESHAL @487 /* HssSS! */
DO ~SetGlobal("BFSMk2Ghoul","GLOBAL",1)~ 
END

// Planar Prison
I_C_T PBHUNT01 5 BFSMKPLANAR
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @488 /* Got myself out of a cage before. Can do it again. */
END
