\version "2.19.0"
%% Globals
global = {
	\time 6/8
	\key d \major
}
confTempo = { 
	\tempo 4. = 90 
}
%% Format
part = { \partial 4 \grace{s1}s4 }
measure = { \grace {s1} s2. | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The 72nd Highlanders"
meter = "March"
