BEGIN BFSMK25

IF ~Global("BFSKinSummonedTOB","GLOBAL",1)~ BFSMk2.TOBSummon
SAY ~Grubdoubler, here.~ [BD67753]
= ~...Wherever here is. Don't like the look of the place.~
++ ~M'Khiin! Just the goblin I was looking for. I could really use your help.~ DO ~SetGlobal("BFSKinSummonedTOB","GLOBAL",2)~ + BFSMk2.TOBSummon1
++ ~Fall into line, goblin, we have work that needs doing.~ DO ~SetGlobal("BFSKinSummonedTOB","GLOBAL",2)~ + BFSMk2.TOBSummon2
++ ~Hello again, M'Khiin, this is my Pocket Plane. I need you to stay here until I have need of your skills.~ DO ~SetGlobal("BFSKinSummonedTOB","GLOBAL",2)~ + BFSMk2.TOBSummon3
END

IF ~~ BFSMk2.TOBSummon1
SAY ~Then you have it.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ BFSMk2.TOBSummon2
SAY ~I'll be here.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ BFSMk2.TOBSummon3
SAY ~Guess I'll find a spot and burrow in.~
IF ~~ DO ~MoveToPointNoInterrupt([2551.1333]) Face(0)~ EXIT 
END
