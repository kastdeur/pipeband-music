\version "2.19.0"
%% Globals
global = {
	\time 2/4
	}
confTempo = {
	\tempo 4 = 90
	}
%% Format
partspacer = { \grace {s4} s8 }
part = { \partial 8 }
measure = { \grace { s4 } s2 | }
halfline = { \repeat unfold 4 { \measure } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Piper's Cave"
meter = "March"