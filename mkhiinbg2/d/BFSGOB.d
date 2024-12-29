BEGIN BFSGOB

IF ~IsGabber(Player1) RandomNum(3,1)~ BFSGob.1    			
SAY @7 /* Head hurts. */ 
IF ~~ EXIT
END

IF ~IsGabber(Player1) RandomNum(3,2)~ BFSGob.2  			
SAY @8 /* *hic* */ 
IF ~~ EXIT
END

IF ~IsGabber(Player1) RandomNum(3,3)~ BFSGob.3  			
SAY @9 /* Don't speak common. */ 
++ @10 /* You literally just spoke it. */ + BFSGob.4
++ @11 /* ... */ + BFSGob.5
END

IF ~~ BFSGob.4
SAY @12 /* Nuh-uh. */
IF ~~ EXIT
END

IF ~~ BFSGob.5
SAY @13 /* What? I don't! */
IF ~~ EXIT
END
