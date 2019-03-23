\version "2.19.0"
%% Globals
global = {
	\time 2/2
	\key a \mixolydian
}
confTempo = { 
	\tempo 2 = 80 
}
%% Format
part = { \partial 8 \grace{s4.} s8 }
measure = { \grace {s1} s1 | }
halfline = { \repeat unfold 2 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "the Piobaireachd of Donald Dubh"
meter = "Reel"
