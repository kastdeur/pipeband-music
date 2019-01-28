\version "2.19.0"
%% Globals
global = {
	\time 2/4
	\eighthBeaming
	}
confTempo = {
	\tempo 4 = 80
	}
%% Format
part = { \partial 8 s8 }
measure = { \grace { s4 } s2 | }
quarterline = { \repeat unfold 2 { \measure } }
halfline = { \repeat unfold 2 { \quarterline } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Duncan McInnes"
meter = "Drum Salute in Quick Time"
