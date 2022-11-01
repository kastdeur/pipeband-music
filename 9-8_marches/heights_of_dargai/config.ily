\version "2.19.0"
%% Globals
global = {
	\time 9/8
	\key a \mixolydian
}
confTempo = { 
	\tempo 4. = 90 
}
%% Format
part = { \partial 8 s8 }
measure = { \grace {s1} s4.*3 | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Heights of Dargai"
meter = "March"
