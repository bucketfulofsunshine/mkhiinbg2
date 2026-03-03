BEGIN BFSGB2

IF ~IsGabber(Player1) RandomNum(3,1)~ BFSGob2.1    			
SAY ~Not safe here.~ 
IF ~~ EXIT
END

IF ~IsGabber(Player1) RandomNum(3,2)~ BFSGob2.2  			
SAY ~What do you want?~ 
IF ~~ EXIT
END

IF ~IsGabber(Player1) RandomNum(3,3)~ BFSGob2.3  			
SAY ~City's no place for a goblin~ 
++ ~You said it. You should leave.~ + BFSGob2.4
++ ~Nonsense. Stay as long as you want.~ + BFSGob2.5
END

IF ~~ BFSGob2.4
SAY ~No way!~
IF ~~ EXIT
END

IF ~~ BFSGob2.5
SAY ~I'm gonna.~
IF ~~ EXIT
END
