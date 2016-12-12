% 4/4 Rowan Tree
% Snare
\version "2.18.2"
composerSide = ""
sideglobal = { \eighthBeaming }

%%music
snareEnding = \drummode {
	\flam d8[ d8]:32(	g8[) d8]:32(	\tuplet 3/2 { g16) d g } \flam d16. g32	d16. g32-> d g d g |
	\flam d4	d4:32(	d4)
}
snareA = \drummode {
	r8 d8 |
	d4:32(	d8) g8	d4:32(	d8) g8 |
	\flam d16 g8 d16->	g16. g32 \flam d16. g32	\flam d16. d32:128( d16.) g32->	d32 g d g \flam d8 |
	\snareEnding
}
% Part 2
snareBA = \drummode {
	d8. g16 |
	d8[:32(-> g8]:32)(->	g8[:32)( d8]:32)(->	g8[:32)( d8]:32)(->	g8[)-> d8]:32( |
	g8.) g16	d8:32( g8)	\flam d8 d8:32(	g8.) g16 |
	\snareEnding
}
