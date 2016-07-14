\version "2.19.0"
%% Globals
global = {
	\time 6/8
	}
confTempo = {
	\tempo 2. = 90
}

%% Format
part = { \partial 8 s8 }
halfline = { \repeat unfold 4 { s2. | } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Alexander MacKenzie"
meter = "Slow March"
