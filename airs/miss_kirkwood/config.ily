\version "2.19.0"
%% Globals
global = {
	\time 6/8
	\key a \mixolydian
}
confTempo = {
  	\tempo 4. = 46
}
%% Format
part = { \partial 8 s8 }
halfline = { \repeat unfold 4 { s2. | } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Miss Kirkwood"
meter = "Slow Air"
