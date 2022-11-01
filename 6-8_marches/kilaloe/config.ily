\version "2.19.0"
%% Globals
global = {
	\time 6/8
	\key d \major
}
confTempo = { 
	\tempo 4. = 90 
}
%% Format
part = { \partial 8 \grace {s4} s8 }
measure = { \grace {s4 } s2. | }
halfline = { \repeat unfold 4 { \measure } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Kilaloe"
info = "Regimental March Past of The Royal Irish Rangers"
meter = "March"
