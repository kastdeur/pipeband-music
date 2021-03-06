% 4/4 Abide with Me
% Side
\version "2.18.2"
composerSide = "W.H. de Boone, 2014"
sideglobal = { \eighthBeaming }
snareAA = \drummode {
	\flam  d8->) \! \triplet { d16 g d }	g8 \flam d->	r8 \flam d	r8 g |
	\flam  d8-> \triplet { d16 g d }	g8 \flam d->	r8 \flam d	r8 g |
	\flam  d8-> \triplet { d16 g d }	\flam  g8-> \triplet { d16 g d }	\flam  g8-> \triplet { d16 g d }	\flam g8 \flam d-> |
	d4:32( \<	d4:32)(	d4:32)(	d4:32)( \! \> |
}
snareAB = \drummode {
	\flam  d8->) \! \triplet { d16 g d }	g8 \flam d->	r8 \flam d	r8 \flam g |
	\flam  d8->\< \triplet { d16 g d }	\flam  g8-> \triplet { d16 g d }	\flam  g8-> \triplet { d16 g d }	\flam g8[ \drag d]->\! |
	d4:32( \>	d4:32)(	d4:32)(	d4:32)( |
	d4:32)( \<	d4:32)(	d4:32)(	d4:32)\laissezVibrer \!
}

snareRollsAA = \drummode {
	d1:32)( \! \p |
	d1:32)( |
	d1:32)( |
	d4:32)( \<	d4:32)(	d4:32)(	d4:32)( \!\mf \> |
}

snareRollsAB = \drummode {
	d1:32)( \!\p |
	d1:32)( |
	d4:32( \f \>	d4:32)(	d4:32)(	d4:32)(\p |
	d4:32)( \<	d4:32)(	d4:32)(	d4:32)\laissezVibrer \!
}
