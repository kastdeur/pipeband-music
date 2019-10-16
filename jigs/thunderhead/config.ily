\version "2.19.0"
%% Globals
global = {
	\key d \major
	\time 6/8
	}
confTempo = { 
	\tempo 4. = 125
	}
%% Format
measure = { \grace {s1} s2. | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Thunderhead"
meter = "Jig"
