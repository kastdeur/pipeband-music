\version "2.19.0"
%% Globals
global = {
	\time 3/4
	}
confTempo = { 
	\tempo 4 = 60 
	}
%% Format
measure = { \grace {s1} s2. | }
halfline = { \repeat unfold 2 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "God Save The King"
meter = "British National Anthem"
