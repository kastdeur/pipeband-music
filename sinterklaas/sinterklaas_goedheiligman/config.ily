\version "2.19.0"
%% Globals
global = {
	\time 2/4
	\key a \mixolydian
}
confTempo = { 
	\tempo 4 = 80 
}
%% Format
part = { \partial 8 \grace{s4.} s8 }
measure = { \grace {s4} s2 | }
line = { \repeat unfold 7 { \measure } }

%% Headers
title = "Sinterklaas, goedheiligman"
meter = "Sinterklaaslied"
