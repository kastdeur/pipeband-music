\version "2.19.0"
%% Globals
global = {
	\key a \major
	\time 4/4
}
confTempo = {
	\tempo 4 = 90
}
%% Format
part = { \partial 4 \grace {s4} s4 }
measure = { \grace { s4 } s1 | }
halfline = { \repeat unfold 2 { \measure } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Flett of Flotta"
meter = "March"
