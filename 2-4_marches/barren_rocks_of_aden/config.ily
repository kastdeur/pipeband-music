\version "2.19.0"
%% Globals
global = {
	\time 2/4
	}
confTempo = { 
	\tempo 4 = 80 
	}
%% Format
part = { \partial 8 \grace {s1} s8 }
measure = { \grace {s1} s2 | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "(79th H.L.I. Farewell to) the Barren Rocks of Aden"
%title = "The Barren Rocks of Aden"
meter = "March"
