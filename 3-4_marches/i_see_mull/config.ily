\version "2.19.0"
%% Globals
global = {
	\key d \major
	\time 3/4
	}
confTempo = { 
	\tempo 4 = 80 
	}
%% Format
measure = { \grace {s1} s2. | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "I See Mull (Land of My Youth)"
meter = "Retreat"
