% 4/4 Scotland the Brave
% Snare
\version "2.18.2"
composerSide = ""
sideglobal = {
	\eighthBeaming
	}
%%music
snareA = \drummode {
	\tutti {
		d8:32( |
		g8.)
	} g16	d8:32( g8)	\flam d8[ d8:32(]	g8)[ \tutti { d8:32(] |
		\triplet { g16) d g } \flam d16. g32	\triplet { d16 g d } \flam g16. g32	d16. g32 \triplet { d16 g d }	\flam g8  d8:32( |
		g8.)
	} g16	d8:32( g8)	\flam d8 d8:32(	\triplet { g16) d g } \flam d8 |
	\tutti {
		\flam g4	d4:32(	d4)
	} r8
}
% Part 2
snareBAA = \drummode {
	\tutti {
		g8 |
		d4:32(	d8) g8	d4:32(	d8)
	} d8:32( |
	\triplet { g16) d g } \flam d16. g32	\triplet { d16 g d } \flam g16. g32	d16. g32 \triplet { d16 g d }	\flam g8
}
snareBA = \drummode {
	\snareBAA
	\tutti {
		g8 |
		d4:32(	d8) g8	d4:32(	d8) g8 |
	\flam d4	d4:32(	d4)
	} r8
}
snareBAhigh = \drummode {
	\snareBAA
	\tutti {
		g8 |
		d4:32(	d8) g8	d4:32(	d8) g8 |
		\flam d4	d4:32(	d16.)
	} g32-> d16. d32
	\flam g8
}
