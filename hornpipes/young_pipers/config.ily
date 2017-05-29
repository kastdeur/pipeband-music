\version "2.19.0"
%% Globals
global = {
	\time 2/4
	}
confTempo = { 
	\tempo 4 = 80 
	}
%% Format
part = { \partial 8 s8 }
measure = { \grace {s1} s2 | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

twoOfTwo = \markup { \text \fontsize #2 { 2 of 2 } }
twoOfFour = \markup { \text \fontsize #2 { 2 of 4 }}

%% Headers
title = "Young Pipers"
meter = "Hornpipe"
