\version "2.19.0"
%% Globals
global = {
	\time 3/4
	\key d \major
}
confTempo = {
	\tempo 4 = 78
}
%% Format
part = { \partial 4 \grace{s4.} s4 }
measure = { \grace {s1} s4 s4 s4| }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Castle Dangerous"
meter = "Retreat"
