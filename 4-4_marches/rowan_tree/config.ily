\version "2.19.0"
%% Globals
global = {
	\time 4/4
	\eighthBeaming
	}

%% Format
part = { \partial 4 s4 }
measure = { \grace { s4 } s1 | }
halfline = { \repeat unfold 2 { \measure } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Rowan Tree"
meter = "March"


composerSide  = ""
composerTenor = ""
composerBass  = ""
composerPipes = ""
