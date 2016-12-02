\version "2.19.0"
%% Globals
global = {
	\time 3/4
	}
confTempo = { 
	\tempo 4 = 80 
	}
%% Format
part = { \partial 4 \grace{s4.} s4 }
measure = { \grace {s4} s2. | }
halfline = { \repeat unfold 4 \measure }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Zie de Maan schijnt door de Bomen"
meter = "Sinterklaaslied"
