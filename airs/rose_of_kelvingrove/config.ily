\version "2.19.0"
%% Globals
global = {
	\key d \major
	\time 4/4
}
confTempo = { 
	\tempo 4 = 80 
}
%% Format
part = { \partial 4 \grace{s4.} s4 }
measure = { \grace {s1} s1 | }
quartline = { \repeat unfold 2 \measure }
halfline = { \repeat unfold 2 \quartline }
line = { \repeat unfold 2 \halfline }

%% Headers
title = "The Rose of Kelvingrove"
meter = "Air"
