\version "2.19.0"
%% Globals
global = {
	\key a \mixolydian
	\time 6/8
	}
confTempo = { 
	\tempo 8 = 90
	}
%% Format
part = { \partial 8 \grace{s4.} s8 }
measure = { \grace {s1} s2. | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Northern Lights of old Aberdeen"
meter = "Song"
