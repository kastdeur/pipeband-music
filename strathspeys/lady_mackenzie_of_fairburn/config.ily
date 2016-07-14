\version "2.19.0"
%% Globals
global = {
	\time 4/4
	}
confTempo = { \tempo 4 = 108 }
%% Format
part = { \partial 16 s16 }
measure = { \grace{s4} s1 | }
halfline = { \repeat unfold 2 { \measure } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Lady MacKenzie of Fairburn"
meter = "Strathspey"
