\version "2.19.0"
%% Globals
global = {
	\time 4/4
	\key d \major
	}
confTempo = { 
	\tempo 4 = 40 
	}
%% Format
part = { \partial 8 s8 }
measure = { \grace {s1} s1 | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Highland Cathedral"
meter = "Air"
