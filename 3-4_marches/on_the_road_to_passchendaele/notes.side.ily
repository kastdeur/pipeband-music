% 3/4 On the Road to Passchendaele
% Snare
\version "2.18.2"
composerSide = "v2.0"
sideglobal = {
	\eighthBeaming
	}
%%music
snareAA = \drummode {
	\flamdr d8. g16		d4:32(\<		d8)\! \fr d8:32( |
	\tuplet 3/2 { g16) d g } \flam d8		\flam g4		d4:32(\< |

	d8.)\! g16		d8:32(-> \dr \tuplet 3/2 { g16) d g }		d8:32(-> g8:32)(-> |
	\tuplet 3/2 { d16) g d-> } g16. g32		\flam d8 d8:32(	g16.) d32-> g16. g32 |
}
snareAB = \drummode {
	d8:32( g)->\fr		d4:32(\<		d8)\! d8:32( |
	\tuplet 3/2 { g16) d g } \flam d8		d4:32(\p		d4) |

	\flam d8.\mf g16		d4:32(-\tag #'tutti \dr		d8:32)(-> \tuplet 3/2 { g16) d g } |
	d16. d32 \flam g8		d4:32(		d4)-\tag #'tutti \fr
}
% Part 2
snareBA = \drummode {
	d16[ \drag g8 g16]		d8:32( g8)		d4:32( |
	\tuplet 3/2 { d16) g d-> } g16. g32		\flam d4		d4:32( |

	d8.) g16		d8:32(->\dr \tuplet 3/2 { g16) d g }		d8:32(-> g8:32)(-> |
	\tuplet 3/2 { d16) g d-> } g16. g32		\flam d8 d8:32(	g16.) d32-> g16. g32 |
}
snareBB = \drummode {
	d8. \fr g16		d8:32( g8)		d4:32( |
	\tuplet 3/2 { g16) d g } \flamd d8		d4:32(\p		d4) |

	\flam d8.\mf  g16		d4:32(\dr		d8:32)(-> \tuplet 3/2 { g16) d g } |
	d16. d32 \flam g8		d4:32(		d4) \fr
}
