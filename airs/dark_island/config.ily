\version "2.19.0"
%% Globals
global = {
	\time 6/8
	\key d \major
}
confTempo = { 
	\tempo 4. = 40 
}
%% Format
part = { \partial 8 \grace {s1} s8 }
measure = { \grace {s1} s2. | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Dark Island"
meter = "Slow Air"
