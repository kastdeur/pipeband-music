\version "2.19.0"
%% Globals
global = {
	\time 6/8
	\key a \mixolydian
}
confTempo = {
	\tempo 4. = 60
}

%% Format
part = { \partial 8 \grace {s1} s8 }
halfline = { \repeat unfold 4 { \grace {s1} s2. | } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Alexander MacKenzie"
meter = "Slow March"
