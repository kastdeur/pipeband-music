\version "2.19.0"
%% Globals
global = {
	\key d \major
	\time 2/2
	}
confTempo = {
	\tempo 4 = 80
	}
%% Format
part = { \partial 16 \grace{s4.} s16 }
measure = { \grace {s1} s1 | }
halfline = { \repeat unfold 2 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Lady Seaforth"
meter = "Reel"
