\version "2.19.0"
%% Globals
global = {
	\time 6/8
	\key d \major
}
confTempo = {
	\tempo 2. = 60
}
%% Format
part = { \partial 8 s8 }
measure = {\grace{s1} s2. |}
halfline = { \repeat unfold 2 { \measure } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Flower of Scotland"
meter = "Air"
