BEGIN BFSGB2

IF ~IsGabber(Player1) RandomNum(3,1)~ BFSGob2.1    			
SAY @0 /* Not safe here. */ 
IF ~~ EXIT
END

IF ~IsGabber(Player1) RandomNum(3,2)~ BFSGob2.2  			
SAY @1 /* What do *you* want? */ 
IF ~~ EXIT
END

IF ~IsGabber(Player1) RandomNum(3,3)~ BFSGob2.3  			
SAY @2 /* City's no place for a goblin */ 
++ @3 /* You said it. You should leave. */ + BFSGob2.4
++ @4 /* Nonsense. Stay as long as you want. */ + BFSGob2.5
END

IF ~~ BFSGob2.4
SAY @5 /* No way! */
IF ~~ EXIT
END

IF ~~ BFSGob2.5
SAY @6 /* I'm gonna. */
IF ~~ EXIT
END
