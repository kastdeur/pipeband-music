% 6/8 Alexander MacKenzie
% Side
\version "2.18.2"
composerSide = "v1.3, E.T. de Boone, 2016"
sideglobal = {
	\sixteenthCompoundBeaming
}
snareAA = \drummode {
	d16. g32 |
	d8:32( d8.)-> g16 d4:32( d8) |
	\tutti {
		\dragd d16. d32-> g16. g32 \flamd d8 d4.:32( \< |

		d4) \!
	}  d16. g32 d8:32( d8) g8 |
	\tutti {
		\flamd d16.\< g32 d16. \flamg g32 d16. g32 \flamd d4 \!
	}
}
snareAB = \drummode {
	d16. g32 |
	d8:32( d8.)-> g16 d4:32( d8) |
	\drag d16. d32-> g16. g32 \flamd d8 \tutti {
		d4:32( \< d16.) \! g32 |

		d8:32(\< g16.)\!
	}  d32-> g16. g32 \tutti { 
		d8:32(\< g16.)\!
	}  d32-> g16. g32 |
	\tutti {
		d4.:32( d4)
	}
}
snareBA = \drummode {
	d8:32( |
	g4) \tutti {
		\flam d16. g32 d8:32(\< d8) \flamd d8\!
	} |
	d32-> g d g d g d g-> d g d g		d4-> d8:32(

	g4) \tutti {
		\flam d16. g32 d8:32( d8) g |
		d8:32(\< d4:32 \> d4)\! 
	}
}
snareBB = \drummode {
	d8:32( |
	g4) \tutti {
		\flam d16. g32 d8:32( d8) \flamd d8 |
		d32-> g d g d g d g-> d g d  g d4.-> |
		
		d8:32(\< g16.)\!
	}  d32-> g16. g32	\tutti {
		d8:32(\< { g16.)\!
	}  d32-> g16. g32 |
	\tutti {
		d4.:32( d4)
	}
}
}
