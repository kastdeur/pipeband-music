\version "2.19.0"
%% Globals
global = {
	\key a \mixolydian
	\time 4/4
	}
confTempo = { 
	\tempo 4 = 80 
	}
%% Format
part = { \partial 8 \grace{s1} s8 }
measure = { \grace {s1} s1 | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Cabar Feidh"
alttitleI = "Deer's Horn"
title = "Cabar Fèidh"
meter = "March"
info = "Regimental March of the Seaforth Highlanders"
