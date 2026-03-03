EXTEND_TOP FATESP 6 #15
+ ~!Dead("BFSMK") !InMyArea("BFSMK") Global("BFSKinSummonedTOB","GLOBAL",0)~ + ~Bring me M'Khiin Grubdoubler, the goblin Shaman.~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("BFSMK25",[1999.1228],0) 
SetGlobal("BFSKinSummonedTOB","GLOBAL",1)~ GOTO 8
END
