% 2/4 MacKenzie Highlanders
% Snare
\version "2.18.2"
composerSide = "v1.5, 2022"
sideglobal = { \eighthBeaming }
%%music
snareEnd = \drummode {
	\tutti {
		d8:32)(-> \tuplet 3/2 { g16) d g } |

		d8[-> \drag d16 d16->]	r16 \drag d16 d16. g32 |
		d4:32(	d8)
	}
}
snareEndLD = \drummode {
	\tutti {
		d8:32)(-> \tuplet 3/2 { g16) d g } |

		d8[-> \drag d16 d32-> g]	d[ g \drag d16 d16. g32] |
		d4:32(	d8)
	}
}


snareA = \drummode {
	d8:32( |
	g8) \tuplet 3/2 { d16 g d } 	\flam g16. d32-> g16. g32 |
	\flam d8 d8:32(	g8) 
	
	\tutti { d16. g32 |
		d8:32( g16.)
		g32->	d32 g d g-> d8-> |
		d4:32(\<	d8)\!
	} d8:32( |

	g8)	 \tuplet 3/2 { d16 g d }	\flam g16. d32-> g16. g32 |
	d8-> g8:32(->

	\snareEnd
}
% Part 2
snareBA = \drummode {
	g8 |
	d8:32( \tuplet 3/2 { g16) d g-> }	d16.-> g32-> d32 g d g-> |
	d8-> d8:32(	g8)
	
	\tutti {
		d16. g32 |

		d8:32( g16.)
		g32-> d32 g d g-> d8-> |
		d4:32(\<	d8)\!
	} g8-> |

	d8:32( \tuplet 3/2 { g16) d g-> }	d16.-> g32-> d32 g d g-> |
	d8-> g8:32(->

	\snareEnd
}
snareBB = \drummode { \tutti {
		g8 |
		d8:32( \tuplet 3/2 { g16) d g-> }	d16.-> g32-> d32 g d g-> |
		d8-> d8:32(	g8) d16. g32 |

		d8:32( g16.) g32-> d32 g d g-> d8-> |
		\flam d4	d8:32(-> \< g8:32)(-> |

		d8)-> \! \tuplet 3/2 { g16 d g-> }	d8:32(-> \tuplet 3/2 { g16) d g-> }
		d32 g d g-> d16.-> g32	
		\removeWithTag #'tutti \snareEnd
		\grace { s4 }
	}
}
