/* Obligatory Celvan Limerick */ 
CHAIN IF WEIGHT #-1 
~InParty("BFSMK")
See("BFSMK")
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMKCelvan","AR0300",0)~ THEN CELVAN BFS.Mk2Celv
~A goblin once snuck from her home,
Preferring to strike out on her own,
But with no place to stay,
As an unwanted stray,
She was forced to continue to roam. ~
DO ~SetGlobal("BFSMKCelvan","AR0300",1)~
== BFSMKJ ~How'd you know that?~
END CELVAN 1

BEGIN BFSMKJ

// Gobbos Dead
IF ~Global("BFSMkDeadGobbos","GLOBAL",1)~ THEN BEGIN BFSMk2.JoinQuestDone
SAY ~Dead? Good. Should give the others a few more days.~
= ~Not that I care about them. Not that I should. Caring's never done me any good.~ 
IF ~~ DO ~SetGlobal("BFSMkDeadGobbos","GLOBAL",2)~ EXIT
END

// Tanner
IF ~Global("BFSMkTanner","GLOBAL",1)~ THEN BEGIN BFSMk2.Tanner
SAY ~Smells like my old tribe's den after a feast.~ 
= ~Might smell better even.~
IF ~~ DO ~SetGlobal("BFSMkTanner","GLOBAL",2)~ EXIT
END

// Freed the Slaves
IF ~Global("BFSMkFreedSlaves","GLOBAL",1)~ THEN BEGIN BFSMk2.FreedSlaves
SAY ~They are free. Might not stay that way. City's plenty dangerous.~
++ ~Just because we couldn't make a lasting difference, doesn't mean we shouldn't act today. Every small step helps.~ + BFSMk2.SlaveryDifference
++ ~I've done my part. I don't care what happens to them.~ + BFSMk2.SlaveryUncaring
++ ~Whatever you have to say, M'Khiin, I'm not interested.~ + BFSMk2.SlaveryDisinterest
END

IF ~~ BFSMk2.SlaveryUncaring
SAY ~Can't control what happens. Caring only gets you hurt.~ 
= ~Still...~ 
IF ~~ + BFSMk2.SlaveryUnderstand
END

IF ~~ BFSMk2.SlaveryDifference
SAY ~Difficult, sometimes, trying to change things. Already knowing you won't be enough.~  
= ~Still...~ 
IF ~~ + BFSMk2.SlaveryUnderstand
END

IF ~~ BFSMk2.SlaveryUnderstand
SAY ~I wanted to try.~ 
= ~The cages. The fighting ring. Hits too close to home. Been in that position once - fighting when I didn't want to.~ 
+ ~!Global("BFSMkSoDKnown","GLOBAL",1)~ + ~I don't know what happened but I'm glad you're free now.~ + BFSMk2.BaelothNotKnown
+ ~Global("BFSMkSoDKnown","GLOBAL",1)~ + ~I'm glad you escaped Baeloth's imprisonment.~ + BFSMk2.BaelothUnderstand
++ ~Whatever personal trauma you're going through, I don't want to get involved.~ + BFSMk2.SlaveryDisinterest
++ ~I was imprisoned and caged too. I don't think recovering from that's ever easy.~ + BFSMk2.ThanksForTheTraumaIrenicus
END

IF ~~ BFSMk2.ThanksForTheTraumaIrenicus
SAY ~Wouldn't be. Nothing easy - right - about it.~
= ~But if too-talls imprison themselves, why wouldn't others? Not like they treat their kin any better.~
= ~Goblins are the same. Violent. Short-sighted. Might be they don't know another path. Someone needs to teach them.~
++ ~You can teach them, M'Khiin. The change might not happen in your lifetime - but it won't happen *at all* unless you start somewhere.~ + BFSMk2.TeachUntilTheyLearn
++ ~You can't change someone's nature. Just accept things as they are.~ + BFSMk2.LeaveThemBe
++ ~We cage others before they can cage us. Or we kill them. Survival is what counts.~ + BFSMk2.SurviveAtAllCosts
END

IF ~~ BFSMk2.BaelothNotKnown
SAY ~Drow offered food, shelter. Said I'd be an exhibit, not fight. I fell for it.~
= ~Should hate him. Do sometimes. But I get it too.~ 
= ~He's no more welcome than a goblin. If too-talls imprison themselves, why shouldn't a drow do the same? Not like he's one of them. Not like they'd treat him better.~ 
= ~Might be he doesn't know another path. Might be other goblins don't either. Someone needs to teach them.~ 
++ ~You can teach them, M'Khiin. The change might not happen in your lifetime - but it won't happen *at all* unless you start somewhere.~ + BFSMk2.TeachUntilTheyLearn
++ ~You can't change someone's nature. Just accept things as they are.~ + BFSMk2.LeaveThemBe
++ ~We cage others before they can cage us. Or we kill them. Survival is what counts.~ + BFSMk2.SurviveAtAllCosts
END

IF ~~ BFSMk2.BaelothUnderstand
SAY ~Dumb drow. I should hate him. Do sometimes. But I understand too.~ 
= ~He's no more welcome than a goblin. If too-talls imprison themselves, why shouldn't a drow do the same? Not like he's one of them. Not like they'd treat him better.~ 
= ~Might be he doesn't know another path. Might be other goblins don't either. Someone needs to teach them.~ 
++ ~You can teach them, M'Khiin. The change might not happen in your lifetime - but it won't happen *at all* unless you start somewhere.~ + BFSMk2.TeachUntilTheyLearn
++ ~You can't change someone's nature. Just accept things as they are.~ + BFSMk2.LeaveThemBe
++ ~We cage others before they can cage us. Or we kill them. Survival is what counts.~ + BFSMk2.SurviveAtAllCosts
END

IF ~~ BFSMk2.TeachUntilTheyLearn
SAY ~Has to be me, doesn't it? No one else will.~ 
= ~I'll do it then. ...I'll try.~ 
IF ~~ DO ~SetGlobal("BFSMkFreedSlaves","GLOBAL",2) ActionOverride("BFSMK",ChangeAlignment(Myself,NEUTRAL_GOOD))~ EXIT
END

IF ~~ BFSMk2.SurviveAtAllCosts
SAY ~At all costs? Might be you're right. Don't want to end up where I was before.~
= ~If it's me or them ...I have to choose me.~
IF ~~ DO ~SetGlobal("BFSMkFreedSlaves","GLOBAL",2) IncrementGlobal("BFSMkEvilCounter","GLOBAL",1)~ EXIT
END

IF ~~ BFSMk2.LeaveThemBe
SAY ~Right. I'm only one goblin. Don't need to involve myself.~ 
IF ~~ DO ~SetGlobal("BFSMkFreedSlaves","GLOBAL",2)~ EXIT
END

IF ~~ BFSMk2.SlaveryDisinterest
SAY ~Won't bother you then.~ 
IF ~~ DO ~SetGlobal("BFSMkFreedSlaves","GLOBAL",2)~ EXIT
END

// Graveyard
IF ~Global("BFSKinGraveyard","GLOBAL",1)~ THEN BEGIN BFSMk2.GraveyardBark
SAY ~Old bones don't sleep quiet in this place. They twist, they twitch. Better not to wake them.~ 
IF ~~ DO ~SetGlobal("BFSKinGraveyard","GLOBAL",2)~ EXIT
END

// Suld
IF ~Global("BFSKinSuld","GLOBAL",1)~ THEN BEGIN BFSMk2.SuldBark
SAY ~Mmph. Too many deaths here recently, too many spirits screaming at once.~ 
= ~They say the great tree groans. Roots bleed annd branches scream. A thief gnaws at them all.~
IF ~~ DO ~SetGlobal("BFSKinSuld","GLOBAL",2)~ EXIT
END

// City Gates 
CHAIN IF ~Global("BFSCityGatesGoblin","GLOBAL",1)~ THEN BFSMKJ BFSMk2.CityGates
~Guards chased me off earlier. Would've snapped me like a twig. Careful.~
DO ~SetGlobal("BFSCityGatesGoblin","GLOBAL",2)~
== AESOLD ~Hey! You there! You can't bring a goblin into the city! Or...it was already in the city? Explain yourself!~
== BFSMKJ ~A whisper from me to any nearby spirits, and he'll dance with shadows while we vanish.~ 
END
++ ~Do it.~ EXTERN BFSMKJ BFSMk2.GuardDistracted
++ ~It's okay, M'Khiin, I'll deal with this.~ EXTERN BFSMKJ BFSMk2.GuardBribe
++ ~Seems you're more trouble than you're worth. I'm done with you. Figure it out yourself.~ EXTERN BFSMKJ BFSMk2.GateKinLeaves

CHAIN BFSMKJ BFSMk2.GuardBribe
~Right behind you.~ 
== AESOLD ~Are you ignoring me, citizen? I asked - ordered - you to explain the presence of this goblin.~ 
END
+ ~CheckStatGT(Player1,14,CHR)~ + ~Everything is in order. This goblin is my pet. She's registered under the exotic-pets-act.~ EXTERN AESOLD BFSMk2.ChaBribeWorked
+ ~!CheckStatGT(Player1,14,CHR)~ + ~Everything is in order. This goblin is my pet. She's registered under the exotic-pets-act.~ EXTERN AESOLD BFSMk2.BribeNotWork
++ ~How much should I pay you to look the other way?~ EXTERN AESOLD BFSMk2.GoldBribe
+ ~CheckStatGT(Player1,14,STR)~ + ~Get out of my way. Or else!~ EXTERN AESOLD BFSMk2.StrBribeWorked
+ ~!CheckStatGT(Player1,14,STR)~ + ~Get out of my way. Or else!~ EXTERN AESOLD BFSMk2.BribeNotWork
++ ~*whispers* On second thought, M'Khiin, I prefer your plan.~ EXTERN BFSMKJ BFSMk2.GuardDistracted

CHAIN AESOLD BFSMk2.GoldBribe
~A goblin walking freely is a security risk. My duty is to protect the citizens of Athkatla from such dangers.~
== AESOLD ~But, mmm, my pay is on the lower end. For, let's say, five-hundred gold I will look the other way.~
END
+ ~!PartyGold(500)~ + ~I don't have that much on me.~ EXTERN AESOLD BFSMk2.GoldNotEnough
+ ~PartyGold(500)~ + ~That's an outrageous sum. I refuse!~ EXTERN AESOLD BFSMk2.GoldNotEnough
+ ~PartyGold(500)~ + ~Fine. Here you go.~ EXTERN AESOLD BFSMk2.GoldBribeWorked
++ ~*whispers* On second thought, M'Khiin, I prefer your plan.~ EXTERN BFSMKJ BFSMk2.GuardDistracted

CHAIN AESOLD BFSMk2.GoldNotEnough
~It seems we're at an empass. I can settle for nothing less.~ 
== BFSMKJ ~Enough.~ 
END
IF ~~ EXTERN BFSMKJ BFSMk2.GuardDistracted

CHAIN AESOLD BFSMk2.GoldBribeWorked
~A pleasure doing business with you.~ 
DO ~TakePartyGold(500) IncrementGlobal("BFSMk2GoblinInTheCity","GLOBAL",1)~
== AESOLD ~Very well. Move along. We don't need the goblin frightening any visitors.~ 
EXIT

CHAIN AESOLD BFSMk2.BribeNotWork
~Deterring an Amnian Soldier from his duty is a criminal offen...~ 
== BFSMKJ ~Enough.~ 
END
IF ~~ EXTERN BFSMKJ BFSMk2.GuardDistracted

CHAIN AESOLD BFSMk2.ChaBribeWorked
~I've never heard of such an act - but you seem like an upstanding <PRO_MANWOMAN>.~ 
DO ~IncrementGlobal("BFSMk2GoblinInTheCity","GLOBAL",1)~
== AESOLD ~Very well. Move along. We don't need the goblin frightening any visitors.~ 
EXIT

CHAIN AESOLD BFSMk2.StrBribeWorked
~I'm not getting paid enough to deal with this.~ 
DO ~IncrementGlobal("BFSMk2GoblinInTheCity","GLOBAL",1)~
== AESOLD ~Move along. We don't need the goblin frightening any visitors.~ 
EXIT

CHAIN BFSMKJ BFSMk2.GateKinLeaves
~Never should have trusted you.~ 
DO ~AddJournalEntry(@100002, QUEST_DONE) EscapeArea()~ EXIT

CHAIN BFSMKJ BFSMk2.GuardDistracted
~Spirit! Heed my call! ~ 
DO ~CreateCreatureObjectEffect("BDBGOBG1","BDSHSUM","BFSMK") Wait(3) ActionOverride("BDBGOBG1",DestroySelf()) DisplayStringHead("BFSMK",@9009) IncrementGlobal("BFSMk2GoblinInTheCity","GLOBAL",1)~
EXIT

// Interjections
// Tree of Life, M'Khiin was part of the party in SoD
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) Global("BFSMkTreeOfLife","GLOBAL",0) Global("BFSMkSoDKnown","GLOBAL",1)~ 
EXTERN PLAYER1 bfsmktree1
END

CHAIN PLAYER1 bfsmktree1
~M'Khiin Grubdoubler, the inquisitive goblin shaman, still seeking her own path. She claims she would follow you anywhere - but should you cut her journey of self-reflection short?~
DO ~SetGlobal("O#BranTreeOfLife","GLOBAL",1)~
END
++ ~M'Khiin, there's a lot you have left to explore. To learn. You don't have to follow me any further. This isn't your fight.~ EXTERN BFSMKJ bfsmktree1.1
++ ~We've lost friends before. There's a chance we won't survive this fight either. You don't have to follow me if you don't want to.~ EXTERN BFSMKJ bfsmktree1.1
++ ~We're nearing the end. I have to know that you're ready. There's no turning back.~ EXTERN BFSMKJ bfsmktree1.1


CHAIN BFSMKJ bfsmktree1.1
~Got used to running. First from my tribe, then when the too-talls caged you. I'm tired of it. No retreat. Not today. I'm staying and I'm fighting.~
END
COPY_TRANS PLAYER1 33 

// Tree of Life, M'Khiin wasn't party of the party in SoD

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) Global("BFSMkTreeOfLife","GLOBAL",0) !Global("BFSMkSoDKnown","GLOBAL",1)~
EXTERN PLAYER1 bfsmktree2
END

CHAIN PLAYER1 bfsmktree2
~M'Khiin Grubdoubler, the inquisitive goblin shaman, still seeking her own path. She claims she would follow you anywhere - but should you cut her journey of self-reflection short?~
DO ~SetGlobal("O#BranTreeOfLife","GLOBAL",1)~
END
++ ~M'Khiin, there's a lot you have left to explore. To learn. You don't have to follow me any further. This isn't your fight.~ EXTERN BFSMKJ bfsmktree2.1
++ ~We've lost friends before. There's a chance we won't survive this fight either. You don't have to follow me if you don't want to.~ EXTERN BFSMKJ bfsmktree2.1
++ ~We're nearing the end. I have to know that you're ready. There's no turning back.~ EXTERN BFSMKJ bfsmktree2.1

CHAIN BFSMKJ bfsmktree2.1
~Got used to running. Ran from my tribe, ran from the guards at the gate. I'm tired of it. No retreat. Not today. I'm staying and I'm fighting.~ 
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 BFSMKBangBangTheIrenicusIsDead
== BFSMKJ IF ~InParty("BFSMK") Range("BFSMK",15) !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Doesn't seem real. Not yet. Something's missing.~
END

// Promenade - Circus Tent (Aerie)
I_C_T AERIE 30 BFSMKAERIE1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Lots of things that look like monsters but aren't. Reverse is also true.~
END

// City Gates - Innkeeper
I_C_T CROBAR01 1 BFSMKCROW
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Slept in worse. Doesn't sound so bad.~
END

// Slums - Planar Sphere Seller
CHAIN IF WEIGHT #-1 ~InParty("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) RandomNum(2,1) Global("BFSMkWaylane","GLOBAL",0)~ THEN WAYLANE BFSKinWaylane
~Hey! You there! The...goblin?~
DO ~SetGlobal("BFSMkWaylane","GLOBAL",1)~
== BFSMKJ ~Something to say?~
== WAYLANE ~See this mighty fine sphere? You can have it for 500 gold pieces! What a steal!~
== BFSMKJ ~Sounds good. Might snatch it.~
== WAYLANE ~I knew you were smarter than you, uh, looked.~
== BFSMKJ ~Steal, you said? Sphere isn't yours, is it? Not gonna pay you anything. It's as much mine as yours now.~
== WAYLANE ~Can't believe I got outwitted by a goblin of all things.~
EXIT

// Slums - Kylie, Turnip Shopkeeper
I_C_T KYLIE1 6 BFSMKTURNIPSTEW
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Turnip stew sounds good.~
END

// Copper Coronet - Lehtinan
I_C_T LEHTIN 9 BFSMKLEHT1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~He's not gonna talk. Have to find another way.~
END

I_C_T LEHTIN 17 BFSMKLEHT2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~None of it good by the sound of it.~
END

// Copper Coronet - Llynis
I_C_T LLYNIS 0 BFSMKLLYN1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~No ghosts here. I would know.~
END

I_C_T LLYNIS 5 BFSMKLLYN2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Ghosts don't remain for nothing. Must be a reason. He's lying.~
END

I_C_T LLYNIS 11 BFSMKLLYN3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Better than he deserves.~
END

I_C_T LLYNIS 12 BFSMKLLYN4
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Better than he deserves.~
END

// Copper Coronet - Greeter
I_C_T COPGREET 1 BFSMKGREET1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Don't like this. Don't like it at all!~
END

I_C_T COPGREET 6 BFSMKGREET2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~We have to stop this. They didn't *choose* to fight.~
END

// Copper Coronet - Hendak
I_C_T HENDAK 7 BFSMKHEND1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~We should help them. They didn't choose to fight.~
END

I_C_T HENDAK 2 BFSMKHEND2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~You did good. Both to survive. And to care for others.~
END

I_C_T HENDAK 4 BFSMKHEND3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~No more fights, no more cages!~
END

// Slums - Slaver Compound
I_C_T HAEGAN 1 BFSMKHAEG1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Freedom or death!~ [BD67725]
== HAEGAN ~Your death is easily granted.~
END

I_C_T HAEGAN 2 BFSMKHAEG2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Freedom or death!~ [BD67725]
== HAEGAN ~Your death is easily granted.~
END

I_C_T HAEGAN 3 BFSMKHAEG3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Freedom or death!~ [BD67725]
== HAEGAN ~Your death is easily granted.~
END

I_C_T HAEGAN 5 BFSMKHAEG4
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Freedom or death!~ [BD67725]
== HAEGAN ~Your death is easily granted.~
END

// De'Arnise Keep, Delcia
I_C_T DELCIA 17 BFSMKDELC1
== DELCIA IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~A goblin too! The nerve! We'll never get the stink out.~
END

I_C_T DELCIA 16 BFSMKDELC2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Thought goblins were the worst company. I was wrong. Would prefer them over her.~
END

// Bridge District, Rose 
I_C_T MURDGIRL 11 BFSMKROSE1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Makes no sense. Guril Berries are for natural remedies. Why would a killer use 'em?~
== BFSMKJ ~Might be Solik Berries. Might be - if the killer munched while working.~ 
END

I_C_T MURDGIRL 21 BFSMKROSE2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Feels like I'm missing something. Better off not knowing.~
END

// Bridge District, Qadeel
I_C_T BMERCH1 0 BFSMKOGREMERCH1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Know goblins don't have a place in the city. Seems ogres don't either.~
END

I_C_T BMERCH1 2 BFSMKOGREMERCH2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~They're much bigger. Could push him around. Why don't they?~
END

I_C_T BMERCH1 3 BFSMKOGREMERCH3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Wish the ogres won.~
END

// Bridge District, Playhouse
I_C_T RAELIS 47 BFSMKRAELIS2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Same here. Same everywhere, really.~
END

// Sewers - Beholder Cult
I_C_T CTRAITOR 2 BFSMKCULT1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Jumping down could be fun. Could also be dangerous. My bet's on dangerous.~
END

// Underground Temple
I_C_T RIFTC01 6 BFSMKRIFT1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Flesh might be infected. If you only add poison, don't expect a cut to heal.~
== RIFTC01 ~You don't understand. Hoping for change is dangerous. Nothing ever changes.~
END

I_C_T RIFTC02 4 BFSMKRIFT2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~If there's a wound, might try to heal it. Won't fix itself otherwise.~
END

I_C_T RIFTG03 7 BFSMKRIFT3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Think this is a god. Or was once. Faith should've kept him strong - his followers have none though.~
END

I_C_T RIFTM01 14 BFSMKRIFT4
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Don't worship Maglubiyet either. Not goblin enough.~
END

// Planar Prison
I_C_T PBHUNT01 5 BFSMKPLANAR
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Got myself out of a cage before. Can do it again.~
END

// Government District, Viconia
I_C_T VICONI 0 BFSMKVICONI1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Haven't had good dealings with drow...but this? Don't sit right with me.~
END

// Lonk is dealt with so we're gathering the team & charging Irenicus
I_C_T PLAYER1 15 BFSMKLONK
== BFSMKJ IF ~InParty("BFSMK") !StateCheck("BFSMK", CD_STATE_NOTVALID)~ ~Good. No one rots behind a cage anymore. Free things bite back though, careful <CHARNAME>.~
END

// Entering the Hells
I_C_T PLAYER1 25 BFSMKHELL1
== BFSMKJ IF ~InParty("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) InMyArea("BFSMK")~ THEN ~This place wasn't meant for mortals. But your spirit called, <CHARNAME>, and I followed.~
END

// Battling Irenicus in the Hells
I_C_T HELLJON 7 BFSMKHELL2
== BFSMKJ IF ~InParty("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) InMyArea("BFSMK")~ THEN ~The spirits spit on you, soul-thief!~
END

I_C_T HELLJON 8 BFSMKHELL2
== BFSMKJ IF ~InParty("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) InMyArea("BFSMK")~ THEN ~The spirits spit on you, soul-thief!~
END

I_C_T HELLJON 9 BFSMKHELL2
== BFSMKJ IF ~InParty("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) InMyArea("BFSMK")~ THEN ~The spirits spit on you, soul-thief!~
END

I_C_T HELLJON 10 BFSMKHELL2
== BFSMKJ IF ~InParty("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) InMyArea("BFSMK")~ THEN ~The spirits spit on you, soul-thief!~
END
