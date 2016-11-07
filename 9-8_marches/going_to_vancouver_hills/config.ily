\version "2.19.0"
%% Globals
global = {
	\time 9/8
	}
confTempo = { 
	\tempo 2. = 80 
	}
%% Format
measure = { \grace {s1} s4.*3 | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Going To Vancouver Hills"
meter = "March"
