\version "2.19.0"
%% Globals
global = {
	\time 4/4
	\key d \major
}
confTempo = { 
	\tempo 4 = 70 
}
%% Format
part = { \partial 8*3 \grace {s4} s8*3 }
measure = { \grace {s1} s1 | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "When the Pipers play"
meter = "Slow Air"
