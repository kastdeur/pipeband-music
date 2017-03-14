% 2/4 Black Bear
% Snare
\version "2.18.2"
composerSide = "C. Ooms, v1.5 2016"
sideglobal = { \eighthBeaming }
%%music

snareA = \drummode {
	d16.\dr g32 |
	d8:32(-> g:32)(->	\triplet { d16) g d-> } g16. g32 |
	d8:32(-> g:32)(->	\triplet { d16) g d-> } g16. g32 |
	\flam d8 d8:32(		g8)\fr d16. g32 |
	d16.:64( d32) \triplet { g16 d g }	\flam d16. \flam g32 d16.\dr g32 |

	d8:32(-> g:32)(->	\triplet { d16) g d-> } g16. g32 |
	d8:32(-> g:32)(->	\triplet { d16) g d-> } g16. g32 |
	\flam d8 d8:32(		\triplet { g16) d g } \flam d16.\fr g32 |
	\flam d16. g32-> d32 g d g	d8
}

snareBA = \drummode {
	g8 |
	\flamdr d16. g32 d16. \flam g32		d16. g32-> d32 g d g |
	d8-> \fr d16. \pp g32	\triplet { d16 d g } d16.-> g32 |
	\flamdr d16. \mf g32 d16. \flam g32		d16. g32-> d32 g d g |
	d16.-> \fr g32 d16. \flam g32	d32 g d g d16. g32 |

	\flam d16. g32 d16. g32:128(->		g16:64 d8:32)(-> g16:32)(-> |
	d8.:32)(-> \dr g16:64)(->	g16:64 d8:32)(-> g16) |

	\flam d16. g32 d16. \flam d32		d16. \flam g32 d32 g d g |
	d8->\fr  \triplet { d16 \< d g } \triplet { d16 g g } d8-> \!
}
