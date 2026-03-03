BEGIN BFSMK

CHAIN IF WEIGHT #-1 ~Global("BFSMkIntro","GLOBAL",0)~ THEN BFSMK BFSMk.Intro
~Spit it out!~
DO ~SetGlobal("BFSMkIntro","GLOBAL",1)~
== BFSGOB ~But I'm hungry.~
== BFSMK ~Don't make me repeat myself. You can do better.~ 
== BFSGOB ~...~
== BFSMK ~Good. Don't need you getting sick. Again.~
== BFSMK ~Hold. Spirits say we have company. Who goes there?~ 
END
++ ~M'Khiin! I haven't seen you since Dragonspear.~ EXTERN BFSMK BFSMk2.OldFriend 
++ ~What's a goblin doing here?~ EXTERN BFSMK BFSMk2.StrangerDanger
++ ~Nobody of note. You leave me alone, I'll leave you alone.~ EXTERN BFSMK BFSMk2.LeaveMeAlone

CHAIN BFSMK BFSMk2.LeaveMeAlone
~Sounds good. We'll be off.~ DO ~ActionOverride("BFSGB2",DestroySelf()) ActionOverride("BFSGOB",DestroySelf()) EscapeArea()~
EXIT

/* bg2 start */ 
CHAIN BFSMK BFSMk2.StrangerDanger
~Depends. What's a <PRO_RACE> doing here?~ 
END
++ ~Adventuring. The sewers hold many monsters. Sometimes even the occasional trinket.~ EXTERN BFSMK BFSMk2.MoveAlong
++ ~Nothing that should be of any concern to you.~ EXTERN BFSMK BFSMk2.MoveAlong
++ ~I'm just taking a stroll. Enjoying the scenery.~ EXTERN BFSMK BFSMk2.MoveAlong

CHAIN BFSMK BFSMk2.MoveAlong
~Move along then. We're no threat to you.~ 
END
++ ~You haven't answered my question. Why are a group of goblins here?~ EXTERN BFSMK BFSMk2.GobbosWhy
++ ~Killing goblins is my business.~ EXTERN BFSMK BFSMk2.KillingTime
++ ~I can't leave unless I know you intend no harm towards the city.~ EXTERN BFSMK BFSMk2.CityMean
+ ~OR(2) Class(Player1,RANGER_ALL) Class(Player1,DRUID_ALL)~ + ~Goblins in a city rarely end well.~ EXTERN BFSMK BFSMk2.NoPlaceForGobbos

CHAIN BFSMK BFSMk2.NoPlaceForGobbos
~We don't fit anywhere really.~
END
IF ~~ EXTERN BFSMK BFSMk2.GobbosWhy

CHAIN BFSMK BFSMk2.CityMean
~More likely the city intends harm towards us.~ 
END
IF ~~ EXTERN BFSMK BFSMk2.GobbosWhy

CHAIN BFSMK BFSMk2.GobbosWhy
~I only arrived recently. They were here before. Not sure the city has place for goblins, but these ones want to stay.~ 
= ~It's not safe though. Not even in the sewers. Other goblins are further in. They're the not-friendly kind. Still need to deal with them.~
END
IF ~~ EXTERN BFSMK BFSMk2.TheOnlyGoodGoblin

CHAIN BFSMK BFSMk2.TheOnlyGoodGoblin
~Might be we can help one another. I'm a good enough healer. You help me with the other goblins and I'll patch up your wounds. I'll even speak with any spirits you encounter.~
END
++ ~Are you offering to join my party?~ EXTERN BFSMK BFSMk2.TeamUp
++ ~I would never travel with a goblin.~ EXTERN BFSMK BFSMk2.NoTeamUp
++ ~Why settle for killing them, when I can start with you?~ EXTERN BFSMK BFSMk2.KillingTime
+ ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,CLERIC_ALL)~ + ~I happen to be a healer myself.~ EXTERN BFSMK BFSMk2.TwoHeads
+ ~Class(Player1,SHAMAN)~ + ~I can converse with the spirits myself.~ EXTERN BFSMK BFSMk2.TwoHeads

CHAIN BFSMK BFSMk2.TwoHeads
~Nothing wrong with having support. Might be your busy. Might be you need a second pair of hands. Or a second head.~ 
END
++ ~I wouldn't turn down your help. Let's go and deal with those other goblins.~ EXTERN BFSMK BFSMk2.IsADeadOne
++ ~I would never travel with a goblin.~ EXTERN BFSMK BFSMk2.NoTeamUp
++ ~Why settle for killing them, when I can start with you?~ EXTERN BFSMK BFSMk2.KillingTime

CHAIN BFSMK BFSMk2.NoTeamUp
~Simple then. Don't plan to be where I'm not wanted.~
= ~We'll be off.~ DO ~ActionOverride("BFSGB2",DestroySelf()) ActionOverride("BFSGOB",DestroySelf()) EscapeArea()~
EXIT

CHAIN BFSMK BFSMk2.TeamUp
~I am. There's safety in numbers. Wanted to head topside anyway.~ 
END 
++ ~Welcome aboard. Let's go and deal with those other goblins.~ EXTERN BFSMK BFSMk2.IsADeadOne
++ ~I would never travel with a goblin.~ EXTERN BFSMK BFSMk2.NoTeamUp
++ ~Why settle for killing them, when I can start with you?~ EXTERN BFSMK BFSMk2.KillingTime

CHAIN BFSMK BFSMk2.IsADeadOne
~Name's M'Khiin. Of the Grubdoubler clan.~ 
== BFSGOB ~You're leaving us?~
== BFSMK ~Yes. But I'm also protecting you. Stay here and don't get into trouble.~
== BFSGB2 ~Me? Never! Him though...~
END
++ ~Are you sure they'll be safe without you?~ EXTERN BFSMK BFSMk2.JoinUs
++ ~Can we move this along?~ EXTERN BFSMK BFSMk2.JoinUs

CHAIN BFSMK BFSMk2.JoinUs
~Let's head out before they start butting heads. Or worse. I'm right behind you.~
DO ~AddJournalEntry(@100001, QUEST) JoinParty()~ 
EXIT

CHAIN BFSMK BFSMk2.KillingTime
~Knew coming here was a bad idea.~ DO ~ActionOverride("BFSGB2",Enemy()) ActionOverride("BFSGOB",Enemy()) Enemy()~
EXIT

/* sod continuation */ 
CHAIN BFSMK BFSMk2.OldFriend
~Saw you get dragged into a cell. Wanted to stop it but couldn't.~ 
DO ~SetGlobal("BFSMkSoDKnown","GLOBAL",1)~
= ~Followed you for a while though. Difficult at times. Shadowy figures were always watching. But I made it all the way to the gate.~ 
= ~Guards wouldn't let me through. Think they wanted to kill me - so I didn't stick around to find out.~ 
END
++ ~I'm glad you ran away. I've lost enough friends already.~ EXTERN BFSMK BFSMk2.GladYouWerent
++ ~More bodies between me and my torturer would have been welcome.~ EXTERN BFSMK BFSMk2.GladYouWerent
++ ~I have no further need for your company.~ EXTERN BFSMK BFSMk2.NoTeamUp

CHAIN BFSMK BFSMk2.GladYouWerent
~Warned you, didn't I? The too-talls are fickle. But you're still alive if a little worse-for-wear.~ 
= ~Snuck in through the sewers to find you. Came upon these ones instead. Not the smartest of goblins. Even by our standards.~  
== BFSGB2 ~Whassat sup'd to mean?~
== BFSMK ~I said. Spit. It. Out.~
END
++ ~I could use your help, M'Khiin, if you're willing to join again.~ EXTERN BFSMK BFSMk2.TeamUp2
++ ~I'll leave you to it then.~ EXTERN BFSMK BFSMk2.LeaveMeAlone

CHAIN BFSMK BFSMk2.TeamUp2
~I followed you all this way, didn't I?~
= ~Might need your help first though. There are other goblins further in. They're the not-friendly kind. Need to deal with them or these two won't be safe.~ 
END
++ ~Then our path is set. Welcome back, M'Khiin.~ EXTERN BFSMK BFSMk2.IsADeadOne2

CHAIN BFSMK BFSMk2.IsADeadOne2
~Good to be back.~ 
== BFSGOB ~You're leaving us?~
== BFSMK ~Yes. But I'm also protecting you. Stay here and don't start any trouble.~
== BFSGB2 ~Me? Never! Him though...~
== BFSGOB ~Hey!~
END
++ ~Are you sure they'll be safe without you?~ EXTERN BFSMK BFSMk2.JoinUs
++ ~Can we move this along?~ EXTERN BFSMK BFSMk2.JoinUs

