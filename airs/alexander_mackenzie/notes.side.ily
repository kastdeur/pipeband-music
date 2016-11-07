% 6/8 Alexander MacKenzie
% Side
\version "2.18.2"
composerSide = "v1.2, E.T. de Boone, 2016"
sideglobal = {
	\sixteenthCompoundBeaming
}
snareAA = \drummode {
	d16. g32 |
	d8:32( d8.)-> g16 d4:32( d8) |
	\dragddr d16. d32-> g16. g32 \flamd d8 d4.:32( \< |

	d4) \! \fr d16. g32 d8:32( d8) g8 |
	\flamddr d16.\< g32 d16. \flamg g32 d16. g32 \flamd d4 \! \fr
}
snareAB = \drummode {
	d16. g32 |
	d8:32( d8.)-> g16 d4:32( d8) |
	\dragd d16. d32-> g16. g32 \flamd d8 d4:32( \< \dr d16.) \! g32 |

	d8:32( g16.) \fr d32-> g16. g32 d8:32( \dr g16.) \fr d32-> g16. g32 |
	d4.:32( d4)
}
snareBA = \drummode {
	d8:32( |
	g4) \flamddr d16. g32 d8:32(\< d8) \flamd d8 \fr \! |
	d32-> g d g d g d g-> d g d g		d4-> d8:32(

	g4) \flamddr d16. g32 d8:32( d8) g |
	d8:32(\< d4:32 \> d4)\! \fr
}
snareBB = \drummode {
	d8:32( |
	g4) \flamddr d16. g32 d8:32( d8) \flamd d8 |
	d32-> g d g d g d g-> d g d  g d4.-> |

	d8:32(\< g16.)\! \fr d32-> g16. g32 d8:32(\< \dr g16.)\! \fr d32-> g16. g32 |
	d4.:32( \dr d4) \fr
}
