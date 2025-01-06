BEGIN BFSMKB25

/* Number of Banters per NPC 
Aerie - 1
Anomen -1 
Haer'Dalis - 1
Imoen - 1
Jaheira - 1
Jan - 1
Keldorn - 1
Sarevok - 2
Rasaad - 1 */ 

/* Aerie */ 
CHAIN  
IF ~InParty("Aerie")  
See("Aerie")  
!StateCheck("Aerie",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Global("BFSMkAerieToB1","GLOBAL",0)~ THEN BFSMKB25 BFSMkAerieToB1  
~You're tougher now. More sure of who you are.~  
DO ~SetGlobal("BFSMkAerieToB1","GLOBAL",1)~  
== BAERIE25 ~I've come a long way, haven't I? But so have we all.~
== BAERIE25 ~I must have seemed so silly at first. Naive even. Crying about what I'd lost.~  
== BFSMKB25 ~We need to learn from our past. Accept it. Or we can't move forward.~  
== BAERIE25 ~You're right. My past, my hardships, they've shaped me. I used to shy away from bloodshed. From difficult decisions.~
== BAERIE25 ~I won't seek battle out. But, sometimes, it's the only way to protect what matters.~  
== BFSMKB25 ~Even a healer carries a weapon if the world's cruel enough.~  
== BFSMKB25 ~And the times we're living through? They've been plenty cruel.~ 
EXIT  

/* Anomen, Lawful Good */
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Anomen",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Alignment("Anomen",LAWFUL_GOOD)
Global("BFSMkAnomenToB1","GLOBAL",0)~ THEN BANOME25 BFSMkAnomenToB1  
~The end draws ever closer. What will you do when the battles are over, M'Khiin?~  
DO ~SetGlobal("BFSMkAnomenToB1","GLOBAL",1)~  
== BFSMKB25 ~You think there's an after for someone like me? Goblins don't get happy endings. I'll wander on. Same as I always have.~  
== BANOME25 ~That is a defeatist attitude. Surely you've thought of something beyond the next fight?~  
== BFSMKB25 IF ~!GlobalGT("BFSMkPlanesTalk","GLOBAL",1)~ ~I think about surviving the next fight. Anything after that? Consider it a bonus.~
== BFSMKB25 IF ~GlobalGT("BFSMkPlanesTalk","GLOBAL",1)~ ~Been thinking I might take a trip through the planes. See what else is out there. Learn about other goblins.~
== BFSMKB25 IF ~GlobalGT("BFSMkPlanesTalk","GLOBAL",1)~ ~Have to fight to earn it. But it'll be worth it.~
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
== BFSMKB25 ~It's not here. It's out there. I've only ever known it here. So what's it like?~
== BHAERD25 ~There's never a dull moment. Imagine thousands of voices whispering through the cracks of every stone. Devils, fresh from the Blood War, saunter into shadowed dens - still trailing the scent of fire and death.~ 
== BHAERD25 ~Angels descend from Mount Celestia to mend what wounds they can. Dabus sweep the streets clean and, in doing so, bury another mystery beneath layers of cobblestone.~
== BHAERD25 ~Sigil defies knowing. Therein lies its charm.~  
== BFSMKB25 ~What of the people? Do they all fit in?~  
== BHAERD25 ~Fit in? No, pigeon. But stand out? Rarely. Even the most peculiar find their place within Sigil's circle. Even the extraordinary becomes the mundane.~  
== BFSMKB25 ~Would like to visit a place like that. Maybe one day, I'll see for myself.~
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
== BIMOEN25 ~I supposed the tossing-and-turning is kind of a giveaway. It's not easy getting any rest when all your dreams are filled with blood and death.~
== BFSMKB25 ~Avoiding sleep isn't gonna fix anything.~ 
== BIMOEN25 ~I get that. Trust me, I do.~ 
== BFSMKB25 ~Here. Take this. Tastes like dirt but it'll knock you out. No dreams. No nightmares.~ 
== BIMOEN25 ~Any chance you've got something in your pack to make it taste less... well, awful?~ 
== BFSMKB25 ~No promises but I can dig around.~ 
== BIMOEN25 ~I suppose I'm drinking it either way. But, hey, thanks. For the offer. And for noticing.~ 
== BFSMKB25 ~Whole party's noticed by now.~
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
~You've lost a lot. Others would have stumbled. You're still here though.~ 
DO ~SetGlobal("BFSMkJaheiraToB1","GLOBAL",1)~
== BJAHEI25 ~Because I believe that my efforts make a difference.~ 
== BFSMKB25 ~Even when everything gets taken away?~ 
== BJAHEI25 ~I still have <CHARNAME>. I have the promises I made to Khalid and to Gorion.~ 
== BJAHEI25 ~What about you, M'Khiin? You have no personal stake in this fight. Why take up an impossible battle?~
== BFSMKB25 ~Might be I'm stubborn.~ 
== BJAHEI25 ~Stubbornness has its place too.~ 
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
~Tell me, M'Khiin, do goblins have recipes of their own?~ 
DO ~SetGlobal("BFSMkJanToB1","GLOBAL",1)~
== BFSMKB25 ~Not really. We scrounge and eat whatever we can find. Beggars can't be choosers.~ 
== BJAN25 ~A healthy diet is important, you know? We can't have you eating garbage after all. Perhaps I can interest you in some boiled turnips? I've been working on a new cookbook...~ 
== BFSMKB25 ~Always about the turnips with you.~ 
== BJAN25 ~*sigh* A genius is often misunderstood in their time.~ 
EXIT

/* Keldorn */ 
CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
Global("BFSMkKeldornToB1","GLOBAL",0)~ THEN BFSMKB25 BFSMkKeldornToB1
~Do you have any regrets?~ 
DO ~SetGlobal("BFSMkKeldornToB1","GLOBAL",1)~
== BKELDO25 ~Certainly. One doesn't reach my age without accumulating a few mistakes along the way.~ 
== BFSMKB25 ~Like what?~ 
== BKELDO25 ~Not being present when my wife and daughters needed me. I thought I was protecting them, even when fighting battles far from home, but I should have a father first and a paladin second.~ 
== BFSMKB25 ~Think you can make up for it?~ 
== BKELDO25 ~I do not know how many years I have left ...but I hope to try.~ 
EXIT

/* Sarevok, Chaotic Evil */ 
CHAIN
IF ~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
!Alignment("Sarevok",CHAOTIC_GOOD)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkSarevokToB1","GLOBAL",0)~ THEN BFSMKB25 BFSMkSarevokToB1
~Guess you don’t care much what the rest of us think.~ 
DO ~SetGlobal("BFSMkSarevokToB1","GLOBAL",1)~
== BSAREV25 ~You are quite observant for a goblin.~
== BFSMK25 ~Big mistake.~
== BSAREV25 ~Is there some point to this conversation?~ 
== BFSMK25 ~How'd you plan to make history if there was no one left to tell it?~ 
== BSAREV25 ~There's more than one way to leave one's mark. Through word or through blood.~ 
== BFSMKB25 ~So that's how you ended up dead? Thinking you were powerful enough to do whatever you wanted?~ 
== BSAREV25 ~I have clawed by way back to the world of the living. My strength and determination speaks for itself.~ 
== BFSMKB25 ~Didn't save you the first time.~ 
== BSAREV25 ~Do not mistake my defeat for failure. It was a temporary setback. One I have since rectified.~ 
== BFSMKB25 ~For now. But you keep thinking the same way, then you're gonna end back where you started.~ 
EXIT

/* Sarevok, Chaotic Good
Following on from the earlier conversation */
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("BFSMK",CD_STATE_NOTVALID)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
Alignment("Sarevok",CHAOTIC_GOOD)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkSarevokToB2","GLOBAL",0)
Global("BFSMkSarevokToB1","GLOBAL",1)~ THEN BSAREV25 BFSMkSarevokToB2
~I dismissed your words as insignificant at the time. Yet, with hindsight, I see the folly in my actions.~ 
DO ~SetGlobal("BFSMkSarevokToB2","GLOBAL",1)~
== BFSMKB25 ~...Huh?~ 
== BSAREV25 ~You dared to claim that, if I wish to alter my fate, I have to change the man that I am. The man that I *was*.~ 
== BFSMKB25 ~Not that difficult. You do the same thing, you get the same outcome. Even a goblin can figure it out.~ 
== BSAREV25 ~Evidently.~ 
== BFSMKB25 ~Suppose <CHARNAME>'s proud of you. Couldn't have been easy to accept.~ 
== BSAREV25 ~...~
== BSAREV25 ~It wasn't.~
EXIT

/* EE NPCs */
/* Rasaad */
CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkRasaadToB1","GLOBAL",0)~ THEN BFSMKB25 BFSMkRasaadToB1
~You're always trying to protect people. Don't you ever wonder if they're worth it?~ 
DO ~SetGlobal("BFSMkRasaadToB1","GLOBAL",1)~
== BRASAA25 ~I do not fight for others because they are perfect, but because they deserve the chance to become better.~ 
== BFSMKB25 ~Some stay rotten though. They don't want to be change.~ 
== BRASAA25 ~There are those who cannot be saved. But if I turn away too quickly, how many would I miss who might still have a change of heart?~ 
EXIT
