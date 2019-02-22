
BEGIN ~B!HAL~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN h0
SAY @0
++ @1 + h1
++ @2 + h1
++ @3 + h1
END

IF ~~ h1
SAY @4
++ @5 + h2
++ @6 + h2
++ @7 + h3
END

IF ~~ h2
SAY @8
++ @9 + h4
++ @10 + h5
++ @11 + h6
END

IF ~~ h3
SAY @12
IF ~~ THEN + h2
END

IF ~~ h4
SAY @13
++ @14 + h7
++ @15 + h7
++ @16 + h6
END

IF ~~ h5
SAY @17
IF ~~ THEN + h4
END

IF ~~ h6
SAY @18
IF ~~ THEN EXIT
END

IF ~~ h7
SAY @19
= @20
++ @21 + h8
++ @22 EXIT 
END

IF ~~ h8
SAY @23
++ @24 + h9
++ @25 + h10
++ @26 + h11
END

IF ~~ h9
SAY @27
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ h10
SAY @28
IF ~~ THEN EXIT
END

IF ~~ h11
SAY @29
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN h12
SAY @30
++ @31 + h9
++ @32 + h9
++ @33 + h6
++ @34 + h11
END
