
/* HALDAMIR'S SoA BANTER FILE */

/* CONTENTS */
/* Aerie */
///* Haldamir-Aerie 1 */
///* Haldamir-Aerie 2 */
/* Anomen */
///* Haldamir-Anomen 1 */
///* Haldamir-Anomen 2 */
/* Cernd */
///* Haldamir-Cernd 1 */
///* Haldamir-Cernd 2 */
/* Edwin */
///* Haldamir-Edwin 1 */
///* Haldamir-Edwin 2 */
///* Haldamir-Edwina */
/* HaerDalis */
///* Haldamir-HaerDalis 1 */
///* Haldamir-HaerDalis 2 */
/* Imoen */
///* Haldamir-Imoen 1 */
///* Haldamir-Imoen 2 */
/* Jaheira */
///* Haldamir-Jaheira 1 */
///* Haldamir-Jaheira 2 */
/* Jan */
///* Haldamir-Jan 1 */
///* Haldamir-Jan 2 */
/* Keldorn */
///* Haldamir-Keldorn 1 */
///* Haldamir-Keldorn 2 */
/* Korgan */
///* Haldamir-Korgan 1 */
///* Haldamir-Korgan 2 */
/* Mazzy */
///* Haldamir-Mazzy 1 */
///* Haldamir-Mazzy 2 */
/* Minsc */
///* Haldamir-Minsc 1 */
///* Haldamir-Minsc 2 */
/* Nalia */
///* Haldamir-Nalia 1 */
///* Haldamir-Nalia 2 */
/* Valygar */
///* Haldamir-Valygar 1 */
///* Haldamir-Valygar 2 */
/* Viconia */
///* Haldamir-Viconia 1 */
///* Haldamir-Viconia 2 */
/* Yoshimo */
///* Haldamir-Yoshimo 1 */
///* Haldamir-Yoshimo 2 */

BEGIN ~BB!HAL~

/* Aerie */
///* Haldamir-Aerie 1 */
CHAIN
IF
~InParty("Aerie")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("B!HalAer1","LOCALS",0)
AreaType(OUTDOOR)
CombatCounter(0)
!See([ENEMY])
See("Aerie")
~ THEN ~BB!HAL~ HalAer1
@0
DO ~SetGlobal("B!HalAer1","LOCALS",1)~
== ~BAERIE~ @1
== ~BB!HAL~ @2
== ~BAERIE~ @3
== ~BB!HAL~ @4
== ~BAERIE~ @5
EXIT

///* Haldamir-Aerie 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
TimeOfDay(NIGHT)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalAer2","LOCALS",0)
AreaType(FOREST)
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BAERIE~ HalAer2
@6
DO ~SetGlobal("B!HalAer2","LOCALS",1)~
== ~BB!HAL~ @7
== ~BAERIE~ @8
== ~BB!HAL~ @9
== ~BAERIE~ @10
== ~BB!HAL~ @11
== ~BAERIE~ @12
== ~BB!HAL~ @13
== ~BAERIE~ @14
== ~BB!HAL~ @15
== ~BAERIE~ @16
== ~BB!HAL~ @17
== ~BAERIE~ @18
== ~BB!HAL~ @19
== ~BAERIE~ @20
== ~BB!HAL~ @21
== ~BAERIE~ @22
== ~BB!HAL~ @23
= @24
== ~BAERIE~ @25
== ~BB!HAL~ @26
EXIT

/* Anomen */
///* Haldamir-Anomen 1 */
CHAIN
IF
~InParty("Anomen")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
AreaType(CITY)
Global("B!HalAno1","LOCALS",0)
CombatCounter(0)
!See([ENEMY])
See("Anomen")
~ THEN ~BB!HAL~ HalAno1
@27
DO ~SetGlobal("B!HalAno1","LOCALS",1)~
== ~BANOMEN~ @28
== ~BB!HAL~ @29
== ~BANOMEN~ @30
== ~BB!HAL~ @31
== ~BANOMEN~ @32
== ~BB!HAL~ @33
EXIT

///* Haldamir-Anomen 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalAno2","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BANOMEN~ HalAno2
@34
DO ~SetGlobal("B!HalAno2","LOCALS",1)~
== ~BB!HAL~ @35
== ~BANOMEN~ @36
== ~BB!HAL~ @37
== ~BANOMEN~ @38
== ~BB!HAL~ @39
== ~BANOMEN~ @40
== ~BB!HAL~ @41
EXIT

/* Cernd */
///* Haldamir-Cernd 1 */
CHAIN
IF
~InParty("Cernd")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("B!HalCer1","LOCALS",0)
CombatCounter(0)
!See([ENEMY])
See("Cernd")
~ THEN ~BB!HAL~ HalCer1
@42
DO ~SetGlobal("B!HalCer1","LOCALS",1)~
== ~BCERND~ @43
== ~BB!HAL~ @44
EXIT

///* Haldamir-Cernd 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalCer2","LOCALS",0) 
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BCERND~ HalCer2
@45
DO ~SetGlobal("B!HalCer2","LOCALS",1)~
== ~BB!HAL~ @46
== ~BCERND~ @47
== ~BB!HAL~ @48
== ~BCERND~ @49
== ~BB!HAL~ @50
== ~BCERND~ @51
EXIT

/* Edwin */
///* Haldamir-Edwin 1 */
CHAIN
IF
~InParty("Edwin")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("B!HalEdw1","LOCALS",0) 
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("Edwin")
~ THEN ~BB!HAL~ HalEdw1
@52
DO ~SetGlobal("B!HalEdw1","LOCALS",1)~
== ~BEDWIN~ @53
== ~BB!HAL~ @54
== ~BEDWIN~ @55
== ~BB!HAL~ @56
EXIT

///* Haldamir-Edwin 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
!AreaType(DUNGEON) 
Global("B!HalEdw2","LOCALS",0)
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BEDWIN~ HalEdw2
@57
DO ~SetGlobal("B!HalEdw2","LOCALS",1)~
== ~BB!HAL~ @58
== ~BEDWIN~ @59
== ~BB!HAL~ @60
== ~BEDWIN~ @61
== ~BB!HAL~ @62
EXIT

///* Haldamir-Edwina */
CHAIN
IF
~InParty("Edwin")
Gender("Edwin",FEMALE)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!AreaType(DUNGEON) 
Global("B!HalEdwina","LOCALS",0)
CombatCounter(0)
!See([ENEMY])
See("Edwin")
~ THEN ~BB!HAL~ HalEdwina
@63
DO ~SetGlobal("B!HalEdwina","LOCALS",1)~
== ~BEDWIN~ @64
== ~BB!HAL~ @65
== ~BEDWIN~ @66
== ~BB!HAL~ @67
== ~BEDWIN~ @68
== ~BB!HAL~ @69
== ~BEDWIN~ @70
EXIT

/* HaerDalis */
///* Haldamir-HaerDalis 1 */
CHAIN
IF
~InParty("HaerDalis")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
Global("B!HalHae1","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("HaerDalis")
~ THEN ~BB!HAL~ HalHae1
@71
DO ~SetGlobal("B!HalHae1","LOCALS",1)~
== ~BHAERDA~ @72
== ~BB!HAL~ @73
== ~BHAERDA~ @74
== ~BB!HAL~ @75
== ~BHAERDA~ @76
== ~BB!HAL~ @77
EXIT

///* Haldamir-HaerDalis 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalHae2","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BHAERDA~ HalHae2
@78
DO ~SetGlobal("B!HalHae2","LOCALS",1)~
== ~BB!HAL~ @79
== ~BHAERDA~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ @80
== ~BB!HAL~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ @81
== ~BHAERDA~ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ @82
== ~BB!HAL~ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ @83
== ~BHAERDA~ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ @84
== ~BB!HAL~ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ @85
== ~BHAERDA~ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ @86
== ~BB!HAL~ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ @87
== ~BHAERDA~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ @88
== ~BB!HAL~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ @89
== ~BHAERDA~ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ @90
== ~BB!HAL~ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ @91
== ~BHAERDA~ IF ~OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ @92
== ~BHAERDA~ @93
== ~BB!HAL~ @94
== ~BHAERDA~ @95
== ~BB!HAL~ @96
EXIT

/* Imoen */
///* Haldamir-Imoen 1 */
CHAIN
IF
~InParty("Imoen2")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
Global("B!HalImo1","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("Imoen2")
~ THEN ~BB!HAL~ HalImo1
@97
DO ~SetGlobal("B!HalImo1","LOCALS",1)~
== ~BIMOEN2~ @98
== ~BB!HAL~ @99
== ~BIMOEN2~ @100
== ~BB!HAL~ @101
== ~BIMOEN2~ @102
== ~BB!HAL~ @103
== ~BIMOEN2~ @104
EXIT

///* Haldamir-Imoen 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalImo2","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BIMOEN2~ HalImo2
@105
DO ~SetGlobal("B!HalImo2","LOCALS",1)~
== ~BB!HAL~ @106
== ~BIMOEN2~ @107
== ~BB!HAL~ @108
== ~BIMOEN2~ @109
== ~BB!HAL~ @110
== ~BIMOEN2~ @111
== ~BB!HAL~ @112
EXIT

/* Jaheira */
///* Haldamir-Jaheira 1 */
CHAIN
IF
~InParty("Jaheira")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("B!HalJah1","LOCALS",0)
CombatCounter(0)
!See([ENEMY])
See("Jaheira")
~ THEN ~BB!HAL~ HalJah1
@113
DO ~SetGlobal("B!HalJah1","LOCALS",1)~
== ~BJAHEIR~ @114
== ~BB!HAL~ @115
== ~BJAHEIR~ @116
== ~BB!HAL~ @117
== ~BJAHEIR~ @118
== ~BB!HAL~ @119
== ~BJAHEIR~ @120
EXIT

///* Haldamir-Jaheira 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalJah2","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BJAHEIR~ HalJah2
@121
DO ~SetGlobal("B!HalJah2","LOCALS",1)~
== ~BB!HAL~ @122
== ~BJAHEIR~ @123
== ~BB!HAL~ @124
== ~BJAHEIR~ @125
== ~BB!HAL~ @126
== ~BJAHEIR~ @127
== ~BB!HAL~ @128
EXIT

/* Jan */
///* Haldamir-Jan 1 */
CHAIN
IF
~InParty("Jan")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Jan",CD_STATE_NOTVALID)
Global("B!HalJan1","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("Jan")
~ THEN ~BB!HAL~ HalJan1
@129
DO ~SetGlobal("B!HalJan1","LOCALS",1)~
== ~BJAN~ @130
== ~BB!HAL~ @131
== ~BJAN~ @132
== ~BB!HAL~ @133
== ~BJAN~ @134
EXIT

///* Haldamir-Jan 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalJan2","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BJAN~ HalJan2
@135
DO ~SetGlobal("B!HalJan2","LOCALS",1)~
== ~BB!HAL~ @136
== ~BJAN~ @137
== ~BB!HAL~ @138
== ~BJAN~ @139
== ~BB!HAL~ @140
== ~BJAN~ @141
EXIT

/* Keldorn */
///* Haldamir-Keldorn 1 */
CHAIN
IF
~InParty("Keldorn")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
Global("B!HalKel1","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("Keldorn")
~ THEN ~BB!HAL~ HalKel1
@142
DO ~SetGlobal("B!HalKel1","LOCALS",1)~
== ~BKELDOR~ @143
== ~BB!HAL~ @144
== ~BKELDOR~ @145
== ~BB!HAL~ @146
== ~BKELDOR~ @147
== ~BB!HAL~ @148
EXIT

///* Haldamir-Keldorn 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalKel2","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BKELDOR~ HalKel2
@149
DO ~SetGlobal("B!HalKel2","LOCALS",1)~
== ~BB!HAL~ @60
== ~BKELDOR~ @150
== ~BB!HAL~ @151
== ~BKELDOR~ @152
== ~BB!HAL~ @153
== ~BKELDOR~ @154
EXIT

/* Korgan */
///* Haldamir-Korgan 1 */
CHAIN
IF
~InParty("Korgan")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Korgan",CD_STATE_NOTVALID)
Global("B!HalKor1","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("Korgan")
~ THEN ~BB!HAL~ HalKor1
@155
DO ~SetGlobal("B!HalKor1","LOCALS",1)~
== ~BKORGAN~ @156
== ~BB!HAL~ @157
== ~BKORGAN~ @158
== ~BB!HAL~ @159
== ~BKORGAN~ @160
EXIT

///* Haldamir-Korgan 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalKor2","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BKORGAN~ HalKor2
@161
DO ~SetGlobal("B!HalKor2","LOCALS",1)~
== ~BB!HAL~ @162
== ~BKORGAN~ @163
== ~BB!HAL~ @164
== ~BKORGAN~ @165
== ~BB!HAL~ @166
== ~BKORGAN~ @167
EXIT

/* Mazzy */
///* Haldamir-Mazzy 1 */
CHAIN
IF
~InParty("Mazzy")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("B!HalMaz1","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("Mazzy")
~ THEN ~BB!HAL~ HalMaz1
@168
DO ~SetGlobal("B!HalMaz1","LOCALS",1)~
== ~BMAZZY~ @169
== ~BB!HAL~ @170
== ~BMAZZY~ @171
== ~BB!HAL~ @172
== ~BMAZZY~ @173
== ~BB!HAL~ @174
== ~BMAZZY~ @175
== ~BB!HAL~ @176
== ~BMAZZY~ @177
EXIT

///* Haldamir-Mazzy 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("B!HalMaz2","LOCALS",0)
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BMAZZY~ HalMaz2
@178
DO ~SetGlobal("B!HalMaz2","LOCALS",1)~
== ~BB!HAL~ @179
== ~BMAZZY~ @180
== ~BB!HAL~ @181
== ~BMAZZY~ @182
== ~BB!HAL~ @183
== ~BMAZZY~ @184
== ~BB!HAL~ @185
= @186
== ~BMAZZY~ @187
= @188
== ~BB!HAL~ @189
== ~BMAZZY~ @190
== ~BB!HAL~ @191
== ~BMAZZY~ @192
== ~BB!HAL~ @193
EXIT

/* Minsc */
///* Haldamir-Minsc 1 */
CHAIN
IF
~InParty("Minsc")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("B!HalMin1","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("Minsc")
~ THEN ~BB!HAL~ HalMin1
@194
DO ~SetGlobal("B!HalMin1","LOCALS",1)~
== ~BMINSC~ @195
== ~BB!HAL~ @196
== ~BMINSC~ @197
== ~BB!HAL~ @198
== ~BMINSC~ @199
== ~BB!HAL~ @200
== ~BMINSC~ @201
EXIT

///* Haldamir-Minsc 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalMin2","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BMINSC~ HalMin2
@202
DO ~SetGlobal("B!HalMin2","LOCALS",1)~
== ~BB!HAL~ @203
== ~BMINSC~ @204
== ~BB!HAL~ @205
== ~BMINSC~ @206
EXIT

/* Nalia */
///* Haldamir-Nalia 1 */
CHAIN
IF
~InParty("Nalia")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Nalia",CD_STATE_NOTVALID)
AreaType(CITY)
Global("B!HalNal1","LOCALS",0)
CombatCounter(0)
!See([ENEMY])
See("Nalia")
~ THEN ~BB!HAL~ HalNal1
@207
DO ~SetGlobal("B!HalNal1","LOCALS",1)~
== ~BNALIA~ @208
== ~BB!HAL~ @209
== ~BNALIA~ @210
== ~BB!HAL~ @211
EXIT

///* Haldamir-Nalia 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalNal2","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BNALIA~ HalNal2
@212
DO ~SetGlobal("B!HalNal2","LOCALS",1)~
== ~BB!HAL~ @213
== ~BNALIA~ @214
== ~BB!HAL~ @215
== ~BNALIA~ @216
== ~BB!HAL~ @217
== ~BNALIA~ @218
== ~BB!HAL~ @219
== ~BNALIA~ @220
EXIT

/* Valygar */
///* Haldamir-Valygar 1 */
CHAIN
IF
~InParty("Valygar")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("B!HalVal1","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("Valygar")
~ THEN ~BB!HAL~ HalVal1
@221
DO ~SetGlobal("B!HalVal1","LOCALS",1)~
== ~BVALYGA~ @222
== ~BB!HAL~ @223
== ~BVALYGA~ @224
== ~BB!HAL~ @225
== ~BVALYGA~ @226
== ~BB!HAL~ @227
== ~BVALYGA~ @228
== ~BB!HAL~ @229
== ~BVALYGA~ @230
EXIT

///* Haldamir-Valygar 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("B!HalVal2","LOCALS",0)
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BVALYGA~ HalVal2
@231
DO ~SetGlobal("B!HalVal2","LOCALS",1)~
== ~BB!HAL~ @232
== ~BVALYGA~ @233
== ~BB!HAL~ @234
== ~BVALYGA~ @235
== ~BB!HAL~ @236
== ~BVALYGA~ @237
EXIT

/* Viconia */
///* Haldamir-Viconia 1 */
CHAIN
IF
~InParty("Viconia")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("B!HalVic1","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("Viconia")
~ THEN ~BB!HAL~ HalVic1
@238
DO ~SetGlobal("B!HalVic1","LOCALS",1)~
== ~BVICONI~ @239
== ~BB!HAL~ @240
== ~BVICONI~ @241
== ~BB!HAL~ @242
== ~BVICONI~ @243
== ~BB!HAL~ @244
= @245
EXIT

///* Haldamir-Viconia 2 */
/* Thanks, K'aeloree! */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalVic2","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BVICONI~ HalVic2
@246
DO ~SetGlobal("B!HalVic2","LOCALS",1)~
== ~BB!HAL~ @247
== ~BVICONI~ @248
== ~BB!HAL~ @249
== ~BVICONI~ @250
== ~BB!HAL~ @251
== ~BVICONI~ @252
EXIT

/* Yoshimo */
///* Haldamir-Yoshimo 1 */
CHAIN
IF
~InParty("Yoshimo")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
Global("B!HalYos1","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("Yoshimo")
~ THEN ~BB!HAL~ HalYos1
@253
DO ~SetGlobal("B!HalYos1","LOCALS",1)~
== ~BYOSHIM~ @254
== ~BB!HAL~ @255
== ~BYOSHIM~ @256
== ~BB!HAL~ @257
== ~BYOSHIM~ @258
EXIT

///* Haldamir-Yoshimo 2 */
CHAIN
IF
~InParty("B!HALDAMIR")
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("B!HALDAMIR",CD_STATE_NOTVALID)
Global("B!HalYos2","LOCALS",0)
!AreaType(DUNGEON) 
CombatCounter(0)
!See([ENEMY])
See("B!HALDAMIR")
~ THEN ~BYOSHIM~ HalYos2
@259
DO ~SetGlobal("B!HalYos2","LOCALS",1)~
== ~BB!HAL~ @260
== ~BYOSHIM~ @261
== ~BB!HAL~ @262
== ~BYOSHIM~ @263
== ~BB!HAL~ @264
== ~BYOSHIM~ @265
EXIT
