BEGIN BFSMK25P

/* M'Khiin is kicked from the party */ 
IF ~Global("BFSMKKickedOutTOB","GLOBAL",0)~ BFSMk.KickedFromPartyTOB
SAY ~You want me to go?~ [BD57214]
++ ~No. It seems we had a misunderstanding. Please stay.~ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + ~Just wait here. I'll be back soon.~ DO ~SetGlobal("BFSMKKickedOutTOB","GLOBAL",1) MoveToPointNoInterrupt([2551.1333]) Face(0)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Just wait here. I'll be back soon.~ DO ~SetGlobal("BFSMKKickedOutTOB","GLOBAL",1)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~I'm sending you back to the Pocket Plane.~ DO ~SetGlobal("BFSMKKickedOutTOB","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2551.1333],0)~ EXIT 
END

/* Rejoin Dialogue */  
IF ~Global("BFSMKKickedOutTOB","GLOBAL",1)~ BFSMk.RejoinPartyTOB
SAY ~Still here. Do you want me to join?~
++ ~Yes, please, join me.~ + BFSMk.RejoinYesTOB
++ ~Not at the moment.~ + BFSMk.RejoinNoTOB
END 

IF ~~ BFSMk.RejoinYesTOB
SAY ~I'll go with you long as you'll have me.~
IF ~~ DO ~SetGlobal("BFSMKKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ BFSMk.RejoinNoTOB
SAY ~I'll be here.~
IF ~~ EXIT
END
