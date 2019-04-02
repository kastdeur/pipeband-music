\version "2.19.0"
%% Globals
global = {
	\time 6/8
	\key b \minor
}
confTempo = {
  \tempo 2. = 40
}
part = {\partial 8 s8 }
%% Format
measure = {\grace{s1} s2. | }
halfline = { \repeat unfold 4 {\measure}}
line = {\repeat unfold 2 {\halfline}}

%% Headers
title = "The Mist Covered Mountains"
meter = "Slow Air"
