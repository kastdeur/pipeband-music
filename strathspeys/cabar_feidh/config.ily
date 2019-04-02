\version "2.19.0"
%% Globals
global = {
	\time 4/4
	\key a \mixolydian
}
confTempo = { 
	\tempo 4 = 110
}
%% Format
part = { \partial 16 \grace{s1} s16 }
measure = { \grace {s1} s1 | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Cabar Fèidh"
meter = "Strathspey"
