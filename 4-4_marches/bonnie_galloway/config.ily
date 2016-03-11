\version "2.19.0"
%% Globals
global = {
	\time 4/4
	}
confTempo = { 
	\tempo 4 = 80 
	}
%% Format
part = { \partial 8 s8 }
halfline = { \repeat unfold 4 { s1 | } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Bonnie Galloway"
meter = "March"
