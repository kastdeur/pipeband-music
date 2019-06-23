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
part = { \partial 4 \grace{s4.} s4 }
measure = { \grace {s1} s1 | }
halfline = { \repeat unfold 5 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Muss i'Denn (Wooden Heart)"
meter = "March"
