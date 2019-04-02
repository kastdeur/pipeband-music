\version "2.19.0"
%% Globals
global = {
	\time 6/8
	\key a \mixolydian
}
confTempo = { 
	\tempo 4 = 60 
}
%% Format
%part = { \partial 8 s8 }
measure = { \grace {s1} s2. | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Mull of Kintyre"
meter = "Air"
