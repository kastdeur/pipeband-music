\version "2.19.0"
%% Globals
global = {
	\time 6/8
	\key a \mixolydian
}
confTempo = { 
	\tempo 4 = 90 
}
%% Format
part = { \partial 8 s8 }
measure = { \grace { s4 } s1. | }
halfline = { \repeat unfold 2 { \measure } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Piobaireachd o' Donuil Dubh"
meter = "Regimental March Past of The Seaforth Highlanders"
