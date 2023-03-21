% 4/4 Rowan Tree
% Snare
\version "2.18.2"
composerSide = "v1.1"
sideglobal = { \eighthBeaming }

%%music
snareEnding = \drummode {
	% r8 missing
	d8:32(
	g8[) d8]:32(
	\tuplet 3/2 { g16) d g } \flam d16. g32
	d16.\fr g32-> d g d g
	|
	\flamdr d4	d4:32(	d4) \fr
}
snareA = \drummode {
	r8 \tutti {
		g8 |
		d4:32(	d8) g8	d4:32(	d8) g8
		|
		\flam d16 g8
	} d16->
	g16. g32 \flam d16. g32
	\tutti {
		\flam d16.-> d32:128( d16.)
	} g32
	\triplet {d16 g d } \flam g8
	|
	\flamdr d8
	\snareEnding
}
% Part 2
snareBA = \drummode {
	d8. g16 |
	\tutti {
		d8[:32(->
		g8]:32)(->	d8[:32)( g8]:32)(->	d8[:32)( g8]:32)(->	d8[)->
	} d8]:32( \pp |
	g8.) g16	d8:32( g8)	\flam d8 d8:32(	g8.) g16\mf\dr |
	\flam d8\v
	\snareEnding
}
