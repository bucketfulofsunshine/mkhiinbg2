BEGIN BFSMK25P

/* M'Khiin is kicked from the party */ 
IF ~Global("BFSMKKickedOutTOB","GLOBAL",0)~ BFSMk.KickedFromPartyTOB
SAY @51 /* You want me to go? */
++ @52 /* No. It seems we had a misunderstanding. Please stay. */ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + @53 /* Just wait here. I'll be back soon. */ DO ~SetGlobal("BFSMKKickedOutTOB","GLOBAL",1) MoveToPointNoInterrupt([2551.1333]) Face(0)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @53 /* Just wait here. I'll be back soon. */ DO ~SetGlobal("BFSMKKickedOutTOB","GLOBAL",1)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @54 /* I'm sending you back to the Pocket Plane. */ DO ~SetGlobal("BFSMKKickedOutTOB","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2551.1333],0)~ EXIT 
END

/* Rejoin Dialogue */  
IF ~Global("BFSMKKickedOutTOB","GLOBAL",1)~ BFSMk.RejoinPartyTOB
SAY @55 /* Still here. Do you want me to join? */
++ @56 /* Yes, please, join me. */ + BFSMk.RejoinYesTOB
++ @57 /* Not at the moment. */ + BFSMk.RejoinNoTOB
END 

IF ~~ BFSMk.RejoinYesTOB
SAY @58 /* I'll go with you long as you'll have me. */
IF ~~ DO ~SetGlobal("BFSMKKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ BFSMk.RejoinNoTOB
SAY @20 /* I'll be here. */
IF ~~ EXIT
END
