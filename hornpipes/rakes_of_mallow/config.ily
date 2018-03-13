\version "2.19.0"
%% Globals
global = {
	\key d \major
	\time 2/4
	}
confTempo = {
	\tempo 4 = 80
	}
%% Format
part = { \partial 8 \grace{s4.} s8 }
measure = { \grace {s1} s1 | }
halfline = { \repeat unfold 2 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Rakes of Mallow"
meter = "Hornpipe/Reel"
