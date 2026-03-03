BEGIN BFSMKP

/* Breaking Point Reached Dialogue */ 
IF ~Global("BFSMKLeaves","GLOBAL",0) HappinessLT(Myself,-299)~ BFSMk.BetterOnMyOwn
SAY ~You're gonna get me killed. I'm better on my own.~ [BD67767]
IF ~~ DO ~AddJournalEntry(@100002, QUEST_DONE) EscapeArea()~ EXIT
END

/* Kicked Out Dialogue */ 
IF ~Global("BFSMKKickedOut","GLOBAL",0)~ BFSMk.KickedFromParty
SAY ~You want me to go?~ [BD57214]
++ ~No. It seems we had a misunderstanding. Please stay.~ DO ~JoinParty()~ EXIT
+ ~!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")~ + ~Wait for me in the sewers.~ DO ~SetGlobal("BFSMKKickedOut","GLOBAL",1) MoveGlobal("AR0701","BFSMK",[2776.1537])~ EXIT   
END  

/* Rejoin Dialogue */
IF ~Global("BFSMKKickedOut","GLOBAL",1)~ BFSMk.RejoinParty
SAY ~Still here. Do you want me to join?~
++ ~Yes, please, join me.~ + BFSMk.RejoinYes
++ ~Not at the moment.~ + BFSMk.RejoinNo
END 

IF ~~ BFSMk.RejoinYes
SAY ~I'll go with you long as you'll have me.~
IF ~~ DO ~SetGlobal("BFSMKKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ BFSMk.RejoinNo
SAY ~I'll be here.~
IF ~~ EXIT
END
