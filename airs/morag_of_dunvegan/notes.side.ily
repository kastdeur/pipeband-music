% 6/8 Morag of Dunvegan
% Tenor
\version "2.18.2"
sideglobal={}
composerSide="2018, v1.1"
arrangerSide = "E.T. de Boone"
snareA = \drummode {
	\flam d8 d8:32( g8)		\flam d8 r8 \flam d8 |
	g8 d8:32( g8)		\flam d8 \tuplet 3/2 { d16 g d } g8 |

	\tutti {
		\flam d8 d8:32( g8)		\flam d8 r8 \flam d8 |
		\tuplet 3/2 { d16 g d } g8 \flam d8		d4.:32(\< |
	}
	d8)\! d8:32( g8)		\flam d8 r8 \flam d8 |
	g8 d8:32( g8)		\flam d8 \tuplet 3/2 { d16 g d } g8 |

	\tutti {
		\flam d8 d8:32( g8)		\flam d8 g16. d32-> g16. g32 |
		d4:32( d8:32)(\>		d4.)\!
	}
}

snareB = \drummode {
	d16.-> g32 d16. d32 g8		d8:32(-> g8) \flamd d8 |
	d16.-> g32 d16. d32 g8		\flamd d8-> \tuplet 3/2 { d16 g d } g8 |

	\tutti {
		d16.-> g32 d16. d32 g8		d8:32(-> g8) \flamd d8 |
		\tuplet 3/2 { d16 g d } g8 \flamd d8		d4.:32(\< |
	}
	d16.)->\! g32 d16. d32 g8		d8:32(-> g8) \flamd d8 |
	d16.-> g32 d16. d32 g8		\flamd d8-> \tuplet 3/2 { d16 g d } g8 |

	\tutti {
		\flamd d8 d8:32( g8)		\flamd d8 g16. d32-> g16. g32 |
		d4:32( d8:32)(\>		d4.)\!
	}
}
