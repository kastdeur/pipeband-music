\version "2.19.0"
%% Globals
global = {
	\time 4/4
	}
confTempo = {
	\tempo 4 = 90
	}
%% Format
part = { \partial 4 s4 }
halfline = { \repeat unfold 2 { s1 | } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "51st Highland Division"
meter = "March"

composerSide  = ""
composerTenor = ""
composerBass  = ""
composerPipes = ""