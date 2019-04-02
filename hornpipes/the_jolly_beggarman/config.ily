\version "2.19.0"
%% Globals
global = {
	\time 2/4
	\key a \mixolydian
}
confTempo = { 
	\tempo 4 = 70
}
>>>>>>> tunekeys
%% Format
part = { \partial 8 \grace {s1} s8 }
measure = { \grace {s1} s2 | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Jolly Beggarman"
meter = "Hornpipe"
