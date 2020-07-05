\version "2.19.0"
%% Globals
global = {
	\time 3/4
	}
confTempo = { 
	\tempo 4 = 80 
	}
%% Format
part = { \partial 8 \grace { s4 } s8 }
measure = { \grace {s1} s4*3 | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Jim Thomson of Flagstaff"
meter = "March"
