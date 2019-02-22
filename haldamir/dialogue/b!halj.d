
/* CONTENTS */
/* HALDAMIR SoA INTERJECTIONS */
/* The Docks */
///* Crazy Celvan */
///* Rylock - Harpers */
///* Fovem - informant */
///* Altheia - harlot */
///* Dock harlot */
/* Thief stronghold */
///* Mae Var */
///* Renal Bloodscalp */
/* Waukeen's Promenade */
///* Belmin Gergas */
/* Nalia */
/* Lady Delcia */
/* Working for Aran */
///* Aran Linvail */
///* Apprentice torturer - Douglas */
///* Torturer - Booter */
/* Working for Bodhi */
///* Valen */
///* Bodhi */
/* Unseeing Eye */
///* Shade Lich */
///* Missing priests */
///* Sassar */
///* Diseased One */
/* Illithium Quest */
///* Unger Hilldark */
///* Sir Sarles */
/* Dawn Ring */
///* Borinall */
/* Graveyard Quests */
///* Tirdir */
///* Llynis */
///* Kamir */
/* The Slums */
///* Cohrvale */
///* Tirthold */
/* The Copper Coronet */
///* Madam Nin */
///* Frankie */
///* Tiana */
///* Nalia */
/* Hendak and the Slaves */
///* Hendak */
/* The Government District */
///* Oriona */
///* Madeen */
///* Tolgieras */
/* Mage Stronghold */
///* Onvo */
///* Reyna */
///* Demon Plane outside the Planar Sphere */
/* The City Gates */
///* Hanj */
///* Rilmi - Crooked Crane */
///* Flydian */
/* The Bridge District */
///* Elgea */
///* Am-Si */
///* Quadeel */
///* Calbor */
///* Captain Dennis */
///* Noblewoman at Delosar's */
///* Stivan the Hunter */
/* Skindancer stuff */
///* Rejiek Hidesman */
///* Tiris */
/* Bard Stronhold */
///* Biff the Understudy */
///* Mekrath */
///* Haer'Dalis*/
///* Bounty Hunters */
///* Tagget */
///* Higgold */
/* Trademeet */
/* Feuding Families */
/* Animal Attacks */
///* Lord Logan */
///* Cernd */
/* Druid Grove */
///* Mage in group beset by trolls */
///* Kyland Lind */
///* Faldorn */
/* The Genies */
///* Itafeer */
/* The Umar Hills */
///* Daar */
///* Kaatje */
///* Madulf */
///* Minister Lloyd */
/* Shade Lord */
/* Ranger Stronghold */
/* Windspear Hills */
///* Vaelasa */
///* Garren Windspear */
/* Firkraag's Lair */
///* Derg the Orc */
///* Flaylan the Orc */
///* Grancor */
///* Samia */
///* Firkraag */
/* Brynllaw */
///* Chremy */
///* Duel Coordinator */
///* Perth the Adept */
///* Saemon Havarian */
///* Front at Lady Galvena's Feasthall */
/* Spellhold */
///* Dace */
///* Bodhi */
///* Slayer Change */
/* City of Caverns */
///* Royal High Priestess */
///* Sahuagin King */
///* Spectator Beholder */
/* Underdark */
///* On arrival */
///* Odenal Breachgnome */
///* Goldander Blackenrock */
///* Adalon */
///* Drow transformation */
/* Ust Natha */
///* Slave pens */
///* Sondal - drow duel master */
///* Merinid */
///* Exploding slaves */
///* Lust chamber */
///* Phaere */
///* Solaufein */
/* Underdark Exit */
///* Elhan */
/* Chapter 6 Graveyard */
///* C6 Bodhi */
/* Forest of Tethyr */
///* Coran */
/* Suldanessellar */
///* On arrival */
///* Elves */
///* Demin */
/* Tree of Life */
/* Hell */
/* Friendship Talks */
///* Friendship Talk 1 - Getting acquainted */
///* Friendship Talk 2 - Who's your daddy? */
///* Friendship Talk 3 - Tahlir */
///* Friendship Talk 4 - Self-pity */
///* Friendship Talk 5 - What do you believe? */
/* Elf Talk */
/* RE Reaction */
/* PID */

BEGIN ~B!HALJ~

/* The Docks */
///* Crazy Celvan */
CHAIN
IF WEIGHT #-1 ~CombatCounter(0)
    See("B!HALDAMIR")
    InParty("B!HALDAMIR")
    !See([ENEMY])
    !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
    RandomNum(2,1)
    Global("B!HalCelvan","AR0300",0)~ THEN CELVAN HalCelvan
@0
DO ~SetGlobal("B!HalCelvan","AR0300",1)~
== ~B!HALJ~ @1
== ~CELVAN~ @2
DO ~RunAwayFrom([PC],300)~
EXIT

///* Rylock - Harpers */
I_C_T ~RYLOCK~ 14 BHalRylock
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @3
== ~RYLOCK~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @4
END

///* Fovem - informant */
I_C_T ~DMARK1~ 16 BHalFovem
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @5
END

///* Altheia - harlot */
I_C_T DHARLOT2 0 BHalAltheia
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @6
== DHARLOT2 IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @7
END

I_C_T DHARLOT2 1 BHalAltheia
== DHARLOT2 IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @8
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @6
== DHARLOT2 IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @9
END

///* Dock harlot */
/* I_C_T ~DHARLOT1~ BHalDockHarlot
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID) PartyGoldGT(4)~ THEN ~Not this one. But take this, nonetheless.~ DO ~TakePartyGold(5) DestroyGold(5)~
END */

/* Thief stronghold */
///* Mae Var */
I_C_T ~MAEVAR~ 1 BHalMaeVar1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @10 DO ~SetGlobal("B!HaldamirMetMaeVar","GLOBAL",1)~
== ~MAEVAR~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @11
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @12
== ~MAEVAR~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @13
END 

I_C_T ~MAEVAR~ 2 BHalMaeVar2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @10 DO ~SetGlobal("B!HaldamirMetMaeVar","GLOBAL",1)~
== ~MAEVAR~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @11
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @12
== ~MAEVAR~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @13
END 

I_C_T ~MAEVAR~ 3 BHalMaeVar3
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @14 DO ~SetGlobal("B!HaldamirMetMaeVar","GLOBAL",1)~
== ~MAEVAR~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @15
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @16
== ~MAEVAR~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @17
END 

I_C_T ~MAEVAR~ 5 BHalMaeVar4
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @10 DO ~SetGlobal("B!HaldamirMetMaeVar","GLOBAL",1)~
== ~MAEVAR~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @11
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @12
== ~MAEVAR~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @13
END 

I_C_T ~MAEVAR~ 42 BHalMaeVar5
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @18
== ~MAEVAR~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @19
END

CHAIN
IF ~Global("B!HaldamirMetMaeVar","GLOBAL",2)~ THEN ~B!HALJ~ HalMaeVar6
@20
DO ~SetGlobal("B!HaldamirMetMaeVar","GLOBAL",3)~
EXIT

///* Renal Bloodscalp */
I_C_T RENAL 0 BHalRenal1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @21
END

I_C_T RENAL 1 BHalRenal2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @21
END

/* Waukeen's Promenade */
///* Belmin Gergas */
CHAIN
IF WEIGHT #-1 ~CombatCounter(0)
    See("B!HALDAMIR")
    InParty("B!HALDAMIR")
    !See([ENEMY])
    !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
RandomNum(2,1)
Global("B!HalBelmin","AR0700",0)~ THEN ~BELMIN~ HalBelmin1
@22
DO ~SetGlobal("B!HalBelmin","AR0700",1)~
== ~B!HALJ~ @23
== ~BELMIN~ @24
== ~B!HALJ~ @25
END
+ ~Race(Player1,ELF)~ + @26 EXTERN ~BELMIN~ HalBelmin2
+ ~!Race(Player1,ELF)~ + @26 EXTERN ~BELMIN~ HalBelmin3
+ ~Race(Player1,ELF)~ + @27 EXTERN ~BELMIN~ 13
+ ~!Race(Player1,ELF)~ + @27 EXTERN ~BELMIN~ HalBelmin4

CHAIN
IF ~~ THEN ~BELMIN~ HalBelmin2
@28
== ~B!HALJ~ @29
END
++ @30 EXTERN ~BELMIN~ HalBelmin3
++ @31 EXTERN ~BELMIN~ 15
++ @32 DO ~ActionOverride("belmin",Enemy()) ActionOverride("B!HALDAMIR",EquipMostDamagingMelee()) ActionOverride("B!HALDAMIR",Attack("belmin")~ EXIT

CHAIN
IF ~~ THEN ~BELMIN~ HalBelmin3
@33
== ~B!HALJ~ @34
EXTERN ~BELMIN~ 16

CHAIN
IF ~~ THEN ~BELMIN~ HalBelmin4
@35
END
++ @36 EXTERN ~BELMIN~ 18
++ @37 EXTERN ~BELMIN~ 16
++ @38 EXTERN ~BELMIN~ 17

/* Nalia */
I_C_T ~NALIA~ 0 BHalNalIntro1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @39
END

I_C_T ~NALIA~ 1 BHalNalIntro2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @39
END

I_C_T ~NALIA~ 16 BHalNalTakenTheKeep
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @40
== ~NALIA~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @41
END
 
/* Lady Delcia */
I_C_T ~DELCIA~ 34 BHalDelcia1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @42
END

I_C_T ~DELCIA~ 35 BHalDelcia2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @43
END

I_C_T ~DELCIA~ 36 BHalDelcia3
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @44
END

I_C_T ~DELCIA~ 37 BHalDelcia4
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @43
END

I_C_T ~DELCIA~ 38 BHalDelcia5
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @42
END

/* Working for Aran */
///* Aran Linvail */
I_C_T ARAN 8 BHalAran1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @45
END

I_C_T ARAN 13 BHalAran1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @46
END

///* Apprentice torturer - Douglas */

I_C_T ARNBOY01 1 BHalDouglas1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @47
END

///* Torturer - Booter */
I_C_T BOOTER 0 BHalBooter1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @48
END

/* Working for Bodhi */

///* Valen */
APPEND ~B!HALJ~

IF ~Global("B!HalValen","GLOBAL",1)~ THEN BEGIN BHalValen
SAY @49
++ @50 DO ~SetGlobal("B!HalValen","GLOBAL",2)~ + BHalValen2
++ @51 DO ~SetGlobal("B!HalValen","GLOBAL",2)~ + BHalValen1
++ @52 DO ~SetGlobal("B!HalValen","GLOBAL",2)~ + BHalValen3
END

IF ~~ BHalValen1
SAY @53
IF ~~ THEN + BHalValen4
END

IF ~~ BHalValen2
SAY @54
IF ~~ THEN + BHalValen4
END

IF ~~ BHalValen3
SAY @55
IF ~~ THEN + BHalValen4
END

IF ~~ BHalValen4
SAY @56
IF ~~ THEN EXIT
END
END
///* Bodhi */
I_C_T BODHI 6 BHalBodhiOffer
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @57
END

I_C_T BODHI 18 BHalBodhiOffer2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @58
END

/* Unseeing Eye */
///* Shade Lich */
I_C_T2 BHCRYPT 0 BHalCrypt
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @59
END

///* Missing priests */
I_C_T ACOLYTE1 6 BHalAcolyte1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @60
END

I_C_T ACOLYTE2 8 BHalAcolyte2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @61
== ~ACOLYTE2~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @62
END

I_C_T ACOLYTE3 7 BHalAcolyte1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @63
END

///* Sassar */
I_C_T SASSAR 19 BHalSassar
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @64
END

///* Diseased One */
I_C_T RIFTM01 2 BHalDiseasedOne
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @65
END

/* Illithium Quest */
///* Unger Hilldark */
I_C_T SCDUR 2 BHalUnger
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @66
END

///* Sir Sarles */
I_C_T SCSARLES 4 BHalSarles1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @67
== ~SCSARLES~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @68
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @69
END

I_C_T SCSARLES 15 BHalSarles2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @70
END

/* Dawn Ring */
///* Borinall */
I_C_T BORINALL 1 BHalBorinall
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @71
== ~BORINALL~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @72
END

/* Graveyard Quests */
///* Tirdir */
I_C_T TIRDIR 3 BHalTirdir
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @73
END

///* Llynis */
I_C_T LLYNIS 8 BHalLlynis1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @74
== ~LLYNIS~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @75
END

I_C_T LLYNIS 10 BHalLlynis2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @74
== ~LLYNIS~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @75
END

///* Kamir */
I_C_T KAMIR 4 BHalKamir
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @76
END

/* The Slums */
///* Cohrvale */
I_C_T COHRVALE 1 BHalCohrvale
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @77
END

///* Tirthold */
I_C_T TIRTHOLD 0 BHalTirthold
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @78
END

/* The Copper Coronet */
///* Madam Nin */
CHAIN
IF WEIGHT #-1 ~CombatCounter(0)
    See("B!HALDAMIR")
    InParty("B!HALDAMIR")
    !See([ENEMY])
    !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
    RandomNum(2,1)
    Global("B!HalMadamNin","GLOBAL",0)~ THEN MADAM BHalMadamNin
@79
DO ~SetGlobal("B!HalMadamNin","GLOBAL",1)~
== ~B!HALJ~ @80
== ~MADAM~ @81
EXIT

///* Frankie */
I_C_T COPGREET 3 BHalFrankie
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @82
END

///* Tiana */
I_C_T TIANA 1 BHalTiana
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @83
END

///* Nalia */
I_C_T NALIA 7 BHalNalia
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @84
END

/* Hendak and the Slaves */
///* Hendak */
I_C_T HENDAK 7 BHalHendak1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @85
END

I_C_T HENDAK 9 BHalHendak2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @86
END

/* The Government District */
///* Oriona */
I_C_T ORIONA 3 BHalOriona
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @87
END

///* Madeen */
I_C_T MADEEN 1 BHalMadeen
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @88
== ~MADEEN~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @89
END

///* Tolgieras */
I_C_T TOLGER 2 BHalTolgieras1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @90
END

I_C_T TOLGER 21 BHalTolgieras2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @91
END

/* Mage Stronghold */
///* Onvo */
I_C_T OBSSOL02 2 BHalOnvo
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @92
END

///* Reyna */
I_C_T OBSSOL01 14 BHalReyna
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @93
END

///* Demon Plane outside the Planar Sphere */

APPEND ~B!HALJ~
IF ~Global("B!HaldamirDemonPlane","GLOBAL",1)~ BHalDemonPlane
SAY @94
++ @95 DO ~SetGlobal("B!HaldamirDemonPlane","GLOBAL",2)~ + BHalDemonPlane1
++ @96 DO ~SetGlobal("B!HaldamirDemonPlane","GLOBAL",2)~ + BHalDemonPlane2
++ @97 DO ~SetGlobal("B!HaldamirDemonPlane","GLOBAL",2)~ + BHalDemonPlane3
++ @98 DO ~SetGlobal("B!HaldamirDemonPlane","GLOBAL",2)~ + BHalDemonPlane4
END

IF ~~ BHalDemonPlane1
SAY @99
IF ~~ THEN EXIT
END

IF ~~ BHalDemonPlane2
SAY @100
IF ~~ THEN EXIT
END

IF ~~ BHalDemonPlane3
SAY @101
IF ~~ THEN EXIT
END

IF ~~ BHalDemonPlane4
SAY @102
IF ~~ THEN EXIT
END
END

/* The City Gates */
///* Hanj */
I_C_T AEEXTORT 1 BHalHanj
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @103
END

///* Rilmi - Crooked Crane */
I_C_T CRTHF03 0 BHalRilmi
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @104
END

///* Flydian */
I_C_T MESSEN 2 BHalFlydian
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @105
END

/* The Bridge District */
///* Elgea */
I_C_T ELGEA 0 BHalElgea
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @106
END

///* Am-Si */
I_C_T AMSI 9 BHalAmSi
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @107
END

///* Quadeel */
I_C_T BMERCH1 3 BHalQuadeel
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @108
== ~BMERCH1~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @109
END

///* Calbor */
I_C_T BINNKEEP 20 BHalCalbor
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @110
END

///* Captain Dennis */
I_C_T LOUTCAPT 4 BHalCaptDennis
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @111
END

///* Noblewoman at Delosar's */
I_C_T DELNOB02 3 BHalDelosarNob
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @112
== ~DELNOB02~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @113
END

///* Stivan the Hunter */
I_C_T BHALF1 1 BHalStivan
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @114
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @115
END

/* Skindancer stuff */
///* Rejiek Hidesman */
I_C_T TANNER 5 BHalRejiek1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @116
= @117
END

I_C_T TRSKIN03 0 BHalRejiek2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @118
END

///* Tiris */
I_C_T TRSKIN02 7 BHalTiris1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @119
== ~TRSKIN02~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @120
END

I_C_T TRSKIN02 17 BHalTiris2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @121
== ~TRSKIN02~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @122
END

/* Bard Stronhold */
///* Biff the Understudy */
I_C_T FFBIFF01 4 BHalBiff
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @123
END

///* Mekrath */
I_C_T MEKRAT 12 BHalMekrath
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @124
END

///* Haer'Dalis */
I_C_T HAERDA 14 BHalHaer1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @125
== ~HAERDA~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @126
END

I_C_T HAERDA 109 BHalHaer2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @127
END

///* Bounty Hunters */
I_C_T PBHUNT01 5 BHalPlanarPrison1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @128
END

///* Tagget */
I_C_T PTAGGET 3 BHalPlanarPrison2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @129
END

///* Higgold */
I_C_T BDHIGG01 1 BHalHiggold1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @130
END

I_C_T BDHIGG01 15 BHalHiggold2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @131
== ~BDHIGG01~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @132
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @133
== ~BDHIGG01~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @134
END

/* Trademeet */
/* Feuding Families */
ADD_TRANS_ACTION TRCUT06 BEGIN 0 END BEGIN END
~SetGlobal("B!TrademeetFeud","GLOBAL",1)~

APPEND ~B!HALJ~
IF ~Global("B!TrademeetFeud","GLOBAL",2)~ BHalTrademeetFeud
SAY @135
++ @136 DO ~SetGlobal("B!TrademeetFeud","GLOBAL",3)~ + BHalTrademeetFeud1
++ @137 DO ~SetGlobal("B!TrademeetFeud","GLOBAL",3)~ + BHalTrademeetFeud2
++ @138 DO ~SetGlobal("B!TrademeetFeud","GLOBAL",3)~ + BHalTrademeetFeud3
++ @139 DO ~SetGlobal("B!TrademeetFeud","GLOBAL",3)~ + BHalTrademeetFeud4
++ @140 DO ~SetGlobal("B!TrademeetFeud","GLOBAL",3)~ + BHalTrademeetFeud5
END

IF ~~ BHalTrademeetFeud1
SAY @141
++ @142 + BHalTrademeetFeud2
++ @143 + BHalTrademeetFeud3
++ @144 + BHalTrademeetFeud4
++ @145 + BHalTrademeetFeud6
++ @146 + BHalTrademeetFeud5
END

IF ~~ BHalTrademeetFeud2
SAY @147
IF ~~ THEN EXIT
END


IF ~~ BHalTrademeetFeud3
SAY @148
IF ~~ THEN EXIT
END


IF ~~ BHalTrademeetFeud4
SAY @149
IF ~~ THEN EXIT
END

IF ~~ BHalTrademeetFeud5
SAY @150
IF ~~ THEN EXIT
END

IF ~~ BHalTrademeetFeud6
SAY @151
IF ~~ THEN GOTO BHalTrademeetFeud5
END
END

/* Animal Attacks */
///* Lord Logan */
I_C_T CELOGAN 11 BHalLogan1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @152
END

///* Cernd */
I_C_T CERND 6 BHalCernd
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @153
== ~CERND~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @154
END

/* Druid Grove */
///* Mage in group beset by trolls */
I_C_T DGMAG01 0 BHalShadowDruidMage
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @155
== ~DGMAG01~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @156
END

///* Kyland Lind */
I_C_T TDR10A 0 BHalKylandLind
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @157
== ~TDR10A~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @158
END

///* Faldorn */
I_C_T CEFALDOR 2 BHalFaldorn
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @159
END

/* The Genies */
///* Itafeer */
I_C_T TRRAK01 1 BHalItafeer
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @160
END

/* The Umar Hills */
///* Daar */
I_C_T JUGDAR01 3 BHalDaar
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @161
END

///* Kaatje */
I_C_T UHGIRL01 1 BHalKaatje
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @162
== ~UHGIRL01~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @163
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @164
END

///* Madulf */
I_C_T UHOGRE01 8 BHalMadulf
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @165
== ~UHOGRE01~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @166
END

///* Minister Lloyd */
I_C_T UHMAY01 7 BHalLloyd1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @167
END

I_C_T UHMAY01 8 BHalLloyd2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @167
END

/* Shade Lord */
I_C_T SHADEL 4 BHalShadeLord
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @168
END

/* Ranger Stronghold */
I_C_T RIGEN01 2 BHalIgenTombelthen
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @169
== ~RIGEN01~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @170
END

/* Windspear Hills */
///* Vaelasa */
I_C_T VAELASA 8 BHalVaelasa
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @171
== ~VAELASA~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @172
END

///* Garren Windspear */
I_C_T GARREN 2 BHalGarren
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @173
== GARREN IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @174
END

/* Firkraag's Lair */

///* Derg the Orc */
I_C_T FIRORC02 0 BHalDerg
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @175
END

///* Flaylan the Orc */
I_C_T FIRORC03 0 BHalFlaylan
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @176
END

///* Grancor */
I_C_T FIRWLF01 1 BHalGrancor
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @177
END

///* Samia */
I_C_T SAMIA 10 BHalSamia
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @178
END

///* Firkraag */
I_C_T FIRKRA02 5 BHalFirkraag
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @179
END

/* Brynllaw */

///* Chremy */
I_C_T PIRPIR05 4 BHalChremy
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @180
== PIRPIR05 IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @181
END

///* Duel Coordinator */
I_C_T PPDUELC 0 BHalDuelCoord
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @182
END

///* Perth the Adept */
I_C_T PPCOWLED 2 BHalPerth
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @183
END

///* Saemon Havarian */
I_C_T PPSAEM3 1 BHalSaemon1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @184
== PPSAEM3 IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @185
END

I_C_T PPSAEM3 11 BHalSaemon2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @186
== PPSAEM3 IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @187
END

///* Front at Lady Galvena's Feasthall */
I_C_T PIRMUR03 2 BHalFront
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @188
END

/* Spellhold */

///* Dace */
APPEND ~B!HALJ~

IF ~Global("B!HaldamirDace","GLOBAL",1)~ THEN BEGIN BHalDace
SAY @189
= @190
++ @191 DO ~SetGlobal("B!HaldamirDace","GLOBAL",2)~ + BHalDace1
++ @192 DO ~SetGlobal("B!HaldamirDace","GLOBAL",2)~ + BHalDace2
++ @193 DO ~SetGlobal("B!HaldamirDace","GLOBAL",2)~ + BHalDace3
++ @194 DO ~SetGlobal("B!HaldamirDace","GLOBAL",2)~ + BHalDace4
END

IF ~~ BHalDace1
SAY @195
IF ~~ THEN + BHalDace5
END

IF ~~ BHalDace2
SAY @196
IF ~~ THEN + BHalDace5
END

IF ~~ BHalDace3
SAY @197
IF ~~ THEN + BHalDace5
END

IF ~~ BHalDace4
SAY @198
IF ~~ THEN EXIT
END

IF ~~ BHalDace5
SAY @199
IF ~~ THEN EXIT
END
END

///* Bodhi */
I_C_T PPBODHI4 12 BHalBodhi1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @200
END

///* Slayer Change */ 

ADD_TRANS_ACTION PLAYER1 BEGIN 5 END BEGIN END 
~SetGlobal("B!HalSlayer","GLOBAL",1)~ 

ADD_TRANS_ACTION PLAYER1 BEGIN 11 12 END BEGIN END 
~SetGlobal("B!HalSlayer","GLOBAL",4)~ 

APPEND ~B!HALJ~
IF ~Global("B!HalSlayer","GLOBAL",2)~ THEN BEGIN BHalSlayer
SAY @201
++ @202 DO ~SetGlobal("B!HalSlayer","GLOBAL",3)~ + BHalSlayer1
++ @203 DO ~SetGlobal("B!HalSlayer","GLOBAL",3)~ + BHalSlayer1
++ @204 DO ~SetGlobal("B!HalSlayer","GLOBAL",3)~ + BHalSlayer2
END

IF ~~ BHalSlayer1
SAY @205
++ @206 + BHalSlayer3
++ @207 + BHalSlayer4
++ @208 + BHalSlayer5
END

IF ~~ BHalSlayer2
SAY @209
IF ~~ THEN + BHalSlayer2
END

IF ~~ BHalSlayer3
SAY @210
++ @211 + BHalSlayer6
++ @212 + BHalSlayer7
++ @213 + BHalSlayer7
++ @214 + BHalSlayer8
END

IF ~~ BHalSlayer4
SAY @215
IF ~~ THEN + BHalSlayer3
END

IF ~~ BHalSlayer5
SAY @216
IF ~~ THEN + BHalSlayer3
END

IF ~~ BHalSlayer6
SAY @217
IF ~~ THEN EXIT
END

IF ~~ BHalSlayer7
SAY @218
IF ~~ THEN EXIT
END

IF ~~ BHalSlayer8
SAY @219
IF ~~ THEN EXIT
END

IF ~Global("B!HalSlayer","GLOBAL",4)~ THEN BEGIN BHalSlayer9
SAY @220
++ @221 DO ~SetGlobal("B!HalSlayer","GLOBAL",5)~ + BHalSlayer10
++ @222 DO ~SetGlobal("B!HalSlayer","GLOBAL",5)~ + BHalSlayer10
++ @223 DO ~SetGlobal("B!HalSlayer","GLOBAL",5)~ + BHalSlayer11
++ @224 DO ~SetGlobal("B!HalSlayer","GLOBAL",5)~ + BHalSlayer12
END

IF ~~ BHalSlayer10
SAY @225
IF ~~ THEN + BHalSlayer13
END

IF ~~ BHalSlayer11
SAY @226
IF ~~ THEN + BHalSlayer13
END

IF ~~ BHalSlayer12
SAY @227
IF ~~ THEN + BHalSlayer13
END

IF ~~ BHalSlayer13
SAY @228
++ @229 + BHalSlayer14
++ @230 + BHalSlayer15
++ @231 + BHalSlayer16
END

IF ~~ BHalSlayer14
SAY @232
IF ~~ THEN EXIT
END

IF ~~ BHalSlayer15
SAY @233
IF ~~ THEN EXIT
END

IF ~~ BHalSlayer16
SAY @234
IF ~~ THEN EXIT
END
END

/* City of Caverns */

///* Royal High Priestess */
I_C_T SAHPR1 12 BHalSahuaginPriestess1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @235
END

I_C_T SAHPR1 14 BHalSahuaginPriestess2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @236
== ~SAHPR1~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @237
END

///* Sahuagin King */
I_C_T SAHKNG01 26 BHalSahuaginKing1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @238
END

///* Spectator Beholder */
I_C_T SAHBEH01 13 BHalSpectatorBeholder1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @239
== ~SAHBEH01~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @240
END

/* Underdark */

///* On arrival */

APPEND ~B!HALJ~

IF ~Global("B!HalUnderdark","GLOBAL",1)~ THEN BEGIN BHalUnderdark
SAY @241
++ @242 DO ~SetGlobal("B!HalUnderdark","GLOBAL",2)~ + BHalUnderdark1
++ @243 DO ~SetGlobal("B!HalUnderdark","GLOBAL",2)~ + BHalUnderdark2
++ @244 DO ~SetGlobal("B!HalUnderdark","GLOBAL",2)~ + BHalUnderdark3
END

IF ~~ BHalUnderdark1
SAY @245
IF ~~ THEN EXIT
END

IF ~~ BHalUnderdark2
SAY @246
IF ~~ THEN + BHalUnderdark1
END

IF ~~ BHalUnderdark3
SAY @247
IF ~~ THEN + BHalUnderdark1
END
END

///* Odenal Breachgnome */
I_C_T UDSVIR01 3 BHalSvirfneblin
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @248
END

///* Goldander Blackenrock */
I_C_T UDSVIR03 2 BHalGoldander1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @249
END

I_C_T UDSVIR03 9 BHalGoldander2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @250
== UDSVIR03 IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @251
END

///* Adalon */
I_C_T UDSILVER 0 BHalAdalon1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @252
END

I_C_T UDSILVER 11 BHalAdalon2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @253
END

///* Drow transformation */
APPEND ~B!HALJ~

IF ~Global("B!HalLooksLikeDrow","GLOBAL",1)~ THEN BEGIN BHalDrow
SAY @254
++ @255 DO ~SetGlobal("B!HalLooksLikeDrow","GLOBAL",2)~ + BHalDrow1
++ @256 DO ~SetGlobal("B!HalLooksLikeDrow","GLOBAL",2)~ + BHalDrow2
++ @257 DO ~SetGlobal("B!HalLooksLikeDrow","GLOBAL",2)~ + BHalDrow3
++ @258 DO ~SetGlobal("B!HalLooksLikeDrow","GLOBAL",2)~ + BHalDrow4
END

IF ~~ BHalDrow1
SAY @259
IF ~~ THEN + BHalDrow5
END

IF ~~ BHalDrow2
SAY @260
IF ~~ THEN + BHalDrow5
END

IF ~~ BHalDrow3
SAY @261
IF ~~ THEN + BHalDrow5
END

IF ~~ BHalDrow4
SAY @262
IF ~~ THEN EXIT
END

IF ~~ BHalDrow5
SAY @263
++ @264 + BHalDrow6
++ @265 + BHalDrow7
++ @266 + BHalDrow7
++ @267 + BHalDrow8
END


IF ~~ BHalDrow6
SAY @268
IF ~~ THEN EXIT
END

IF ~~ BHalDrow7
SAY @269
IF ~~ THEN EXIT
END

IF ~~ BHalDrow8
SAY @270
IF ~~ THEN EXIT
END
END

/* Ust Natha */

///* Slave pens */
ADD_TRANS_ACTION DADROW3 BEGIN 0 END BEGIN END
~SetGlobal("B!HalSlaves","GLOBAL",1)~

APPEND ~B!HALJ~

IF ~Global("B!HalSlaves","GLOBAL",3)~ THEN BEGIN BHalSlaves
SAY @271
++ @272 DO ~SetGlobal("B!HalSlaves","GLOBAL",4)~ + BHalSlaves1
++ @273 DO ~SetGlobal("B!HalSlaves","GLOBAL",4)~ + BHalSlaves2
END

IF ~~ BHalSlaves1
SAY @274
++ @275 + BHalSlaves3
++ @276 + BHalSlaves4
+ ~Gender(Player1,FEMALE)~ + @277 + BHalSlaves5
+ ~Gender(Player1,MALE)~ + @277 + BHalSlaves9
++ @278 + BHalSlaves6
END

IF ~~ BHalSlaves2
SAY @279
IF ~~ THEN + BHalSlaves1
END

IF ~~ BHalSlaves3
SAY @280
++ @281 + BHalSlaves7
++ @282 + BHalSlaves8
++ @283 + BHalSlaves4
END

IF ~~ BHalSlaves4
SAY @284
IF ~~ THEN EXIT
END

IF ~~ BHalSlaves5
SAY @285
IF ~~ THEN EXIT
END

IF ~~ BHalSlaves6
SAY @286
IF ~~ THEN EXIT
END

IF ~~ BHalSlaves7
SAY @287
IF ~~ THEN EXIT
END


IF ~~ BHalSlaves8
SAY @288
IF ~~ THEN EXIT
END

IF ~~ BHalSlaves9
SAY @289
IF ~~ THEN EXIT
END
END

///* Sondal - drow duel master */
I_C_T UDDROW16 1 BHalSondal
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @290
END

///* Merinid */
I_C_T UDDROW07 0 BHalMerinid
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @291
== UDDROW07 IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @292
END

///* Exploding slaves */
I_C_T UDDROW26 0 BHalExplodingSlaves
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @293
END

///* Lust chamber */
I_C_T DADROW23 1 BHalLustChamber
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @294
== DADROW23 IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @295
END

///* Phaere */
APPEND ~B!HALJ~

IF ~Global("B!HalPhaere","GLOBAL",1)~ THEN BEGIN BHalPhaere
SAY @296
++ @297 DO ~SetGlobal("B!HalPhaere","GLOBAL",2)~ + BHalPhaere1
++ @298 DO ~SetGlobal("B!HalPhaere","GLOBAL",2)~ + BHalPhaere2
+ ~Gender(Player1,MALE)~ + @299 DO ~SetGlobal("B!HalPhaere","GLOBAL",2)~ + BHalPhaere3
END

IF ~~ BHalPhaere1
SAY @300
IF ~~ THEN EXIT
END

IF ~~ BHalPhaere2
SAY @301
IF ~~ THEN EXIT
END

IF ~~ BHalPhaere3
SAY @302
IF ~~ THEN EXIT
END

///* Solaufein */
IF ~Global("B!HalSolaufein1","GLOBAL",1)~ THEN BHalSola
SAY @303
IF ~~ THEN DO ~SetGlobal("B!HalSolaufein1","GLOBAL",2)~ EXIT
END
END

I_C_T UDSOLA01 150 BHalSolaufein2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @304
END

/* Underdark Exit */
///* Elhan */
I_C_T C6ELHAN2 8 BHalElhan1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @305
== C6ELHAN2 IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @306
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @307
== C6ELHAN2 IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @308
END

I_C_T C6ELHAN2 28 BHalElhan2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @309
END

I_C_T C6ELHAN2 29 BHalElhan3
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @310
END

I_C_T C6ELHAN2 68 BHalElhan4
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @311
END

I_C_T C6ELHAN2 69 BHalElhan5 //duplication of state label intentional
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @312
END

I_C_T C6ELHAN2 70 BHalElhan5 //duplication of state label intentional
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @312
END

/* Chapter 6 Graveyard */
///* C6 Bodhi */
I_C_T C6BODHI 0 BHalC6Bodhi1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @313
END

I_C_T C6BODHI 16 BHalC6Bodhi2
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @314
== C6BODHI IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @315 
END

APPEND ~B!HALJ~

IF ~Global("B!HalC6BodhiDead","GLOBAL",1)~ THEN BEGIN BHalC6BodhiDead
SAY @316
++ @317 DO ~SetGlobal("B!HalC6BodhiDead","GLOBAL",2)~ + bhc6bd1
++ @318 DO ~SetGlobal("B!HalC6BodhiDead","GLOBAL",2)~ + bhc6bd2
++ @319 DO ~SetGlobal("B!HalC6BodhiDead","GLOBAL",2)~ + bhc6bd3
END

IF ~~ bhc6bd1
SAY @320
IF ~~ THEN + bhc6bd3
END

IF ~~ bhc6bd2
SAY @321
IF ~~ THEN + bhc6bd3
END

IF ~~ bhc6bd3
SAY @322
++ @323 + bhc6bd4
++ @324 + bhc6bd4
END

IF ~~ bhc6bd4
SAY @325
IF ~~ THEN EXIT
END
END

/* Forest of Tethyr */
///* Coran */
I_C_T C6CORAN 0 BHalCoran1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @326
== C6CORAN IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @327 
END

I_C_T C6CORAN 6 BHalCoran1
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @328
== C6CORAN IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @329 
END

/* Suldanessellar */
///* On arrival */

APPEND ~B!HALJ~

IF ~Global("B!HalSuldanessellar","GLOBAL",1)~ THEN BEGIN hs0
SAY @330
++ @331 DO ~SetGlobal("B!HalSuldanessellar","GLOBAL",2)~ + hs1
++ @332 DO ~SetGlobal("B!HalSuldanessellar","GLOBAL",2)~ + hs1
++ @333 DO ~SetGlobal("B!HalSuldanessellar","GLOBAL",2)~ + hs1
++ @334 DO ~SetGlobal("B!HalSuldanessellar","GLOBAL",2)~ + hs2
END

IF ~~ hs1
SAY @335
++ @336 + hs3
++ @337 + hs3
++ @338 + hs4
++ @339 + hs5
++ @340 + hs5
END

IF ~~ hs2
SAY @341
IF ~~ THEN + hs1
END

IF ~~ hs3
SAY @342
IF ~~ THEN EXIT
END

IF ~~ hs4
SAY @343
++ @344 + hs6
++ @345 + hs7
++ @346 + hs8
END

IF ~~ hs5
SAY @347
IF ~~ THEN + hs7
END

IF ~~ hs6
SAY @348
IF ~~ THEN + hs9
END

IF ~~ hs7
SAY @349
IF ~~ THEN EXIT
END

IF ~~ hs8
SAY @350
IF ~~ THEN + hs9
END

IF ~~ hs9
SAY @351
= @352
= @353
++ @354 + hs10
++ @355 + hs10
++ @356 + hs11
END

IF ~~ hs10
SAY @357
IF ~~ THEN + hs7
END

IF ~~ hs11
SAY @358
IF ~~ THEN + hs7
END
END

///* Elves */
I_C_T SUELF11 0 BHalSUELF11 //duplicate state labels intentional
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @359
END

I_C_T SUELF11 1 BHalSUELF11 //duplicate state labels intentional
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @359
END

I_C_T SUELF11 2 BHalSUELF11 //duplicate state labels intentional
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @359
END

I_C_T SUELF11 3 BHalSUELF11 //duplicate state labels intentional
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @359
END

I_C_T SUELF11 4 BHalSUELF11 //duplicate state labels intentional
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @359
END

I_C_T SUELF9 2 BHalSUELF9 
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @360
== ~SUELF9~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @361 
END

///* Demin */
I_C_T SUDEMIN 0 BHalDemin0
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @362
END

I_C_T SUDEMIN 10 BHalDemin10
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @363
== SUDEMIN IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @364
END

I_C_T SUDEMIN 18 BHalDemin18
== ~B!HALJ~ IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @365
END

/* Tree of Life */
INTERJECT PLAYER1 33 BHalTreeOfLife
== PLAYER1 IF ~InParty("B!HALDAMIR") InMyArea("B!HALDAMIR") !StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)~ THEN @366
END
++ @367 EXTERN ~B!HALJ~ BHalTreeOfLife1
++ @368 EXTERN ~B!HALJ~ BHalTreeOfLife2
++ @369  EXTERN ~B!HALJ~ BHalTreeOfLife1

APPEND ~B!HALJ~
IF ~~ THEN BEGIN BHalTreeOfLife1
SAY @370 
IF ~~ THEN + BHalTreeOfLife3
END

IF ~~ THEN BEGIN BHalTreeOfLife2
SAY @371 
IF ~~ THEN + BHalTreeOfLife3
END

IF ~~ THEN BEGIN BHalTreeOfLife3
SAY @372 
COPY_TRANS PLAYER1 33
END
END

/* Hell */
APPEND ~B!HALJ~

IF ~Global("B!HalHell","GLOBAL",1)~ THEN BEGIN BHalHell
SAY @373
++ @212 DO ~SetGlobal("B!HalHell","GLOBAL",2)~ + BHalHell1
++ @374 DO ~SetGlobal("B!HalHell","GLOBAL",2)~ + BHalHell2
++ @375 DO ~SetGlobal("B!HalHell","GLOBAL",2)~ + BHalHell3
END

IF ~~ BHalHell1
SAY @376
= @377
IF ~~ THEN EXIT
END

IF ~~ BHalHell2
SAY @378
IF ~~ THEN EXIT
END

IF ~~ BHalHell3
SAY @379
IF ~~ THEN + BHalHell1
END

/* Friendship Talks */

///* Friendship Talk 1 - Getting acquainted */
IF ~Global("B!HalTalk","GLOBAL",1)~ THEN BEGIN h1.0
SAY @380
= @381
+ ~Race(Player1,ELF)~ + @382 DO ~SetGlobal("B!HalTalk","GLOBAL",2) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h1.1
+ ~!Race(Player1,ELF)~ + @382 DO ~SetGlobal("B!HalTalk","GLOBAL",2) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h1.2
++ @383 DO ~SetGlobal("B!HalTalk","GLOBAL",2) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h1.3
++ @384 DO ~SetGlobal("B!HalTalk","GLOBAL",2) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h1.3
++ @385 DO ~SetGlobal("B!HalTalk","GLOBAL",2) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h1.4
++ @386 DO ~SetGlobal("B!HalTalk","GLOBAL",2) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h1.5
END

IF ~~ h1.1
SAY @387
++ @388 + h1.6
++ @389 + h1.7
++ @390 + h1.8
++ @391 + h1.9
END

IF ~~ h1.2
SAY @392
++ @393 + h1.6
++ @394 + h1.7
++ @395 + h1.8
++ @391 + h1.9
END

IF ~~ h1.3
SAY @396
IF ~~ THEN + h1.6
END

IF ~~ h1.4
SAY @397
IF ~~ THEN EXIT
END

IF ~~ h1.5
SAY @398
IF ~~ THEN DO ~SetGlobal("B!HalFriendship","GLOBAL",2)~ EXIT
END

IF ~~ h1.6
SAY @399
IF ~~ THEN EXIT
END

IF ~~ h1.7
SAY @400
IF ~~ THEN EXIT
END

IF ~~ h1.8
SAY @401
++ @402 + h1.15
++ @403 + h1.15
++ @404 + h1.10
++ @405 + h1.11
++ @406 + h1.12
+ ~Class(Player1,THIEF_ALL)~ + @407 + h1.13
+ ~!Class(Player1,THIEF_ALL)~ + @407 + h1.14
++ @408 + h1.15
END

IF ~~ h1.9
SAY @409
IF ~~ THEN EXIT
END

IF ~~ h1.10
SAY @398
IF ~~ THEN EXIT
END

IF ~~ h1.11
SAY @410
++ @411 + h1.16
++ @412 + h1.17
++ @413 + h1.18
++ @414 + h1.19
END

IF ~~ h1.12
SAY @415
IF ~~ THEN + h1.20
END

IF ~~ h1.13
SAY @347
IF ~~ THEN + h1.20
END

IF ~~ h1.14
SAY @416
IF ~~ THEN EXIT
END

IF ~~ h1.15
SAY @417
IF ~~ THEN + h1.20
END

IF ~~ h1.16
SAY @418
IF ~~ THEN + h1.20
END

IF ~~ h1.17
SAY @419
IF ~~ THEN + h1.20
END

IF ~~ h1.18
SAY @420
IF ~~ THEN + h1.20
END

IF ~~ h1.19
SAY @421
IF ~~ THEN EXIT
END

IF ~~ h1.20
SAY @422
IF ~~ THEN EXIT
END

///* Friendship Talk 2 - Who's your daddy? */
IF ~Global("B!HalTalk","GLOBAL",3)~ THEN BEGIN h2.1
SAY @423
++ @424 DO ~SetGlobal("B!HalTalk","GLOBAL",4) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h2.2
++ @425 DO ~SetGlobal("B!HalTalk","GLOBAL",4) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h2.3
++ @426 DO ~SetGlobal("B!HalTalk","GLOBAL",4) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h2.4
++ @427 DO ~SetGlobal("B!HalTalk","GLOBAL",4) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h2.5
END

IF ~~ h2.2
SAY @428
++ @429 + h2.6
++ @430 + h2.7
++ @431 + h2.8
++ @432 + h2.9
++ @433 + h2.9
++ @434 + h2.10
END

IF ~~ h2.3
SAY @435
IF ~~ THEN + h2.2
END

IF ~~ h2.4
SAY @436
IF ~~ THEN DO ~SetGlobal("B!HalDenyBhaal","GLOBAL",1)~ EXIT
END

IF ~~ h2.5
SAY @437
++ @438 + h2.2
++ @439 + h2.10
++ @440 + h2.3
END

IF ~~ h2.6
SAY @441
++ @442 + h2.10
++ @443 + h2.9
++ @444 + h2.8
++ @445 + h2.9
++ @446 + h2.11
END

IF ~~ h2.7
SAY @447
++ @448 + h2.10
++ @449 + h2.11
++ @450 + h2.9
++ @451 + h2.8
END

IF ~~ h2.8
SAY @452
++ @453 + h2.10
++ @454 + h2.9
++ @455 + h2.11
END

IF ~~ h2.9
SAY @456
IF ~~ THEN EXIT
END

IF ~~ h2.10
SAY @457
IF ~~ THEN DO ~SetGlobal("B!HalDenyBhaal","GLOBAL",1)~ EXIT
END

IF ~~ h2.11
SAY @458
IF ~~ THEN DO ~SetGlobal("B!HalDenyBhaal","GLOBAL",1)~ EXIT
END

///* Friendship Talk 3 - Tahlir */
IF ~Global("B!HalTalk","GLOBAL",5)~ THEN BEGIN h3.0
SAY @459
++ @460 DO ~SetGlobal("B!HalTalk","GLOBAL",6) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h3.1
++ @461 DO ~SetGlobal("B!HalTalk","GLOBAL",6) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h3.2
++ @462 DO ~SetGlobal("B!HalTalk","GLOBAL",6) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h3.2
++ @463 DO ~SetGlobal("B!HalTalk","GLOBAL",6) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h3.3
++ @464 DO ~SetGlobal("B!HalTalk","GLOBAL",6) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h3.4
END

IF ~~ h3.1
SAY @465
IF ~~ THEN + h3.2
END

IF ~~ h3.2
SAY @466
IF ~~ THEN + h3.5
END

IF ~~ h3.3
SAY @467
IF ~~ THEN + h3.2
END

IF ~~ h3.4
SAY @468
IF ~~ THEN + h3.2
END

IF ~~ h3.5
SAY @469
++ @470 + h3.6
++ @471 + h3.7
++ @472 + h3.7
END

IF ~~ h3.6
SAY @419
IF ~~ THEN EXIT
END

IF ~~ h3.7
SAY @473
++ @474 + h3.8
++ @475 + h3.9
++ @476 + h3.10
END

IF ~~ h3.8
SAY @477
IF ~~ THEN + h3.11
END

IF ~~ h3.9
SAY @478
IF ~~ THEN + h3.11
END

IF ~~ h3.10
SAY @479
IF ~~ THEN + h3.11
END

IF ~~ h3.11
SAY @480
= @481
++ @482 + h3.12
++ @483 + h3.13
++ @484 + h3.14
++ @485 + h3.15
END

IF ~~ h3.12
SAY @486
IF ~~ THEN + h3.16
END

IF ~~ h3.13
SAY @487
IF ~~ THEN + h3.16
END

IF ~~ h3.14
SAY @488
IF ~~ THEN + h3.16
END

IF ~~ h3.15
SAY @489
IF ~~ THEN + h3.16
END

IF ~~ h3.16
SAY @490
= @491
IF ~~ THEN EXIT
END

///* Friendship Talk 4 - self pity */
IF ~Global("B!HalTalk","GLOBAL",7)~ THEN BEGIN h4.0
SAY @492
++ @493 DO ~SetGlobal("B!HalTalk","GLOBAL",8) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h4.1
++ @494 DO ~SetGlobal("B!HalTalk","GLOBAL",8) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h4.2
++ @495 DO ~SetGlobal("B!HalTalk","GLOBAL",8) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h4.2
++ @496 DO ~SetGlobal("B!HalTalk","GLOBAL",8) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h4.3
++ @497 DO ~SetGlobal("B!HalTalk","GLOBAL",8) RealSetGlobalTimer("B!HalTimer","GLOBAL",7200)~ + h4.4
END

IF ~~ h4.1
SAY @498
IF ~~ THEN + h4.5
END

IF ~~ h4.2
SAY @499
IF ~~ THEN + h4.5
END

IF ~~ h4.3
SAY @500
IF ~~ THEN + h4.5
END

IF ~~ h4.4
SAY @419
IF ~~ THEN EXIT
END
END

CHAIN ~B!HALJ~ h4.5
@501
= @502
== ~B!HALJ~ IF ~!Race(Player1,HALFORC)~ THEN @503
== ~B!HALJ~ IF ~Race(Player1,HALFORC)~ THEN @504
== ~B!HALJ~ IF ~~ THEN @505
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @506
== ~B!HALJ~ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @507
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @508
== ~B!HALJ~ @509
END
++ @510 + h4.6
++ @511 + h4.7
++ @512 + h4.8
++ @513 + h4.9
++ @514 + h4.10
++ @515 + h4.11
++ @516 + h4.12

APPEND ~B!HALJ~

IF ~~ h4.6
SAY @517
IF ~~ THEN + h4.7
END

IF ~~ h4.7
SAY @518
++ @519 + h4.13
++ @520 + h4.14
++ @521 + h4.15
++ @522 + h4.16
END

IF ~~ h4.8
SAY @523
IF ~~ THEN  + h4.7
END

IF ~~ h4.9
SAY @524
= @525
IF ~~ THEN + h4.7
END

IF ~~ h4.10
SAY @526
IF ~~ THEN + h4.7
END

IF ~~ h4.11
SAY @527
IF ~~ THEN + h4.7
END

IF ~~ h4.12
SAY @528
IF ~~ THEN DO ~SetGlobal("B!HalFriendship","GLOBAL",2)~ EXIT
END

IF ~~ h4.13
SAY @398
IF ~~ THEN EXIT
END

IF ~~ h4.14
SAY @529
IF ~~ THEN EXIT
END

IF ~~ h4.15
SAY @419
IF ~~ THEN EXIT
END

IF ~~ h4.16
SAY @530
IF ~~ THEN EXIT
END

///* Friendship Talk 5 - What do you believe? */
IF ~Global("B!HalTalk","GLOBAL",9)~ THEN BEGIN h5.0
SAY @531
++ @532 DO ~SetGlobal("B!HalTalk","GLOBAL",10)~ + h5.1
++ @533 DO ~SetGlobal("B!HalTalk","GLOBAL",10)~ + h5.1
++ @534 DO ~SetGlobal("B!HalTalk","GLOBAL",10)~ + h5.2
++ @535 DO ~SetGlobal("B!HalTalk","GLOBAL",10)~ + h5.1
END

IF ~~ h5.1
SAY @536
++ @537 + h5.3
++ @538 + h5.4
++ @539 + h5.4
++ @540 + h5.5
++ @541 + h5.5
END

IF ~~ h5.2
SAY @542
IF ~~ THEN + h5.1
END

IF ~~ h5.3
SAY @543
++ @544 + h5.7
++ @545 + h5.8
++ @546 + h5.9
++ @547 + h5.8
++ @548 + h5.10
++ @549 + h5.11
END

IF ~~ h5.4
SAY @550
IF ~~ THEN + h5.3
END

IF ~~ h5.5
SAY @419
IF ~~ THEN EXIT
END

IF ~~ h5.6
SAY @551
++ @552 + h5.13
++ @553 + h5.14
++ @554 + h5.15
++ @555 + h5.5
END

IF ~~ h5.7
SAY @556
IF ~~ THEN + h5.6
END

IF ~~ h5.8
SAY @557
IF ~~ THEN + h5.6
END

IF ~~ h5.9
SAY @558
++ @559 + h5.6
++ @560 + h5.5
++ @561 + h5.12
END

IF ~~ h5.10
SAY @562
IF ~~ THEN + h5.6
END

IF ~~ h5.11
SAY @563
IF ~~ THEN EXIT
END

IF ~~ h5.12
SAY @564
IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ h5.13
SAY @565
++ @566 + h5.16
+ ~!Alignment(Player1,MASK_EVIL)~ + @567 + h5.17
+ ~Alignment(Player1,MASK_EVIL)~ + @568 + h5.17
++ @569 + h5.18
++ @570 + h5.19
++ @571 + h5.20
++ @572 + h5.20
END

IF ~~ h5.14
SAY @573
IF ~~ THEN + h5.13
END

IF ~~ h5.15
SAY @574
IF ~~ THEN + h5.13
END

IF ~~ h5.16
SAY @575
IF ~~ THEN EXIT
END

IF ~~ h5.17
SAY @576
IF ~~ THEN EXIT
END

IF ~~ h5.18
SAY @577
IF ~~ THEN EXIT
END

IF ~~ h5.19
SAY @578
IF ~~ THEN EXIT
END

IF ~~ h5.20
SAY @579
IF ~~ THEN EXIT
END

/* Elf Talk */
IF ~Global("B!HalElfTalk","GLOBAL",2)~ THEN BEGIN he.0
SAY @580 
++ @581 DO ~SetGlobal("B!HalElfTalk","GLOBAL",3)~ + he.1
++ @582 DO ~SetGlobal("B!HalElfTalk","GLOBAL",3)~ + he.2
++ @583 DO ~SetGlobal("B!HalElfTalk","GLOBAL",3)~ + he.3
++ @584 DO ~SetGlobal("B!HalElfTalk","GLOBAL",3)~ + he.4
++ @585 DO ~SetGlobal("B!HalElfTalk","GLOBAL",3)~ + he.5
++ @586 + he.6
END

IF ~~ he.1
SAY @587
IF ~~ THEN + he.7
END

IF ~~ he.2
SAY @588
IF ~~ THEN + he.7
END

IF ~~ he.3
SAY @589
IF ~~ THEN + he.7
END

IF ~~ he.4
SAY @590
IF ~~ THEN + he.7
END

IF ~~ he.5
SAY @591
IF ~~ THEN + he.7
END

IF ~~ he.6
SAY @592
IF ~~ THEN + he.7
END

IF ~~ he.7
SAY @593
= @594
++ @595 + he.8
++ @596 + he.9
++ @597 + he.10
++ @598 + he.11
END

IF ~~ he.8
SAY @599
IF ~~ THEN EXIT
END

IF ~~ he.9
SAY @600
++ @601 + he.12
++ @602 + he.13
++ @603 EXIT
++ @604 + he.15
END

IF ~~ he.10
SAY @605
IF ~~ THEN + he.9
END

IF ~~ he.11
SAY @606
IF ~~ THEN EXIT
END

IF ~~ he.12
SAY @607
IF ~~ THEN EXIT
END

IF ~~ he.13
SAY @608
IF ~~ THEN EXIT
END

IF ~~ he.15
SAY @609
IF ~~ THEN EXIT
END
END

/* RE Reaction */
CHAIN
IF ~Global("B!REReactOutdoor","GLOBAL",1)~ THEN PLAYER1 re0
@610
DO ~SetGlobal("B!REReact","GLOBAL",1) SetGlobal("B!REReactOutdoor","GLOBAL",2)~
END
++ @611 EXTERN ~B!HALJ~ re1
++ @612 EXTERN ~B!HALJ~ re1
++ @613 EXTERN ~B!HALJ~ re2

CHAIN
IF ~Global("B!REReactDungeon","GLOBAL",1)~ THEN PLAYER1 re3
@614
DO ~SetGlobal("B!REReact","GLOBAL",1) SetGlobal("B!REReactDungeon","GLOBAL",2)~
END
++ @611 EXTERN ~B!HALJ~ re1
++ @612 EXTERN ~B!HALJ~ re1
++ @613 EXTERN ~B!HALJ~ re2

CHAIN
IF ~Global("B!REReactInn","GLOBAL",1)~ THEN PLAYER1 re0
@615
DO ~SetGlobal("B!REReact","GLOBAL",1) SetGlobal("B!REReactInn","GLOBAL",2)~
END
++ @611 EXTERN ~B!HALJ~ re1
++ @612 EXTERN ~B!HALJ~ re1
++ @613 EXTERN ~B!HALJ~ re2

APPEND ~B!HALJ~

IF ~~ re1
SAY @616
++ @617 + re3
+ ~OR(2) AreaType(OUTDOOR) AreaType(DUNGEON)~ + @272 + re4
+ ~!AreaType(OUTDOOR) !AreaType(DUNGEON)~ + @272 + re5
END

IF ~~ re2
SAY @398
++ @618 + re1
++ @619 DO ~RestParty()~ EXIT
END

IF ~~ re3
SAY @620
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ re4
SAY @621
++ @622 + re6
++ @623 + re6
++ @624 + re7
++ @625 + re8
++ @626 + re6
END

IF ~~ re5
SAY @627
++ @300 + re4
++ @628 + re7
END

IF ~~ re6
SAY @629
= @630
+ ~Global("RE_SolaufeinFlirt","GLOBAL",1)~ + @631 + re9
+ ~Global("RE_TalakFlirt","GLOBAL",1)~ + @632 + re9
+ ~Global("RE_SolaufeinFlirt","GLOBAL",1) !Global("RE_TalakFlirt","GLOBAL",1)~ + @633 + re10
+ ~!Global("RE_SolaufeinFlirt","GLOBAL",1) Global("RE_TalakFlirt","GLOBAL",1)~ + @633 + re11
+ ~Global("RE_SolaufeinFlirt","GLOBAL",1) Global("RE_TalakFlirt","GLOBAL",1)~ + @633 + re12
END

IF ~~ re7
SAY @634
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ re8
SAY @635
++ @636 + re3
++ @637 + re6
END

IF ~~ re9
SAY @638
++ @639 + re13
++ @640 + re14
++ @641 + re13
++ @642 + re14
++ @643 + re16
++ @644 + re13
END

IF ~~ re10
SAY @645
IF ~~ THEN + re9
END

IF ~~ re11
SAY @646
IF ~~ THEN + re9
END

IF ~~ re12
SAY @647
IF ~~ THEN + re9
END

IF ~~ re13
SAY @648
IF ~~ THEN + re7
END

IF ~~ re14
SAY @649
IF ~!CheckStatGT(Player1,8,CHR)~ THEN + re15
IF ~CheckStatGT(Player1,8,CHR)~ THEN + re16
END

IF ~~ re15
SAY @650
++ @651 + re17
++ @652 + re18
END

IF ~~ re16
SAY @653
++ @654 + re18
++ @655 + re18
END

IF ~~ re17
SAY @656
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ re18
SAY @657
++ @530 + re19
++ @658 + re20
END

IF ~~ re19
SAY @659
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ re20
SAY @660
++ @535 + re19
++ @661 + re21
++ @662 + re21
END

IF ~~ re21
SAY @663
++ @664 + re22
++ @665 + re23
++ @666 + re24
END

IF ~~ re22
SAY @667
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ re23
SAY @668
++ @669 DO ~SetGlobal("B!HaldamirSex","GLOBAL",1)~ + re25
++ @670 + re19
END

IF ~~ re24
SAY @671
IF ~~ THEN + re17
END

IF ~~ re25
SAY @672
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* PID */
IF ~IsGabber(Player1)~ THEN BEGIN pid
SAY @673
+ ~RandomNum(5,1)~ + @674 + pid1.1
+ ~RandomNum(5,2)~ + @674 + pid1.2
+ ~RandomNum(5,3)~ + @674 + pid1.3
+ ~RandomNum(5,4)~ + @674 + pid1.4
+ ~RandomNum(5,5)~ + @674 + pid1.5
+ ~RandomNum(4,1)~ + @675 + pid2.1
+ ~RandomNum(4,2)~ + @675 + pid2.2
+ ~RandomNum(4,3)~ + @675 + pid2.3
+ ~RandomNum(4,4)~ + @675 + pid2.4
+ ~RandomNum(6,1)~ + @676 + pid3.1 
+ ~RandomNum(6,2)~ + @676 + pid3.2 
+ ~RandomNum(6,3)~ + @676 + pid3.3 
+ ~RandomNum(6,4)~ + @676 + pid3.4 
+ ~RandomNum(6,5)~ + @676 + pid3.5 
+ ~RandomNum(6,6)~ + @676 + pid3.6 
+ ~RandomNum(6,1)~ + @677 + pid4.1 
+ ~RandomNum(6,2)~ + @677 + pid4.2 
+ ~RandomNum(6,3)~ + @677 + pid4.3 
+ ~RandomNum(6,4)~ + @677 + pid4.4 
+ ~RandomNum(6,5)~ + @677 + pid4.5 
+ ~RandomNum(6,6)~ + @677 + pid4.6 
+ ~RandomNum(6,1)~ + @678 + pid5.1  
+ ~RandomNum(6,2)~ + @678 + pid5.2  
+ ~RandomNum(6,3)~ + @678 + pid5.3  
+ ~RandomNum(6,4)~ + @678 + pid5.4  
+ ~RandomNum(6,5)~ + @678 + pid5.5  
+ ~RandomNum(6,6)~ + @678 + pid5.6 
+ ~RandomNum(23,1)~ + @679 + pid6.1 
+ ~RandomNum(23,2)~ + @679 + pid6.2 
+ ~RandomNum(23,3)~ + @679 + pid6.3 
+ ~RandomNum(23,4)~ + @679 + pid6.4 
+ ~RandomNum(23,5)~ + @679 + pid6.5 
+ ~RandomNum(23,6)~ + @679 + pid6.6 
+ ~RandomNum(23,7)~ + @679 + pid6.7 
+ ~RandomNum(23,8)~ + @679 + pid6.8 
+ ~RandomNum(23,9)~ + @679 + pid6.9 
+ ~RandomNum(23,10)~ + @679 + pid6.10 
+ ~RandomNum(23,11)~ + @679 + pid6.11 
+ ~RandomNum(23,12)~ + @679 + pid6.12 
+ ~RandomNum(23,13)~ + @679 + pid6.13 
+ ~RandomNum(23,14)~ + @679 + pid6.14 
+ ~RandomNum(23,15)~ + @679 + pid6.15 
+ ~RandomNum(23,16)~ + @679 + pid6.16 
+ ~RandomNum(23,17)~ + @679 + pid6.17 
+ ~RandomNum(23,18)~ + @679 + pid6.18 
+ ~RandomNum(23,19)~ + @679 + pid6.19 
+ ~RandomNum(23,20)~ + @679 + pid6.20 
+ ~RandomNum(23,21)~ + @679 + pid6.21 
+ ~RandomNum(23,22)~ + @679 + pid6.22 
+ ~RandomNum(23,23)~ + @679 + pid6.23 
+ ~Global("B!HaldamirSex","GLOBAL",0)~ + @680 + pid7.1
+ ~!Global("B!HaldamirSex","GLOBAL",0)~ + @680 + pid7.2 
+ ~RandomNum(5,1)~ + @681 + pid8.1 
+ ~RandomNum(5,2)~ + @681 + pid8.2 
+ ~RandomNum(5,3)~ + @681 + pid8.3 
+ ~RandomNum(5,4)~ + @681 + pid8.4 
+ ~RandomNum(5,5)~ + @681 + pid8.5
+ ~RandomNum(5,1)~ + @682 + pid9.1 
+ ~RandomNum(5,2)~ + @682 + pid9.2 
+ ~RandomNum(5,3)~ + @682 + pid9.3 
+ ~RandomNum(5,4)~ + @682 + pid9.4 
+ ~RandomNum(5,5)~ + @682 + pid9.5
++ @683 + pid10
++ @684 EXIT
END

IF ~~ pid1.1
SAY @685
IF ~~ THEN EXIT
END

IF ~~ pid1.2
SAY @686 
IF ~~ THEN EXIT
END

IF ~~ pid1.3
SAY @687
IF ~~ THEN EXIT
END

IF ~~ pid1.4
SAY @688
IF ~~ THEN EXIT
END

IF ~~ pid1.5
SAY @689 
IF ~~ THEN EXIT
END

IF ~~ pid2.1
SAY @690
IF ~~ THEN EXIT
END

IF ~~ pid2.2
SAY @691
IF ~~ THEN EXIT
END

IF ~~ pid2.3
SAY @692
IF ~~ THEN EXIT
END

IF ~~ pid2.4
SAY @693
IF ~~ THEN EXIT
END

IF ~~ pid3.1
SAY @694
IF ~~ THEN EXIT
END

IF ~~ pid3.2
SAY @695
IF ~~ THEN EXIT
END

IF ~~ pid3.3
SAY @696
IF ~~ THEN EXIT
END

IF ~~ pid3.4
SAY @697
IF ~~ THEN EXIT
END

IF ~~ pid3.5
SAY @698
IF ~~ THEN EXIT
END

IF ~~ pid3.6
SAY @699
IF ~~ THEN EXIT
END

IF ~~ pid4.1
SAY @700
IF ~~ THEN EXIT
END

IF ~~ pid4.2
SAY @685
IF ~~ THEN EXIT
END

IF ~~ pid4.3
SAY @701
IF ~~ THEN EXIT
END

IF ~~ pid4.4
SAY @702
IF ~~ THEN EXIT
END

IF ~~ pid4.5
SAY @703
IF ~~ THEN EXIT
END

IF ~~ pid4.6
SAY @704
IF ~~ THEN EXIT
END

IF ~~ pid5.1
SAY @705
IF ~~ THEN EXIT
END

IF ~~ pid5.2
SAY @706
IF ~~ THEN EXIT
END

IF ~~ pid5.3
SAY @707
IF ~~ THEN EXIT
END

IF ~~ pid5.4
SAY @708
IF ~~ THEN EXIT
END

IF ~~ pid5.5
SAY @709
IF ~~ THEN EXIT
END

IF ~~ pid5.6
SAY @710
IF ~~ THEN EXIT
END

IF ~~ pid6.1
SAY @711
IF ~~ THEN EXIT
END

IF ~~ pid6.2
SAY @712
IF ~~ THEN EXIT
END

IF ~~ pid6.3
SAY @713
IF ~~ THEN EXIT
END

IF ~~ pid6.4
SAY @714
IF ~~ THEN EXIT
END

IF ~~ pid6.5
SAY @715
IF ~~ THEN EXIT
END

IF ~~ pid6.6
SAY @716
IF ~~ THEN EXIT
END

IF ~~ pid6.7
SAY @717
IF ~~ THEN EXIT
END

IF ~~ pid6.8
SAY @718
IF ~~ THEN EXIT
END

IF ~~ pid6.9
SAY @719
IF ~~ THEN EXIT
END

IF ~~ pid6.10
SAY @720
IF ~~ THEN EXIT
END

IF ~~ pid6.11
SAY @721
IF ~~ THEN EXIT
END

IF ~~ pid6.12
SAY @722
IF ~~ THEN EXIT
END

IF ~~ pid6.13
SAY @723
IF ~~ THEN EXIT
END

IF ~~ pid6.14
SAY @724
IF ~~ THEN EXIT
END

IF ~~ pid6.15
SAY @725
IF ~~ THEN EXIT
END

IF ~~ pid6.16
SAY @726
IF ~~ THEN EXIT
END

IF ~~ pid6.17
SAY @727
IF ~~ THEN EXIT
END

IF ~~ pid6.18
SAY @728
IF ~~ THEN EXIT
END

IF ~~ pid6.19
SAY @729
IF ~~ THEN EXIT
END

IF ~~ pid6.20
SAY @730
IF ~~ THEN EXIT
END

IF ~~ pid6.21
SAY @628
IF ~~ THEN EXIT
END

IF ~~ pid6.22
SAY @731
IF ~~ THEN EXIT
END

IF ~~ pid6.23
SAY @732
IF ~~ THEN EXIT
END

IF ~~ pid7.1
SAY @628
IF ~~ THEN EXIT
END

IF ~~ pid7.2
SAY @733
IF ~~ THEN EXIT
END

IF ~~ pid8.1
SAY @734
IF ~~ THEN EXIT
END

IF ~~ pid8.2
SAY @735
IF ~~ THEN EXIT
END

IF ~~ pid8.3
SAY @736
IF ~~ THEN EXIT
END

IF ~~ pid8.4
SAY @737
IF ~~ THEN EXIT
END

IF ~~ pid8.5
SAY @738
IF ~~ THEN EXIT
END

IF ~~ pid9.1
SAY @739
IF ~~ THEN EXIT
END

IF ~~ pid9.2
SAY @740
IF ~~ THEN EXIT
END

IF ~~ pid9.3
SAY @741
IF ~~ THEN EXIT
END

IF ~~ pid9.4
SAY @742
IF ~~ THEN EXIT
END

IF ~~ pid9.5
SAY @743
IF ~~ THEN EXIT
END

IF ~~ pid10
SAY @744
IF ~~ THEN DO ~SetName(@745)
    SetPlayerSound(Myself,@746,INITIAL_MEETING)
    SetPlayerSound(Myself,@747,MORALE)
    SetPlayerSound(Myself,@748,HAPPY)
    SetPlayerSound(Myself,@749,UNHAPPY_ANNOYED)
    SetPlayerSound(Myself,@750,UNHAPPY_SERIOUS)
    SetPlayerSound(Myself,@751,UNHAPPY_BREAKING_POINT)
    SetPlayerSound(Myself,@752,LEADER)
    SetPlayerSound(Myself,@753,TIRED)
    SetPlayerSound(Myself,@754,BORED)
    SetPlayerSound(Myself,@755,BATTLE_CRY1)
    SetPlayerSound(Myself,@756,BATTLE_CRY2)
    SetPlayerSound(Myself,@757,BATTLE_CRY3)
    SetPlayerSound(Myself,@758,BATTLE_CRY4)
    SetPlayerSound(Myself,@759,DAMAGE)
    SetPlayerSound(Myself,@760,DYING)
    SetPlayerSound(Myself,@761,HURT)
    SetPlayerSound(Myself,@762,AREA_FOREST)
    SetPlayerSound(Myself,@763,AREA_CITY)
    SetPlayerSound(Myself,@764,AREA_DUNGEON)
    SetPlayerSound(Myself,@765,AREA_DAY)
    SetPlayerSound(Myself,@766,AREA_NIGHT)
    SetPlayerSound(Myself,@662,SELECT_COMMON1)
    SetPlayerSound(Myself,@767,SELECT_COMMON2)
    SetPlayerSound(Myself,@768,SELECT_COMMON3)
    SetPlayerSound(Myself,@769,SELECT_COMMON4)
    SetPlayerSound(Myself,@770,SELECT_COMMON5)
    SetPlayerSound(Myself,@782,SELECT_COMMON6)
    SetPlayerSound(Myself,@771,SELECT_ACTION1)
    SetPlayerSound(Myself,@783,SELECT_ACTION2)
    SetPlayerSound(Myself,@772,SELECT_ACTION3)
    SetPlayerSound(Myself,@784,SELECT_ACTION4)
    SetPlayerSound(Myself,@785,SELECT_ACTION5)
    SetPlayerSound(Myself,@773,SELECT_ACTION6)
    SetPlayerSound(Myself,@774,SELECT_ACTION7)
    SetPlayerSound(Myself,@775,SELECT_RARE1)
    SetPlayerSound(Myself,@776,SELECT_RARE2)
    SetPlayerSound(Myself,@777,CRITICAL_HIT)
    SetPlayerSound(Myself,@778,CRITICAL_MISS)
    SetPlayerSound(Myself,@779,TARGET_IMMUNE)
    SetPlayerSound(Myself,@780,INVENTORY_FULL)
    SetPlayerSound(Myself,@781,EXISTANCE5)~ EXIT
END
END