\version "2.19.0"
%% Globals
global = {
	\time 4/4
	}
confTempo = { 
	\tempo 4 = 90 
	}
%% Format
part = { \partial 8 s8 }
measure = { \grace { s4 } s1 | }
halfline = { \repeat unfold 2 { \measure } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Pikeman's March"
meter = "March"
