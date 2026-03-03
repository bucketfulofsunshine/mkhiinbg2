BEGIN BFSGOB

IF ~IsGabber(Player1) RandomNum(3,1)~ BFSGob.1    			
SAY ~Head hurts.~ 
IF ~~ EXIT
END

IF ~IsGabber(Player1) RandomNum(3,2)~ BFSGob.2  			
SAY ~*hic*~ 
IF ~~ EXIT
END

IF ~IsGabber(Player1) RandomNum(3,3)~ BFSGob.3  			
SAY ~Don't speak common.~ 
++ ~You literally just spoke it.~ + BFSGob.4
++ ~...~ + BFSGob.5
END

IF ~~ BFSGob.4
SAY ~Nuh-uh.~
IF ~~ EXIT
END

IF ~~ BFSGob.5
SAY ~What? I don't!~
IF ~~ EXIT
END
