% 4/4 Wings
% Snare
\version "2.18.2"
composerSide = ""
sideglobal = {
	\eighthBeaming
}

%%music
snareAAI = \drummode {
	g8.)\fr g16	d8:32( g8)	r8  d32->\dr \< g d g	d-> g d g d8-> \! |
	\flamd d16\fr \f g8 d16->	g16. g32 \flamd d8	d4:32(\dr \<	d8)\fr \! d16. g32 |
}


snareAA = \drummode {
	d8:32(\dr \mf |
  \snareAAI
}
snareABA = \drummode {
	d4:32(\dr \<	d8) \! \flamg g8	d16 \flamg g8 g16	\flamd d8\fr d8:32( |
	\tuplet 3/2 { g16) d g } \flamd d8	d16.[ g32 \dragd d8]	d32 g d g d8	d8[:32~\dr \afterGrace g8]:32(  {s8)\ofr}
}
snareABB = \drummode {
	d4:32)( \<	d8) \! \flamg g8	d32 g d g d8	d16.[ g32  \dragd d8] |
	d32 g d g d8	d4:32(	d4)
}
% Part 2
snareBA = \drummode {
	d8:32(\dr |
	g8) d16. g32	\flam d16. d32:128( d8)	\flamd d8 d16. g32	d8:32(-> \< g8:32)(-> |
	d8.)->\fr \! g16	d8:32( g16.) g32	d8:32( g16.) g32	\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g d g } |

	\flamdr d8 d16. g32->	d16. d32 \flamg g8	\flamd d4\fr	\tuplet 3/2 { d16 \p g d } \flamg g8 |
	\flamd d4	r4	d8[:32(->\dr \< g8]:32)(->	d8[:32)(->  \afterGrace g8]:32)(->  {s8)\!\ofr}
}
