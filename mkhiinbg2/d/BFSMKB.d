BEGIN BFSMKB

/* M'Khiin's arc focuses on her accepting her place in the world. Recognizing she can enforce change - but only if she makes effort towards doing so. The banters should support and reflect her growth. Alternatively M'Khiin tries to help others along their arcs if possible. And, sometimes, just goes NOPE and yeets herself out of the conversation. */ 

/* Base BG2 NPCs */ 
// Aerie 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkAerie1","GLOBAL",0)~ THEN BAERIE BFSMkAerie1
@110 /* I heard you were imprisoned. Locked in a cage and kept as an exhibit. I - I'm so sorry. */
DO ~SetGlobal("BFSMkAerie1","GLOBAL",1)~
== BFSMKB @111 /* Heard you endured the same. That true? */
== BAERIE @112 /* When I was younger, yes, back when I still had my wings. People hadn't seen an Avariel before. That made me a curiosity. */
== BFSMKB @113 /* ...and not a person. */
== BFSMKB @114 /* Too many fools around. Always gawking at things that are different. */
== BFSMKB @115 /* You're free now though. */
== BAERIE @116 /* Yes, I am. We both are. And we'll make the world better for others, right? */
== BFSMKB IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN @117 /* Guess so. */ 
== BFSMKB IF ~!Alignment("BFSMK",NEUTRAL_GOOD)~ THEN @118 /* Don't see why. There's always going to be trouble. */
EXIT

// Anomen 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkAnomen1","GLOBAL",0)~ THEN BANOMEN BFSMkAnomen1
@119 /* I've slain my fair share of goblins. I never envisioned I would end up traveling with one. */
DO ~SetGlobal("BFSMKAnomen1","GLOBAL",1)~
== BFSMKB @120 /* Some goblins need slaying. Too much danger to everyone otherwise. Even themselves. */
== BANOMEN @121 /* You're being remarkably level-headed about this. Another quality I don't usually associate with your kind. */ 
== BFSMKB @122 /* Why wouldn't I be? Goblins have given me plenty of trouble. Same as you. */
== BFSMKB IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN @123 /* Wouldn't want them killed needlessly. But most are happy to hit first. */
== BANOMEN @124 /* You are a strange one, M'Khiin Grubdoubler. */
== BFSMKB @125 /* Not the first time I've heard that. Won't be the last either. */
EXIT


// Cernd
CHAIN 
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkCernd1","GLOBAL",0)~ THEN BCERND BFSMkCernd1
@126 /* Even a goblin should find solace within the forest's embrace. Yet you seem ill at ease. Why is that? */
DO ~SetGlobal("BFSMkCernd1","GLOBAL",1)~
== BFSMKB @127 /* Simple. Forests remind me of home. Never liked home. */
== BCERND @128 /* I understand more than you may realize. I, too, have turned from houses that didn't feel like home. But why not remain and nurture yours? Nature rewards well those serve her well. */
== BFSMKB @129 /* Didn't want to. Didn't have the power to. */
== BFSMKB IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN @130 /* Might be different now. Time will tell. */
EXIT

// Edwin
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkEdwin1","GLOBAL",0)~ THEN BEDWIN BFSMkEdwin1
@131 /* That I, the great Edwin Odesseiron, should be reduced to this! Travelling with a goblin of all things! (As though I haven't lowered my standard enough for these simians.) */
DO ~SetGlobal("BFSMkEdwin1","GLOBAL",1)~
== BFSMKB @132 /* Don't like travelling with you either, ant. */
== BEDWIN @133 /* Ant? What manner of comparison is this? (I don't expect someone of her middling intellect to offer a truly witty insult but surely…) */ 
== BFSMKB @134 /* You wear red. You're an irritant. Seems fitting to me. */ 
EXIT

// Haer'Dalis 1
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkHaerDalis2","GLOBAL",0)~ THEN BHAERDA BFSMkHaerDalis2
@135 /* What draws you to our flock, pigeon? You seem wholly out of place. */
DO ~SetGlobal("BFSMkHaerDalis2","GLOBAL",1)~
== BFSMKB @136 /* Not a pigeon. If you don't like me here, then *you* can leave. */
== BHAERDA @137 /* You misunderstand. I delight in your presence. I find it wonderfully chaotic. */
== BHAERDA @138 /* A goblin, removed from her own kind, shunned by the common folk. */
== BHAERDA @139 /* It would make for quite the tale. */
== BFSMKB @140 /* Not your story to share. You haven't lived it. */ 
== BHAERDA @141 /* I think you'll find my skills well-suited to the task. I will listen - and write - if you will tell. */ 
== BFSMKB @142 /* Don't have the words to spare really. */
EXIT

// Imoen
CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkImoen1","GLOBAL",0)~ THEN BFSMKB BFSMkImoen1
@143 /* People don't change unless they want to. For better or worse. */
DO ~SetGlobal("BFSMkImoen1","GLOBAL",1)~
== IMOEN2J @144 /* Are you talking to yourself there, M'Khiin? */
== BFSMKB @145 /* Talking to you. About being a Bhaalspawn. It won't change you. Not unless you want it to. */
== BFSMKB @146 /* Needed to be said, it's been eating at you. */
== IMOEN2J @147 /* It has been, hasn't I? It's just ... learning your dad's the God of Murder isn't the happiest of news. I can't imagine how <CHARNAME>'s dealt with the knowledge all this time. */
== BFSMKB @148 /* Least there's two of you now. Makes the burden lighter. You can carry it together. */
== BFSMKB @149 /* Doesn't matter who your parents were. You're still *you*. Long as you make that choice, stick to what you believe, the content doesn't change. */ 
== IMOEN2J @150 /* That's oddly comforting. Thank you, M'Khiin. */
EXIT

// Jaheira 
CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkJaheira1","GLOBAL",0)~ THEN BFSMKB BFSMkJaheira1
@151 /* Hard path you chose. Fighting for the balance. */
DO ~SetGlobal("BFSMkJaheira1","GLOBAL",1)~
== BJAHEIR @152 /* All worthwhile fights are - but I am strong and determined to succeed. Wars have been won with less. */
== BFSMKB @153 /* But your fight can't be won. Not in my lifetime. Not even in yours. Maybe never. */
== BJAHEIR @154 /* You don't strike me as someone who shies away from hardship. You left your tribe, difficult as that was. It's not a common among goblins. Do you regret it? */
== BFSMKB @155 /* No. Never. Had to be done. */
== BJAHEIR @156 /* Then you understand. */ 
EXIT

// Jan Jansen
// three goblins in a trenchcoat
CHAIN 
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkJan1","GLOBAL",0)~ THEN BJAN BFSMkJan1
@157 /* Goblin. Step closer and listen closely because do I have a deal for you! */
DO ~SetGlobal("BFSMkJan1","GLOBAL",1)~
== BFSMKB @158 /* Have a name. Might try to use it. */
== BJAN @159 /* There's no need for gratitude. Let no one ever claim Jan Jansen wasn't as much a philanthropist *cough* as a shrewd inventor and businessman. */
== BFSMKB @160 /* Hearing lots of words. Nothing of substance though. */
== BJAN @161 /* Patience. The sales pitch is as pivotal as the end product. But, to curb your curiosity, let me introduce you to... */
== BJAN @162 /* The Robe of Goblin Disguise. Too often have your kind been shunned within city limits - scorned and reviled. No longer. Three goblins can fit inside this comfortable... */ 
== BFSMKB @11 /* ... */
== BJAN @163 /* Where are you running off to? Get back here! I've yet to mention the deep pockets feature. */ 
EXIT

// Keldorn 
CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Alignment("BFSMK",NEUTRAL_GOOD)
Global("BFSMkKeldorn1","GLOBAL",0)~ THEN BFSMKB BFSMkKeldorn1
@164 /* Your armor is shiny. Heavy. Loud. But you haven't tried to kill me yet. Most who look like you do. */
DO ~SetGlobal("BFSMkKeldorn1","GLOBAL",1)~
== BKELDOR @165 /* The Order are sent to deal with goblin raids on occasion. Most end up being bloodier than I would prefer. Diplomacy has not been an option. */
== BFSMKB @166 /* Wouldn't be. Goblins don't want to listen. Hitting people is more fun. */
== BFSMKB @167 /* Doesn't answer my question though. You don't mind me being here. Why? */
== BKELDOR @168 /* Because I believe everyone is capable of kindness. Anyone can choose to be good regardless of their origin. Goblins are no exception. */
== BFSMKB @169 /* You think we're really capable of that? */
== BKELDOR @170 /* You have already proven it. And, where there's one, there will be others. */ 
EXIT

// Korgan
CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkKorgan1","GLOBAL",0)~ THEN BFSMKB BFSMkKorgan1
@171 /* You remind me of my tribe. Small. Brutal. Unpredictable. */
DO ~SetGlobal("O#BranKorgan1","GLOBAL",1)~
== BKORGAN @172 /* Ha! Now I'll be taking that as a compliment. */
== BFSMKB @173 /* Wasn't meant to be. */
EXIT

// Mazzy 
CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkMazzy1","GLOBAL",0)~ THEN BFSMKB BFSMkMazzy1
@174 /* You're tiny but mighty. I like that. */
DO ~SetGlobal("BFSMkMazzy1","GLOBAL",1)~
== BMAZZY @175 /* Well I've always believed one's size shouldn't determine one's valour. */
== BMAZZY @176 /* Those of smaller stature are every bit the equal of their larger counterparts. */ 
== BFSMKB @177 /* Not easy to realize when too-talls tower over us. */
== BMAZZY @178 /* Their viewpoint - or lack of it - does not determine our worth. */
== BFSMKB @179 /* Dunno. Seems like they'd see more from way up there. */
EXIT

// Minsc
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkMinsc1","GLOBAL",0)~ THEN BMINSC BFSMkMinsc1
@180 /* M'Khiin, Boo says you have a giant heart. How does it fit into your tiny body? */
DO ~SetGlobal("BFSMkMinsc1","GLOBAL",1)~
== BFSMKB @181 /* I dunno. It's always fit. You sure you heard right? */
== BMINSC @182 /* He spoke clearly. Boo is never wrong about these things. */
== BFSMKB @183 /* My heart's normal sized - far as I know. */ 
== BMINSC @184 /* Then we should ask him. …Oh! Looks like he has fallen asleep. */
== BFSMKB @185 /* Inside your pack? */
== BMINSC @186 /* It's safer while we travel. Even giant miniature space hamsters needs their sleep. */
== BFSMKB @187 /* *sigh* Let me stash some nuts inside. In case he's hungry when he wakes. */
EXIT

// Nalia 
CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkNalia1","GLOBAL",0)~ THEN BFSMKB BFSMkNalia1
@188 /* You claim to help others. But you place conditions on it. */
DO ~SetGlobal("BFSMkNalia1","GLOBAL",1)~
== BNALIA @189 /* I'm doing the best I can. What are *you* doing to help those less fortunate than yourself? */
== BFSMKB @190 /* Not many who are less fortunate than a goblin. Hard to define anyway. */ 
== BFSMKB @191 /* I might lack in gold, but I can forage for food instead. Seems some too-talls can't. Fortunes are fickle. */
== BNALIA @192 /* Yes. Some struggle more than others and the situation can change. But what is your point? That I shouldn't assist anyone? I refuse to be that heartless! */
== BFSMKB @193 /* Simple. If someone needs help - just help them. Not because they are less fortunate. But because they asked. */
== BNALIA @194 /* And if they don't ask? */
== BFSMKB @195 /* Trust them to make the choice for themselves. */
EXIT 

// Valygar 1 
CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkValygar1","GLOBAL",0)~ THEN BFSMKB BFSMkValygar1
@196 /* You don't mind me being here? */ 
DO ~SetGlobal("BFSMkValygar1","GLOBAL",1)~
== BVALYGA @197 /* Is there a reason why I should? */
== BFSMKB @198 /* Most would have reason. I'm a goblin. */ 
== BVALYGA @199 /* You are. */
== BVALYGA @200 /* ...And you've shown no desire to loot villages or burn down homesteads. */ 
== BFSMKB @201 /* Why would I? Left my tribe to get away from all that. */ 
== BVALYGA @202 /* Which is why I hold no concerns. */ 
EXIT

// Valygar 2 - showing M'Khiin's more creative side and Valygar's long-suffering acceptance of her 
CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMkValygar2","GLOBAL",0)~ THEN BFSMKB BFSMkValygar2
@203 /* Minotaur. Sipping from a goblet. Surrounded by chickens. */
DO ~SetGlobal("BFSMkValygar2","GLOBAL",1)~
== BVALYGA @204 /* I cannot see it. Truly. */
== BFSMKB @205 /* Look closer. Over *there*. That's the goblet. */ 
== BVALYGA @206 /* Perhaps. If I squint... */
== BFSMKB @207 /* Two chickens are at the left hoof. */
== BVALYGA @208 /* That's where you lose me. */
== BFSMKB @209 /* Might be they're...ducks. */
== BVALYGA @210 /* ...We'll settle for ducks. */
== BFSMKB @211 /* Good. Your turn. What cloud are we using? */ 
EXIT

// Viconia 
CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkViconia2","GLOBAL",0)~ THEN BFSMKB BFSMkViconia2
@212 /* You don't trust easily. */ 
DO ~SetGlobal("BFSMkViconia2","GLOBAL",1)~
== BVICONI @213 /* Why should I? In the Underdark trust is a death sentence, and friendship is a fool's indulgence. */ 
== BFSMKB @214 /* Doesn't sound much different from a goblin tribe. Except we have fewer spiders. Maybe. */ 
== BVICONI @215 /* Was it survival that drove you to leave your tribe then? */ 
== BFSMKB @216 /* No. Just wanted something better than that life. */ 
== BVICONI @217 /* Then you have no right to judge me. Our reasons for leaving are nothing alike. */
EXIT

// Yoshimo 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkYoshimo1","GLOBAL",0)~ THEN BYOSHIM BFSMkYoshimo1
@218 /* You've a few curious ointments stashed inside your backpack. For what purpose? */
DO ~SetGlobal("BFSMkYoshimo1","GLOBAL",1)~
== BFSMKB @219 /* You dug through my stuff? */
== BYOSHIM @220 /* Of course. I'd be a poor thief if I didn't. Have no fear, I didn't take anything. I merely perused the contents. */ 
== BFSMKB @221 /* Stay out of my bag, sticky-fingers. */
== BYOSHIM @222 /* I have no intention of diving back in there. But, tell me, the ointments. What are they for? */
== BFSMKB @223 /* To heal the burns you'll have if I catch you messing around again. */
== BYOSHIM @224 /* Ah. Healing salves and the like. It explains the lack of obvious poison properties. */
== BFSMKB @225 /* Could poison you too if need be. Plenty of berries that could do that. */
== BYOSHIM @226 /* There's no need for threats. I understand your point quite clearly. */
== BFSMKB @227 /* Good. */
EXIT

// Haer'Dalis 2
CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkHaerDalis2","GLOBAL",1)
Global("BFSMkHaerDalis3","GLOBAL",0)~ THEN BFSMKB BFSMkHaerDalis3
@228 /* Why a pigeon? */
DO ~SetGlobal("BFSMkHaerDalis3","GLOBAL",1)~
== BHAERDA @229 /* Is it not obvious? */
== BFSMKB @230 /* Not for me. */
== BHAERDA @231 /* You are dirty. You are an outsider. You wander Athkatla's streets, unwished for, unwanted, fighting for your existence. */
== BFSMKB @232 /* *sigh* Shouldn't have asked. */
== BHAERDA @233 /* It may sound harsh, I grant, but I am something of an outsider myself. Wear the nickname as a badge of pride. You, my pigeon, are a survivor. */
EXIT

// Edwin 2 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkEdwin2","GLOBAL",0)~ THEN BEDWIN BFSMkEdwin2
@234 /* Goblin, I would have you attend to me. (Surely she can be of some assistance? No matter how miniscule. She is a female of her species.) */
DO ~SetGlobal("BFSMkEdwin2","GLOBAL",1)~
== BFSMKB @235 /* Got yourself into this mess. Think you should get yourself out. */
EXIT

// Jaheira 2 
// check Jaheira Harper globals
CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkJaheira2","GLOBAL",0)~ THEN BFSMKB BFSMkJaheira2
@236 /* You're fighting with your tribe? */
DO ~SetGlobal("BFSMkJaheira2","GLOBAL",1)~
== BJAHEIR @237 /* The Harpers are not my tribe. They are an organisation that I number among, and we are currently at odds, but your comparison is flawed. */
== BFSMKB @238 /* Not easy leaving your tribe. Or having them turn on you. Specially when their needs start being different from yours. */
== BJAHEIR @239 /* Is there some point to you stating the obvious? */
== BFSMKB @240 /* It doesn't mean you're wrong. You have to stand up for yourself. */
== BJAHEIR @241 /* A rather roundabout way of getting to things - especially for you - but I appreciate the thought. I will consider it, as I already have. */
EXIT

// Cernd 2
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Cernd",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
!Alignment("BFSMK",NEUTRAL_GOOD)
Global("BFSMkCernd2","GLOBAL",0)~ THEN BCERND BFSMkCernd2  
@242 /* You carry much bitterness within you, M'Khiin. Does it not tire you? */  
DO ~SetGlobal("BFSMkCernd2","GLOBAL",1)~  
== BFSMKB @243 /* No. It keeps me sharp. Keeps me alive. What's the use of peace when the world's always against you? */  
== BCERND @244 /* Even the sharpest blade must be sheathed lest it lose its edge. Bitterness serves in the moment but corrodes the spirit over time. */  
== BFSMKB @245 /* Not sure I should listen to someone who talks to trees all day. */  
== BCERND @246 /* Trees listen better than most. Perhaps you could try speaking to them sometime. You might find the silence offers clarity. */  
EXIT 

// Haer'Dalis 3 - if M'Khiin was part of the party in SoD
CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkSoDKnown","GLOBAL",1)
Global("BFSMkHaerDalis1","GLOBAL",0)~ THEN BFSMKB BFSMkHaerDalis1
@247 /* Where are you from? */
DO ~SetGlobal("BFSMkHaerDalis1","GLOBAL",1)~
== BHAERDA @248 /* Need I choose one place? Sigil, certainly, but... everywhere. Home is wherever my feet take me. The multiverse holds many wonders and this sparrow plans to experience them all. */
== BHAERDA @249 /* Have you, perchance,  plane-hopped yourself? You are a rather small creature, floundering in such a large pond. */
== BFSMKB @250 /* Sure. Been to Avernus once. Too warm though. Didn't care for  it. */
== BHAERDA @251 /* Ah! The hells holds too many laws and regulations. It's not a place suited to my ilk. */
== BFSMKB @252 /* Not a place suited to mine either. */
EXIT

// Anomen 2, Lawful Good
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Anomen",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Alignment("Anomen",LAWFUL_GOOD)
Global("BFSMkAnomen2","GLOBAL",0)~ THEN BANOMEN BFSMkAnomen2  
@253 /* You speak of survival often. Have you never considered aiming for something greater? */  
DO ~SetGlobal("BFSMkAnomen2","GLOBAL",1)~  
== BFSMKB @94 /* Like what? */  
== BANOMEN @254 /* A higher purpose. To live for something more than just yourself. */  
== BFSMKB IF ~!Alignment("BFSMK",NEUTRAL_GOOD)~ THEN @255 /* Living's hard enough. Maybe if I find something worth the trouble... */  
== BFSMKB IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN @256 /* ...Might be I already have. */  
== BANOMEN @257 /* It is not an easy lesson to learn, but I am stronger for knowing it. I have every faith you can too. */ 
EXIT  

// Anomen 3, Chaotic Neutal
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Anomen",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("BFSMkAnomen3","GLOBAL",0)~ THEN BANOMEN BFSMkAnomen3  
@258 /* Out of my way, goblin! I've no time for one such as you! */  
DO ~SetGlobal("BFSMkAnomen3","GLOBAL",1)~  
== BFSMKB @259 /* You used to be better. Don't like what you've become. */  
== BANOMEN @260 /* Is there something you want to say? Speak clearly! */  
== BFSMKB @261 /* Nothing you'd consider worth hearing. */  
== BANOMEN @262 /* At least we're clear on that point. */
EXIT  

// Cernd 3
CHAIN  
IF ~InParty("Cernd")  
See("Cernd")  
!StateCheck("Cernd",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Global("BFSMkCernd3","GLOBAL",0)~ THEN BFSMKB BFSMkCernd3  
@263 /* Lots of herbs in those pouches of yours. Anything good? */  
DO ~SetGlobal("BFSMkCernd3","GLOBAL",1)~  
== BCERND @264 /* A few handfuls of Balsam for healing potions. */  
== BFSMKB @265 /* Goblins use that yellow vine - Yellow Musk Creeper. Works wonders if you don't mind the stink of death. */  
== BCERND @266 /* A potent remedy. Not my first choice however. */  
== BFSMKB @267 /* Not mine either. Not unless I'm running low on medicinal roots. */
== BCERND @268 /* Perhaps we should forage together while we're travelling? Exchange a few recipes while we can? */ 
== BFSMKB @269 /* I'd like that. */ 
EXIT  


/* EE NPCs */ 
// Dorn
CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMkDorn1","GLOBAL",0)~ THEN BFSMKB BFSMkDorn1
@270 /* You do not value your freedom. */
DO ~SetGlobal("BFSMkDorn1","GLOBAL",1)~
== BDORN @271 /* That you cannot strive for more power - at whatever cost - proves your weakness. */
== BFSMKB @272 /* Not *your* power. Not at the end of the day. Not if you sell your soul for it. */
== BFSMKB @273 /* You displease your patron, your patron takes their favour back. What do you have left? */
== BFSMKB @274 /* I'd rather have my soul, and my freedom, than power that's not fully *mine*. */ 
== BDORN @275 /* If I valued your opinion, goblin, I would have asked for it! */ 
== BFSMKB @276 /* Just saying. You will regret this. ...And I told you so. */ 
EXIT

// Hexxat
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMkHexxat1","GLOBAL",0)~ THEN BHEXXAT BFSMkHexxat1
@277 /* Given your profession, I thought you'd be more comfortable around me. Do you not talk to the undead? */
DO ~SetGlobal("BFSMkHexxat1","GLOBAL",1)~
== BFSMKB @278 /* Not the same. Spirits - ghosts - I can talk to. */
== BFSMKB @279 /* Nothing natural about what you became. You linger - like a sickness seeped deep, rotting healthy flesh. */ 
== BHEXXAT @280 /* But there's so much we could teach one another. About life, about death. */
== BFSMKB @281 /* Not interested in anything you know. */
EXIT

// Neera
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMkNeera1","GLOBAL",0)~ THEN BNEERA BFSMkNeera1
@282 /* Ugh! M'Khiin, why must you be so...? */
DO ~SetGlobal("BFSMkNeera1","GLOBAL",1)~
== BFSMKB @283 /* What did I do wrong now? */
== BNEERA @284 /* When I asked you 'how I look', you were supposed to say 'nice'. Or give me some kind of advice. Not proclaim 'like a half-elf'. */
== BFSMKB @285 /* But you are a half-elf. And you look like one. */
== BNEERA @286 /* That's not the point! Sometimes a girl wants to gussy up. You're my sentient mirror - ensuring I look my best while protecting my fellow wild mages. */
== BFSMKB @287 /* Don't see the point but, since you're asking, your hair looks stupid. */
== BNEERA @288 /* It does?! Let me che -- no, no! It's fine! */
== BFSMKB @289 /* You asked. */ 
== BNEERA @290 /* Nevermind. I'm not talking to you anymore. */
EXIT

// Rasaad
CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkRasaad1","GLOBAL",0)~ THEN BFSMKB BFSMkRasaad1
@291 /* You talk about the light a lot. Sun Soul this, Selune that. What about shadows? Don't they matter? */ 
DO ~SetGlobal("BFSMkRasaad1","GLOBAL",1)~
== BRASAAD @292 /* The light illuminates and guides, M'Khiin. Shadows are nothing but the absence of light. */ 
== BFSMKB @293 /* Shadows hide you, protect you. They can be a guide too. */ 
== BRASAAD @294 /* A fair point. Shadows can offer refuge - but too much reliance on them can blind one to the truth. */ 
== BFSMKB @295 /* And too much light burns. */ 
== BRASAAD @296 /* All things in moderation. */ 
EXIT


// Wilson
// Not saying she has a favourite, but she definitely has a favourite
CHAIN
IF ~InParty("WILSON")
See("WILSON")
!StateCheck("WILSON",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkWilson1","GLOBAL",0)~ THEN BFSMKB BFSMkWilson1
@297 /* Some goblins ride wargs into battle. Haven't seen any riding a bear. Wouldn't mind it when my legs start aching though. Keeping up with the group can be tiring. */
DO ~SetGlobal("BFSMkWilson","GLOBAL",1)~
== BWILSON @298 /* *snort* *snort* *shuffle* */ 
== BFSMKB @299 /* Who's a good bear? Who's a good bear? */
== BWILSON @300 /* *nudges M'Khiin with the tip of his nose* */
== BFSMKB @301 /* Brr! Cold! */
EXIT
