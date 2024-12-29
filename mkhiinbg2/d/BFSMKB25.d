BEGIN BFSMKB25

/* Aerie */ 
CHAIN  
IF ~InParty("Aerie")  
See("Aerie")  
!StateCheck("Aerie",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Global("BFSMkAerieToB1","GLOBAL",0)~ THEN BFSMKB25 BFSMkAerieToB1  
@59 /* You've become stronger. More sure of yourself. */  
DO ~SetGlobal("BFSMkAerieToB1","GLOBAL",1)~  
== BAERIE25 @60 /* I must have seemed so silly. Naive even. Crying about what I'd lost, not realizing what lay ahead. */  
== BFSMKB25 @61 /* Staying in your circus might have been easier. You wouldn't have learned that way though. */  
== BAERIE25 @62 /* My past, my hardships, they've shaped me. I used to shy away from bloodshed. From difficult decisions. */
== BAERIE25 @63 /* I won't seek battle out. But, sometimes, it's the only way to protect what matters. */  
== BFSMKB25 @64 /* Even a healer has to carry a weapon if the world's cruel enough. */  
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
@65 /* The end draws ever closer. What will you do when the battles are over, M'Khiin? */  
DO ~SetGlobal("BFSMkAnomenToB1","GLOBAL",1)~  
== BFSMKB25 @66 /* You think there's an after for someone like me? Goblins don't get happy endings. I'll wander on - same as I always have. */  
== BANOME25 @67 /* That is a defeatist attitude. Surely you've thought of something beyond the next fight? */  
== BFSMKB25 @68 /* I think about surviving the next fight. Anything after that? Consider it a bonus. */  
EXIT  

/* Cernd */ 
CHAIN  
IF ~InParty("Cernd")  
See("Cernd")  
!StateCheck("Cernd",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Global("BFSMkCerndToB1","GLOBAL",0)~ THEN BFSMKB25 BFSMkCerndToB1  
@69 /* Figures. Not even facing down gods is gonna rattle you? */  
DO ~SetGlobal("BFSMkCerndToB1","GLOBAL",1)~  
== BCERND25 @70 /* Peace is a state of mind, M'Khiin. Destruction births renewal. Even the end is but a new beginning. */  
== BFSMKB25 @71 /* Long way of saying no. */  
EXIT  

/* Haer'Dalis, hinting towards M'Khiin's epilogue */ 
CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMKHaerDalisToB1","GLOBAL",0)~ THEN BFSMKB25 BFS.MkHaerDalisToB1
@72 /* What's Sigil like? */
DO ~SetGlobal("BFSMKHaerDalisToB1","GLOBAL",1)~
== BHAERD25 @73 /* What stirs such curiosity in you now, pigeon? */
== BFSMKB25 @74 /* It's not here. It's out there. I've only ever known it here. So what's it like? */
== BHAERD25 @75 /* There's never a dull moment. Imagine thousands of voices whispering through the cracks of every stone. Devils, fresh from the Blood War, saunter into shadowed dens - still trailing the scent of fire and death. */ 
== BHAERD25 @76 /* Angels descend from Mount Celestia to mend what wounds they can. Dabus sweep the streets clean and, in doing so, bury another mystery beneath layers of cobblestone. */
== BHAERD25 @77 /* Sigil defies knowing. Therein lies its charm. */  
== BFSMKB25 @78 /* What of the people? Do they all fit in? */  
== BHAERD25 @79 /* Fit in? No, pigeon. But stand out? Rarely. Even the most peculiar find their place within Sigil's circle. Even the extraordinary becomes the mundane. */  
== BFSMKB25 @80 /* Would like to visit a place like that. Maybe one day, I'll see for myself. */
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
@81 /* You've lost a lot. Others would have stumbled. You're still here though. */ 
DO ~SetGlobal("BFSMkJaheiraToB1","GLOBAL",1)~
== BJAHEI25 @82 /* Because I believe that my efforts make a difference. */ 
== BFSMKB25 @83 /* Even when everything gets taken away? */ 
== BJAHEI25 @84 /* You would not have left your tribe if you did not believe in something better. */ 
== BFSMKB25 @85 /* Might just be I'm stubborn. */ 
== BJAHEI25 @86 /* Stubbornness has its place too. Especially if it keeps us going. */ 
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
@87 /* Tell me, M'Khiin, do goblins have recipes of their own? */ 
DO ~SetGlobal("BFSMkJanToB1","GLOBAL",1)~
== BFSMKB25 @88 /* Not really. We scrounge and eat whatever we can find. Beggars can't be choosers. */ 
== BJAN25 @89 /* A healthy diet is important, you know? We can't have you eating garbage after all. Perhaps I can interest you in some boiled turnips? I've been working on a new cookbook... */ 
== BFSMKB25 @90 /* Always about the turnips with you. */ 
== BJAN25 @91 /* *sigh* A genius is often misunderstood in their time. */ 
EXIT

/* Keldorn */ 
/* Why do you still have Keldorn in the party, OMG, let him rest
Let him try to heal his family
Sad banter because, honestly, worst ending for him IMHO */ 
CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
Global("BFSMkKeldornToB1","GLOBAL",0)~ THEN BFSMKB25 BFSMkKeldornToB1
@92 /* Do you have any regrets? */ 
DO ~SetGlobal("BFSMkKeldornToB1","GLOBAL",1)~
== BKELDO25 @93 /* Certainly. One doesn't reach my age without accumulating a few mistakes along the way. */ 
== BFSMKB25 @94 /* Like what? */ 
== BKELDO25 @95 /* Not being present when my wife and daughters needed me. I thought I was protecting them, even when fighting battles far from home, but I should have a father first and a paladin second. */ 
== BFSMKB25 @96 /* Think you can make up for it? */ 
== BKELDO25 @97 /* I do not know how many years I have left ...I can only try. */ 
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
@98 /* You think you're the strongest. That you don't have to care what anyone else thinks. */ 
DO ~SetGlobal("BFSMkSarevokToB1","GLOBAL",1)~
== BSAREV25 @99 /* Quite observant for a goblin. Strength is what elevates us. Without it, we are nothing, easily discarded by the world. */ 
== BSAREV25 @100 /* Only through power, through fear, can we leave our mark. */ 
== BFSMKB25 @101 /* That how you ended up dead? Thinking you were powerful enough to do whatever you wanted? */ 
== BSAREV25 @102 /* I have clawed by way back to the world of the living. My strength speaks for itself. */ 
== BFSMKB25 @103 /* Didn't save you the first time. */ 
== BSAREV25 @104 /* Do not mistake my defeat for failure. It was merely a temporary setback, one I've since rectified. */ 
== BFSMKB25 @105 /* For now. But you keep thinking the same way, then you're gonna end back where you started. */ 
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
@106 /* You're always trying to protect people. Don't you ever wonder if they're worth it? */ 
DO ~SetGlobal("BFSMkRasaadToB1","GLOBAL",1)~
== BRASAA25 @107 /* I do not fight for others because they are perfect, but because they deserve the chance to become better. */ 
== BFSMKB25 @108 /* Some stay rotten though. They don't want to be change. */ 
== BRASAA25 @109 /* There are those who cannot be saved. But if I turn away too quickly, how many would I miss who might still have a change of heart? */ 
EXIT
