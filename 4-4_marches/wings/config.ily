\version "2.19.0"
%% Globals
global = {
	\time 4/4
	}
confTempo = {
	\tempo 4 = 90
	}
%% Format
part = { \partial 4 \grace { s4 } s4 }
measure = { \grace { s4 } s1 | }
quartline = { \repeat unfold 2 { \measure } }
halfline = { \repeat unfold 2 { \quartline } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Wings"
meter = "March"
