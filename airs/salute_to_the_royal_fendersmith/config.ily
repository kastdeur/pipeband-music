\version "2.19.0"
%% Globals
global = {
	\time 12/8
	\key a \mixolydian
}
confTempo = { 
	\tempo 4. = 40 
}
%% Format
part = { \partial 4. \grace{s4.} s4. }
measure = { \grace {s1} s1. | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Salute to the Royal Fendersmith"
meter = "Slow Air"
