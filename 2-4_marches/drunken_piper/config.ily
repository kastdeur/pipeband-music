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
measure = { \grace {s1} s2 | }
halfline = { \repeat unfold 4 \measure }
halflineMinusPart = { \repeat unfold 3 { \measure } s4 s8 }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Drunken Piper"
subtitle = "(Reel of the 51st Division)"
meter = "March"

%%% Changes
%%{^DBA,^DBB}-4 = d8 {g8,e8}

