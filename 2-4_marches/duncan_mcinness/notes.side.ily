% 2/4 Black Bear
% Snare
\version "2.18.2"
composerSnare = "E.T. de Boone, 2015"

%%music
snareEnding = \drummode {
	d8:32( |
	g8) \flam d	d16 \flam g8 g16 |
	\flam d8 d8:32(	g8)
}
snareFinalEndingLD = \drummode {
	d8:32( |
	g16.) d32:128( d16.) g32	\tuplet 3/2 { d16 g d } \flam g16. g32 |
	\flam d8 d8:32(	g8)
}
snareA = \drummode {
	\tutti { 
		d8:32( |
		g8) 
	} 
	d16. g32->		d16. d32 \flamg g8 |
	\tutti { 
		\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g16 d g-> }		d8-> 
	}
	d8:32( |

	g8) 
	
	%mid
	d16. g32		\tutti { d8:32( g8) } |
	\flamd d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 
	\tutti { 
		d8:32( |

		g8) 
	}
	d16. g32->		d16. d32 \flamg g8 |
	\tutti { 
		\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g16 d g-> }		d8-> 

		%end	
		d8:32( |

		g8) \flamd d8	d16 \flamg g8 g16 |
		\flamd d8 d8:32(	g8)
	}
}
% Part 2
snareB = \drummode {
	\tutti{
		r16 g16 |
		\flamd d8 
	}
	d16. g32->		d16. d32 \flamg g8 |
	\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g16 d g-> }		d8:32( g8) |

	\tutti {
		%mid
		\flamd d8. d16		\flamg g8 g16 \flamd d16 |
		\flamd d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8. 
		
		g16 |
		\flamd d8 
	}
	d16. g32->		d16. d32 \flamg g8 |
	\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g16 d g-> }		d8->

	%end
	\tutti {
		d8:32( |
		g8) \flamd d8	d16 \flamg g8 g16 |
		\flamd d8 d8:32(	g8)
	}
}
% Part 3
snareC = \drummode {
	d16. g32 |
	\tutti { \flamd d16. } g32 d16. d32		\tutti { \flamg g16. } d32 g16. g32 |
	\tutti { d16. \flamg g32 d16. d32 }		\flamg g8 d8:32( |

	g8) 

	%mid
	d16. g32		d8:32( g8) |
	\flamd d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 
	
	d16. g32 |
	\tutti { \flamd d16. } g32 d16. d32		\tutti { \flamg g16. } d32 g16. g32 |
	\tutti { 
		d16. \flamg g32 d16. d32		\flamg g8 
		
		%end
		d8:32( |
		g8) \flamd d8	d16 \flamg g8 g16 |
		\flamd d8 d8:32(	g8)
	}
}
% Part 4
snareDA = \drummode {
	d16. g32 |
	\tutti { d8:32( g8:32)(->		d8.) } d16:64(\< |
	d16.)\! g32 \tuplet 3/2 { d16 g d } \flamg g8 
	\tutti {
		d8:32( |

		g8) 
	}

	%mid
	d16. g32		\tutti { d8:32( g8) } |
	\flamd d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |
}
snareDAB = \drummode {
	\tutti { d8:32( g8:32)(->		d8.) } d16:64(\< |
	d16.)\! g32 \tuplet 3/2 { d16 g d } \flamg g8 
	\tutti { 
		d8:32( |

		g8) \flamd d8	d16 \flamg g8 g16 |
		\flamd d8 d8:32(	g8)
	}
}

snareDAC = \drummode {
		\flamd d16. g32 d16. d32	\flamg g16. d32 g16. g32 |
		d16. \flamg g32 d16. d32	\flamg g8 d8:32( |
		g8) \flamd d8	d16 \flamg g8 g16 |
		\flamd d8 d8:32(	g8)
}
snareDACLD = \drummode {
		\flam d16. g32 d16. d32		\flam g16. d32 g16. g32 |
		d16. \flam g32 d16. d32		\flam g8 
		
		\snareFinalEndingLD
}
