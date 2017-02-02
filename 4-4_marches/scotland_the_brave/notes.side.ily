% 4/4 Scotland the Brave
% Snare
\version "2.18.2"
composerSide = ""
sideglobal = {
	\eighthBeaming
	}
%%music
snareA = \drummode {
	d8:32(\dr |
	g8.)\fr g16	d8:32( g8)	\flam d8[ d8:32(]	g8)[ d8:32(]\dr |
	\triplet { g16) d g } \flam d16. g32	\triplet { d16 g d } \flam g16. g32	d16. g32 \triplet { d16 g d }	\flam g8\fr d8:32( |
	g8.) g16	d8:32( g8)	\flam d8 d8:32(	\triplet { g16) d g } d8 |
	\flamdr d4	d4:32(	d4)\fr	r8
}
% Part 2
snareBA = \drummode {
	g8 |
	d4:32(\dr	d8) g8	d4:32(	d8)\fr d8:32( |
	\triplet { g16) d g } \flam d16. g32	\triplet { d16 g d } \flam g16. g32	d16. g32 \triplet { d16 g d }	\flam g8 g8 |
	d4:32(\dr	d8) g8	d4:32(	d8) g8 |
	\flam d4	d4:32(	d4)\fr	r8
}
