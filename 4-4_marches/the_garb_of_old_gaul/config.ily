\version "2.19.0"
%% Globals
global = {
	\key d \major
	\time 4/4
	}
confTempo = { 
	\tempo 4 = 90 
	}
%% Format
part = { \partial 4 \grace{s4.} s4 }
measure = { \grace {s1} s1 | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Garb of old Gaul"
meter = "March"