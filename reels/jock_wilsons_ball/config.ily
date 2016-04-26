\version "2.19.0"
%% Globals
global = {
	\time 2/2
	}
confTempo = { 
	\tempo 2 = 40 
	}
%% Format
part = { \partial 8 s8 }
halfline = { \repeat unfold 4 { s1 | } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Jock Wilson's Ball"
meter = "Reel"
