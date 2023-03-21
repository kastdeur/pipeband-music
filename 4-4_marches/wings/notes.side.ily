% 4/4 Wings
% Snare
\version "2.18.2"
composerSide = "v1.2"
sideglobal = {
	\eighthBeaming
}

%%music
snareAAI = \drummode {
	sn8.)\fr g16	d8:32( g8)	r8 d8:32(\dr \> g[:32)(-\staccato\< d8]) \!|
	\flam d16 \f g8\fr d16->	g16. g32 \flam d8	d4:32(\dr \<	d8)\fr \! d16. g32 |
}


snareAA = \drummode {
	d8:32(\dr \mf |
	\snareAAI
}
snareABA = \drummode {
	d4:32(\dr \<	d8) \! \flam g8	d16 \flam g8 g16	\flam d8\fr d8:32( |
	\triplet { g16) d g } \flam d8	d16.[ g32 \drag d8]	d32 g d g d8	d8-> :32~\dr \afterGrace g8->:32(  {s8)\ofr}
}
snareABB = \drummode {
	d4:32)( \<	d8) \! \flam g8	d32 g d g d8	d16.[ g32  \drag d8] |
	d32 g d g d8	d4:32(	d4)
}
% Part 2
snareBA = \drummode {
	d8:32(\dr |
	g8) d16. g32	\flam d16. d32:128( d8)	\flam d8 d16. g32	d8:32(-> \< g8:32)(-> |
	d8.)->\fr \! g16	d8:32( g16.) g32	d8:32( g16.) g32	\sextuplet { d16[ g d-> g d g] } |

	\flamdr d8 d16. g32->	d16. d32 \flam g8	\flam d4\fr	\triplet { <> \p d16 g d } \flam g8 |
	\flam d4	r4	d8:32(\dr \< g8:32)(->	d8:32)(->  \afterGrace g8:32)(->  {s8)\!\ofr}
}
