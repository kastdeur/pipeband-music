\version "2.19.0"
%% Globals
global = {
	\time 6/8
	}

%% Format
part = { \partial 8 \grace{s4} s8 }
halfline = { \repeat unfold 4 { \grace{s4} s2. | } }
line = { \repeat unfold 2 { \halfline } }

%% Headers
title = "Seaforth Sticks"
meter = "Jig"
