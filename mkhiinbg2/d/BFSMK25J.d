BEGIN BFSMK25J

/* 
  Scenery Talks 
               */
/* Saradush */ 
IF ~Global("BFSSaradushTalk","GLOBAL",2)~ THEN BEGIN BFSMk2.SaradushDiscussion
SAY ~Feels good to be moving again. The elves weren't cruel ...but their silence spoke much.~ 
++ ~We saved their city. The least they could offer was shelter in return.~ + BFSMk2.UDeserveBetter
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + ~It wasn't the homecoming I hoped for. There was no belonging, not even among my own kind.~ + BFSMk2.KindredSpirits
+ ~!Race(Player1,ELF) !Race(Player1,HALF_ELF)~ + ~Elves only care for their own kind. We were always going to be seen as outsiders.~ + BFSMk2.UDeserveBetter
++ ~Irenicus was a monster of their making. Being on the receiving end of their ire, I now understand his anger.~ + BFSMk2.SeriousYikesLol
++ ~I'd prefer you let your silence speak too.~ EXIT
END 

IF ~~ THEN BEGIN BFSMk2.SeriousYikesLol
SAY ~He focused on his hatred. Can't start a new life that way. Have to cut away the rot before a wound can heal.~  
= ~The elves...~ 
IF ~~ + BFSMk2.UDeserveBetter
END

IF ~~ THEN BEGIN BFSMk2.KindredSpirits
SAY ~Worst wounds come from the people closest to you.~ 
IF ~~ + BFSMk2.UDeserveBetter
END

IF ~~ THEN BEGIN BFSMk2.UDeserveBetter
SAY ~They were hurt. Didn't want to be again. Striking out was easier for them. Doesn't make it right but that's often the way of things.~ 
IF ~~ + BFSMk2.Saradush
END

IF ~~ THEN BEGIN BFSMk2.Saradush
SAY ~Not like we could stay. Not with everyone out for your blood. It has to come to an end sometime.~ 
++ ~All the more reason for us to break this siege.~ + BFSMk2.BreakSiege
++ ~I don't care about the fate of the other Bhaalspawn, I only care about my own.~ + BFSMk2.CareSomething
++ ~Anyone who tries to use me will end up the same way Irenicus did.~ + BFSMk2.SaradushEnd
END

IF ~~ THEN BEGIN BFSMk2.BreakSiege
SAY ~Good. I never liked being caged.~ 
IF ~~ + BFSMk2.SaradushEnd
END

IF ~~ THEN BEGIN BFSMk2.SaradushEnd
SAY ~Step carefully, <CHARNAME>.~ 
IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ + BFSMk2.SaradushGood
IF ~!Alignment("BFSMK",NEUTRAL_GOOD)~ + BFSMk2.SaradushNeutral
END

IF ~~ THEN BEGIN BFSMk2.SaradushGood
SAY ~I'd like to save them. All of them. But saving you'd be enough.~
IF ~~ DO ~SetGlobal("BFSSaradushTalk","GLOBAL",3)~ EXIT
END 

IF ~~ THEN BEGIN BFSMk2.SaradushNeutral 
SAY ~Don't care what happens to them. Do care what happens to you though.~
IF ~~ DO ~SetGlobal("BFSSaradushTalk","GLOBAL",3)~ EXIT
END 

IF ~~ THEN BEGIN BFSMk2.CareSomething
SAY ~Long as you care about something.~ 
IF ~~ DO ~SetGlobal("BFSSaradushTalk","GLOBAL",3)~ EXIT
END 

/* Meet the Bhaalspawn  
Post claiming Yaga-Shura's heart, Pre-Nyalee reunion */ 
CHAIN IF ~Global("BFSMk2Siblings","GLOBAL",2)~ THEN BFSMK25J BFSMk.MeetTheBhaalspawn
~Reckon your kin might be worse than mine.~ 
END
++ ~You've only just come to that realization?~ EXTERN BFSMK25J BFSMk2.FamilyFeud
++ ~All families have skeletons. Ours simply aren't hidden in a closet.~ EXTERN BFSMK25J BFSMk2.SpookyScarySkeletons
+ ~!InParty("Sarevok") !InParty("Imoen2")~ + ~These other Bhaalspawn are not my family.~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople
+ ~InParty("Sarevok") InParty("Imoen2")~ + ~I do not consider any Bhaalspawn to be part of my family.~ EXTERN IMOEN25J BFSMk2.ExceptMaybeTheseOnes
+ ~!InParty("Sarevok") InParty("Imoen2")~ + ~The only sibling I acknowledge is Imoen.~ EXTERN IMOEN25J BFSMk2.ImoenRemainsBestSister
+ ~InParty("Sarevok") InParty("Imoen2")~ + ~The only sibling I acknowledge is Imoen.~ EXTERN IMOEN25J BFSMk2.ImoenRemainsBestSisterSarevokJudgesYou
+ ~InParty("Sarevok") InParty("Imoen2")~ + ~The only siblings I acknowledge are Imoen and Sarevok.~ EXTERN IMOEN25J BFSMk2.BegrudgingBro 

CHAIN IMOEN25J BFSMk2.ImoenRemainsBestSister
~Aww! I feel the same way little <PRO_BROTHERSISTER>.~ 
END
IF ~~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople

CHAIN IMOEN25J BFSMk2.ImoenRemainsBestSisterSarevokJudgesYou
~Aww! I feel the same way little <PRO_BROTHERSISTER>.~ 
== SAREV25J ~Fool.~
== IMOEN25J ~Betcha you're just jealous.~ 
END
IF ~~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople

CHAIN IMOEN25J BFSMk2.BegrudgingBro
~Aww! I feel the same way little <PRO_BROTHERSISTER>.~ 
== IMOEN25J ~At least on the first part. I'm happy to pretend that Sarevok isn't related to us.~
== SAREV25J ~Fool.~
== IMOEN25J ~Betcha you're just jealous.~
END
IF ~~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople

CHAIN IMOEN25J BFSMk2.ExceptMaybeTheseOnes
~That's no way to talk about your favourite sibling! This whole Bhaalspawn mess has been a drag. The only good part is learning we're actually related now.~ 
== SAREV25J ~Careful, dear sister. Blood ties are not so easily severed once you lay claim to them.~
== IMOEN25J ~Sarevok though? Him I could do without.~ 
END
IF ~~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople 

CHAIN BFSMK25J BFSMk2.FamilyFeud
~Goblins are drawn to the same things. Death. Betrayal. Destruction. Makes for tough competition.~ 
END
IF ~~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople

CHAIN BFSMK25J BFSMk2.SpookyScarySkeletons
~Pretend you don't know them. Might even be true in your case.~ 
END
IF ~~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople

CHAIN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople
~So what's our plan? Sooner or later we'll have to face them.~
END
++ ~If the others can be reasoned with, I'd prefer to talk with them.~ EXTERN BFSMK25J BFSMk2.ReasonablePeople
++ ~We attack them before they attack us.~ EXTERN BFSMK25J BFSMk2.SolidStrategy 
++ ~No plans. We go in and adapt as needed.~ EXTERN BFSMK25J BFSMk2.Yolo

CHAIN BFSMK25J BFSMk2.ReasonablePeople
~Doubt they're much for talking, but I'll follow your lead.~ 
END
IF ~~ EXTERN BFSMK25J BFSMk2.ThereCanBeOnlyOne

CHAIN BFSMK25J BFSMk2.SolidStrategy
~Don't much care for needless violence. Likely the only solution in this case though.~ 
END
IF ~~ EXTERN BFSMK25J BFSMk2.ThereCanBeOnlyOne

CHAIN BFSMK25J BFSMk2.Yolo
~Surviving is the end goal.~ 
END
IF ~~ EXTERN BFSMK25J BFSMk2.ThereCanBeOnlyOne
 
CHAIN BFSMK25J BFSMk2.ThereCanBeOnlyOne
~No sense in waiting then. We need to take back the heart. Let's hope the witch wasn't lying. Facing down an invincible giant isn't my idea of a good time.~
DO ~SetGlobal("BFSMk2Siblings","GLOBAL",3)~
EXIT		 
   
/*
  Interjections
               */			   
// Saradush, Orphan & Dad
I_C_T ORPHAN1 3 BFSMKORPHAN1
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Soul's still nearby. He doesn't want to leave his kid. Should be easy to call him back - if we have the right magic.~
END

I_C_T ORPHAN2 1 BFSMKORPHAN2
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Least he admits he was wrong. Often easier not to.~
END
			   
// Saradush, Bartender 
I_C_T SARBAR01 0 BFSMKSARBAR1
== SARBAR01 IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~...the goblin may stay. We have had worse sorts around here lately. But, if it breaks anything, I'm holding you responsible.~
END

// Saradush, Bhaalspawn
I_C_T SARBHA02 1 BFSMKSARBHA1
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Can't change what you are just by wishing. Need to accept it.~
END

// Saradush, Volo
EXTEND_TOP SARVOLO 9 #5
+ ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ + ~Tell me about M'Khiin.~ + BFSMKVoloBio
END

CHAIN SARVOLO BFSMKVoloBio
~Goblins are such fascinating creatures, too often overlooked, and none more-so than M'Khiin Grubdoubler. Leaving behind the cruelty of her tribe, she joined <CHARNAME> during <PRO_HISHER> travels, rising to heights of power believed unattainable by goblinkind.~
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Should've known I'd end up a footnote in someone else's story.~
EXTERN SARVOLO 9

// Saradush, Spirit
I_C_T SARSPIR 0 BFSMK2Spirit1
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Can't tell much. Spirit's not talking right. He has some kind of...head trauma?~
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~One thing's clear. He has unfinished business. We tend to that then he passes on.~
== SARSPIR IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~One thing's clear. He has unfinished business. We tend to that then he passes on.~
END

// Saradush, Melissan
I_C_T SARMEL01 34 BFSMKSARMEL1
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Shouldn't be shouting at us. They started it.~
END

// Solar, Throne of Bhaal, Finale
I_C_T FINSOL01 27 BFSMK2Solar1
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN ~Lots you could do with that kind of power. Lots you could do without it too. Only wrong option is not choosing for yourself. Don't live with regret.~
END
