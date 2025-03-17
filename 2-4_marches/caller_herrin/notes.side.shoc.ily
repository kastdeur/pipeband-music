% 2/4 Caller Herrin
% Side
\version "2.24.4"
composerSide = "Cpl Pete Coulson, 1998"
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}
% Music
sideAA = \drummode {
	\tutti {
			\tag #'upbeat { d8:32( | }
			g4)
		} d4(:32 |
	d8) \flamdr g8	\flam d8->

	d8:32( |
	\triplet { g16) d g } \flam d16.->\fr g32	d16. \tutti{ g32-> } d32 g d g->\dr |
	d8-\v d8:32(	g8)

	d8:32( |
}

sideAB = \drummode {
	g4)\!\fr d4:32( |
	d8) \flamdr g8	\flam d8

	d8:32(|
	\triplet { g16) d g } \flam d16.-> g32	d16. g32-> d32 g d g-> |
	d8-\v d8:32(	g8)
}
sideA = \drummode {
	\tag #'fineRemove {
		\sideAA
	}

	\sideAB
}

sideB = \drummode {
	\tag #'upbeat { d8:32(}
	g4->)\fr	r4 |
	r4 r8 d8:32( |
	g4) r4 |
	r4 r8

	d8:32(\dr |
	g4)\fr r4 |
	r2 |

	d2:32(\dr |
	d2:32)( <>) |

	\tag #'fine {
		\removeWithTag #'fineRemove \removeWithTag #'tutti \sideA
	}
	\fr
}
