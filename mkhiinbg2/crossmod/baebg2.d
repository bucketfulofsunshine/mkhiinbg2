I_C_T BFSMKJ 12 BFSKinBae1
== ZDBAEJ IF ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ THEN ~My good deeds are more glorious than a ghoulish goblin could gab. Oh my, will the criticism never cease.~
== BFSMKJ ~Brought it upon yourself. Now let me talk.~ 
END

I_C_T BFSMKJ 15 BFSKinBae1
== ZDBAEJ IF ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ THEN ~My good deeds are more glorious than a ghoulish goblin could gab. Oh my, will the criticism never cease.~
== BFSMKJ ~Brought it upon yourself. Now let me talk.~ 
END

I_C_T BFSMKJ 7 BFSKinBae2
== ZDBAEJ IF ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ THEN ~I elevated you to evangelical eviscerating engagement. And this is your petty ponderance?~
END

// Banters, SOA
// 1
CHAIN
IF ~InParty("ZDBAE")
    InParty("BFSMK")
    See("ZDBAE")
    See("BFSMK")
    !StateCheck("BFSMK",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
	CombatCounter(0)
    !See([ENEMY])
    Global("KinBaeBanterSOA1","GLOBAL",0)~
THEN BFSMKB BFSMkBae1
~You're still here. Didn't expect that.~
DO ~SetGlobal("KinBaeBanterSOA1","GLOBAL",1)~
== ZDBAEB ~Of course I am still here, woe betide me to vanish, evaporate. Would thou not willingly wilt for a willow such as I? Would you not resolve this rowdy revenge and rue a reason for respite?~
== BFSMKB ~...and still talk too much.~
EXIT

// 2
CHAIN
IF ~InParty("ZDBAE")
    InParty("BFSMK")
    See("ZDBAE")
    See("BFSMK")
    !StateCheck("BFSMK",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
	CombatCounter(0)
    !See([ENEMY])
    Global("KinBaeBanterSOA2","GLOBAL",0)~
THEN ZDBAE BFSMkBae2
~Goblin, are all matrons as magically mad and morose as you? I merely ask... ~
DO ~SetGlobal("KinBaeBanterSOA2","GLOBAL",1)~
== BFSMKB ~They're not.~
== BFSMKB ~Wouldn't say other goblins are morose though. Might be mad. Quick to pick fights, quicker to lose them. Easy fodder in your arena, I guess.~
== ZDBAE ~How unfortunate, I was hoping, nay daring, to bolster my flock of future fighters. Flirting with a fleeting fantasy, if you will. But now my dreams are dashed, drooping and drowned.~
== BFSMKB ~I broke free from your cage once, drow. Why'd you think you could gather more?~ 
== BFSMKB ~Other goblins aren't like me. ...But most other drow aren't like you.~
== ZDBAE ~I am, as they say, unique. Where most maes are meek—mighty yet mellow—I am more. More than the droning devotion to the matron mothers, I need no loathsome Lolth, no empty chants or hollow prayers. I rise above this tiresome routine. Come, LET ME ENTERTAIN YOU.~ [ZDBAE15]
EXIT

// Banters, TOB
// 1
CHAIN
IF ~InParty("ZDBAE25")
    InParty("BFSMK")
    See("ZDBAE25")
    See("BFSMK")
    !StateCheck("BFSMK", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE25", CD_STATE_NOTVALID)
	CombatCounter(0)
    !See([ENEMY])
    Global("KinBaeBanterTOB1","GLOBAL",0)~
THEN BFSMKB25 BFSMkBaeToB1
~You ever think about running the arena again? Seems like you miss it.~
DO ~SetGlobal("KinBaeBanterTOB1","GLOBAL",1)~
== ZDBAE25B ~Ah, the show must go on my little friend. And although that chapter is now closed, I will enclose you with some clarity, clearly I will continue with these companions until another contingency appears.~
== BFSMKB25 ~We're not even your first choice, huh? Figures.~
== BFSMKB25 ~Thought you'd have some scheme. A big plan for what comes next. You don't wait for chances, you make them.~
EXIT
