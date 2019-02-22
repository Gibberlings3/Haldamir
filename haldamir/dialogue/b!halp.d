
BEGIN ~B!HALP~

IF ~!Global("B!HalKicked","GLOBAL",1)~ THEN h0
SAY @0
++ @1 + h1
+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%) !Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + @2 + h2
+ ~OR(2) Global("Chapter","GLOBAL",%bg2_chapter_4%) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + @2 + h3
++ @3 + h4
++ @4 + h7
++ @5 + h5
++ @6 + h6
END

IF ~~ h1
SAY @7
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ h2
SAY @8
IF ~~ THEN DO ~SetGlobal("B!HalKicked","GLOBAL",1) ChangeAIScript("",DEFAULT) EscapeAreaMove("AR0709",995,448,2)~ EXIT
END

IF ~~ h3
SAY @9
IF ~~ THEN DO ~SetGlobal("B!HalKicked","GLOBAL",1) ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ h4
SAY @10
IF ~~ THEN DO ~SetGlobal("B!HalKicked","GLOBAL",1) ChangeAIScript("",DEFAULT) GivePartyAllEquipment()~ EXIT
END

IF ~~ h5
SAY @11
IF ~~ THEN DO ~SetGlobal("B!HalKicked","GLOBAL",1) ChangeAIScript("",DEFAULT) GivePartyAllEquipment() EscapeArea()~ EXIT
END

IF ~~ h6
SAY @12
IF ~~ THEN DO ~SetGlobal("B!HalKicked","GLOBAL",1) ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ h7
SAY @13
IF ~~ THEN DO ~SetGlobal("B!HalKicked","GLOBAL",1) ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~Global("B!HalKicked","GLOBAL",1)~ THEN h8
SAY @14
++ @15 DO ~SetGlobal("B!HalKicked","GLOBAL",0) JoinParty()~ EXIT
+ ~GlobalLT("B!HalRefused","GLOBAL",4)~ + @16 DO ~IncrementGlobal("B!HalRefused","GLOBAL",1)~ + h9
+ ~!GlobalLT("B!HalRefused","GLOBAL",4)~ + @16 + h10
++ @17 + h11
END

IF ~~ h9
SAY @18
IF ~~ THEN EXIT
END

IF ~~ h10
SAY @19
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ h11
SAY @20
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
