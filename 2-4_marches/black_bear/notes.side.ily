% 2/4 Black Bear
% Snare
\version "2.18.2"
composerSide = "C. Ooms, 2016"
sideglobal = { \eighthBeaming }
%%music

snareAnotmeasone = \drummode {
	d8:32(-> \dr g:32)(->	\triplet { d16) g d-> } g16. g32 |
	\flam d8 d8:32(		g8) \fr d16. g32 |
	d16.:64( d32) \triplet { g16 d g }	\flam d16. \flam g32 d16. g32 \dr |

	\flam d8 g8:32(->	\triplet { d16)\fr g d-> } g16. g32 |
	d8:32(-> \dr g:32)(->	\triplet { d16) g d-> } g16. g32 |
	\flam d8 d8:32(		\triplet { g16) d g } \flam d16. g32 |
	\flam d16. g32-> d32 g d g	d8 \fr
}

snareA = \drummode {
	d16. g32 |
	d8:32(-> \dr g:32)(->	\triplet { d16) \fr g d-> } g16. g32 |
	\snareAnotmeasone
}

snareBA = \drummode {
	g8 |
	\flam d16. \dr g32 d16. \flam g32		d16. g32-> d32 g d g |
	d8-> \fr d16. \pp g32	\triplet { d16 d g } d16.-> g32 \dr \mf  |
	\flam d16. g32 d16. \flam g32		d16. g32-> d32 g d g |
	d16.-> g32 d16. \fr \flam g32	d32 g d g d16. g32 |

	\flam d16. g32 d16. g32:128(->		g16:64 d8:32)(-> g16) |
	d8.:32(-> \dr g16:64)(->	g16:64 d8:32)(-> g16) |
	\flam d16. g32 d16. \flam d32		d16. \flam g32 d32 g d g |
	d8->\fr  \triplet { d16 \< d g } \triplet { d16 d g } d8-> \!
}
snareBB = \drummode {
	\flam d8 \dr g8:32(->	\triplet { d16)\fr g d-> } g16. g32 |
	\snareAnotmeasone
}

