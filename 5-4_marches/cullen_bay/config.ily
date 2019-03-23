\version "2.19.0"
%% Globals
global = {
	\time 5/4
	\key a \mixolydian
}
confTempo = {
	\tempo 4 = 90
}
%% Format
part = {\partial 8 s8 }
measure = { \grace { s4 } s2 s2. | }
halfline = { \repeat unfold 2 { \measure } }
line = { \repeat unfold 2 { \halfline  } }

%% Headers
title = "Cullen Bay"
meter = "March"
