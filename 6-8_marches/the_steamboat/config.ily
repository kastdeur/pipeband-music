\version "2.19.0"
%% Globals
global = {
	\time 6/8
	\key a \mixolydian
}
confTempo = { 
	\tempo 4 = 80 
}
%% Format
part = { \partial 8 s8 }
measure = { \grace { s4 } s1. | }
halfline = { \repeat unfold 2 { \measure } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Steamboat (Hills of Caithness)"
meter = "March"
