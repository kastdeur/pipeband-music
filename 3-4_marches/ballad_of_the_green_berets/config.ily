\version "2.19.0"
%% Globals
global = {
	\time 3/4
	\key a \mixolydian
	}
confTempo = {
	\tempo 4 = 90
	}
%% Format
part = { \partial 8 s8 }
measure = { \grace { s4 } s2. | }
halfline = { \repeat unfold 4 { \measure } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "The Ballad of the Green Berets"
meter = "March of the Korps Commando Troepen"
