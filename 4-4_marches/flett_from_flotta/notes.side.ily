% 4/4 Flett from Flotta
% Snare
\version "2.18.2"
composerSide = "v1.3"
sideglobal = {
	\eighthBeaming
	}
%%music
snareA = \drummode {
	d8:32(\> |
	g8.)\! g16		d8:32( g8)		d4:32(\<		d8)\! 
	\tutti {
		d8:32( |
		g8) \tuplet 3/2 { d16 g d-> }		g16. g32 \flam d8		\flam g4		d8:32(\< g8:32)(-> |
		d4)\!
	} d8:32(-> \tuplet 3/2 { g16) d g }		\flamd d16. g32 d16. d32		\flam g8 \tutti {
		d8:32( |
		g4)->		d4:32(		d4)
	}
	\tutti { d8:32(\< g8:32)(\> |

		d8.)\! g16		d8:32( g8)		d4:32(\<		d8)\! d8:32( |
		g8) \tuplet 3/2 { d16 g d-> }		g16. g32 \flam d8		\flam g4		d8:32( g8) |
		\flam d8 \tuplet 3/2 { g16 d g }	d8:32(-> g8:32)(->		\tuplet 3/2 { d16) g d } \flamg g8		\flamd d8 d8:32( |
		g4)->		d4:32(		d4)
	}
	r8
}
% Part 2
snareB = \drummode {
	d4:32(		d8) d32 g d g		d32 g d g d8		\flamg g8 
	\tutti {
		d8:32( |
		g8) \tuplet 3/2 { d16 g d-> }		g16. g32 \flam d8		d4:32(		d8:32)(-> g8:32)(-> |
		d4)
	} r4		r4		r4 |
	\tutti {
		d8.:32(-> g16)		d8:32(-> g8)->
	} d32 g d g d16 
	\tutti { g16->		r16 g16-> r16 g16-> |

		d8.:32(-> g16)		d8:32(-> g8)		d4:32(		d8) d8:32( |
		g8) \tuplet 3/2 { d16 g d-> }		g16. g32 \flam d8		\flamg g4		d8:32( g8) |
		\flamd d8 \tuplet 3/2 { g16 d g }	d8:32(-> g8:32)(->		\tuplet 3/2 { d16) g d } \flamg g8		\flamd d8 d8:32( |
		g4)->		d4:32(		d4)
	} r8
}
