\version "2.19.0"
%% Globals
global = {
	\time 6/8
	}
confTempo = {
	\tempo 4. = 90
	}

%% Format
part = { \partial 8 s8 }
measure = { \grace { s4 } s1. | }
halfline = { \repeat unfold 2 { \measure } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Hills of Glenorchy"
meter = "March"
