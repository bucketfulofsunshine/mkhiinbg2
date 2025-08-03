BEGIN BFSMKB25

/* Anomen, Lawful Good 
M'Khiin arc unfinished */
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Anomen",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Alignment("Anomen",LAWFUL_GOOD)
!GlobalGT("BFSMkPlanesTalk","GLOBAL",1)
Global("BFSMkAnomenToB1","GLOBAL",0)~ THEN BANOME25 BFSMkAnomenToB1  
~The end draws ever closer. What will you do when the battles are over, M'Khiin?~  
DO ~SetGlobal("BFSMkAnomenToB1","GLOBAL",1)~  
== BFSMKB25 ~You think there's an after for someone like me? Goblins don't get happy endings. I'll wander on, with <CHARNAME> if <PRO_HESHE> will let me. Same as I always have.~  
== BANOME25 ~That's a grim way to live. Have you never wished for more?~  
== BFSMKB25 ~I count the steps, not the path. One foot forward. Then the next.~
EXIT  

/* Anomen, Lawful Good
M'Khiin arc fininished */
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Anomen",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Alignment("Anomen",LAWFUL_GOOD)
GlobalGT("BFSMkPlanesTalk","GLOBAL",1)
Global("BFSMkAnomenToB1","GLOBAL",0)~ THEN BANOME25 BFSMkAnomenToB1  
~The end draws ever closer. What will you do when the battles are over, M'Khiin?~  
DO ~SetGlobal("BFSMkAnomenToB1","GLOBAL",1)~  
== BFSMKB25 ~Been thinking I might walk the planes. See what else is out there. Find other goblins.~
== BANOME25 ~That is no small undertaking.~  
== BFSMKB25 ~Doesn't have to be, just has to be worthwhile.~
EXIT  


/* Haer'Dalis, hinting towards M'Khiin's epilogue */ 
CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMKHaerDalisToB1","GLOBAL",0)~ THEN BFSMKB25 BFS.MkHaerDalisToB1
~What's Sigil like?~
DO ~SetGlobal("BFSMKHaerDalisToB1","GLOBAL",1)~
== BHAERD25 ~What stirs such curiosity in you now, pigeon?~
== BFSMKB25 ~Ain't here, it's out there. And I've only ever known it here. So what's it like?~
== BHAERD25 ~There's never a dull moment. Devils, fresh from the Blood War, saunter into taverns still carrying the scent of brimstone. Angels descend from Mount Celestia to cure what ails they can.~
== BHAERD25 ~They both co-exist while the Dabus sweep the streets, and bury more mysteries beneath layers of cobblestone.~
== BHAERD25 ~Sigil defies knowing. Therein lies its charm.~  
== BFSMKB25 ~What of the people? Do they all fit in?~  
== BHAERD25 ~Fit in? No, pigeon. But stand out? Rarely. Even the most peculiar find their place within its embrace.~  
== BFSMKB25 ~I'd like to visit a place like that. Maybe someday.~
EXIT

/* Imoen */
CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMKImoenToB1","GLOBAL",0)~ THEN BFSMKB25 BFS.MkImoenToB1
~Nightmares still haunting you?~
DO ~SetGlobal("BFSMKImoenToB1","GLOBAL",1)~
== BIMOEN25 ~The tossing and turning gave that away, huh? Every night is the same: <CHARNAME> screaming, Irenicus binding us with chains, the whisper of blood and... Waking up's the only mercy.~
== BFSMKB25 ~You can't keep avoiding what you are.~ 
== BIMOEN25 ~I get that. Trust me, I do.~ 
== BFSMKB25 ~Take this. Tastes like dirt but it'll knock you out. No dreams, no nightmares.~ 
== BIMOEN25 ~Worth a shot, I guess. Thanks for caring, M'Khiin.~
EXIT

/* Jaheira */ 
CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkJaheiraToB1","GLOBAL",0)~ THEN BFSMKB25 BFSMkJaheiraToB1
~You've lost more than most. But you keep moving. Most would've broken by now.~ 
DO ~SetGlobal("BFSMkJaheiraToB1","GLOBAL",1)~
== BJAHEI25 ~Was there intended to be a question in there?~
== BJAHEI25 ~*sigh* I remain with <CHARNAME> because I believe that what we do matters. That it *must* matter.~ 
== BFSMKB25 ~...or the dead would make for bad company.~
== BJAHEI25 ~What about you? You have no personal stake in <CHARNAME>'s fight.~
== BFSMKB25 ~Might be I'm just stubborn. Might be I don't have much to lose.~ 
EXIT

/* Jan */
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkJanToB1","GLOBAL",0)~ THEN BJAN25 BFSMkJanToB1
~Tell me, M'Khiin, do goblins have traditional cuisine?~ 
DO ~SetGlobal("BFSMkJanToB1","GLOBAL",1)~
== BFSMKB25 ~No. We eat what we find, then hope we don't die from it.~
== BFSMKB25 ~I only learned how to make a proper stew after leaving my tribe.~
== BJAN25 ~A balanced diet is important, I'll have you know. Perhaps I can interest you in some boiled turnips? I've been working on a new cookbook, sure to be a bestseller, and...~ 
== BFSMKB25 ~Always about the turnips with you.~ 
== BJAN25 ~*sigh* A genius is often misunderstood in their time.~ 
EXIT
