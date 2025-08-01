BEGIN BFSMK25J

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
