\version "2.19.0"
%% Globals
global = {
	\time 3/4
	}
confTempo = {
	\tempo 4 = 60
	}
%% Format
part = { \partial 4 s4 }
measure = { \grace { s4 } s4*3 | }
halfline = { \repeat unfold 2 { \measure } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Amazing Grace"
meter = "Hymn"
