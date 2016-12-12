% 6/8 Loch Duich
% Side
\version "2.18.2"
composerSide = ""
sideglobal = { \sixteenthCompoundBeaming } 
snareA = \drummode {
	\flam d4 \flam d8		d16:64( d8) d16:64( d8) |
	d4:32( d8)		\drag d16 d-> g g \flam d8 |

	\flam d4 \flam d8 	d16:64( d8) d16:64( d8) |
	d4:32(	g8:32)(->		\tuplet 3/2 { d16) g d-> } g16 g \flam d8 |

	\flam d4 \flam d8		d16:64( d8) d16:64( d8) |
	d4:32( d8)		\drag d16 d-> g g \flam d8 |

	\flam g8 d8:32( d8)		r8 d8:32( d8) |
	\drag d16 d-> g g \flam d8		d4.:32(\< |
}
snareB = \drummode {
	d4)\! g8		d8:32( d8) g8 |
	d8:32( d8) g8		\drag d16 d-> g g \flam d8 |

	\flam g4 g8		d8:32( d8) g8 |
	d4:32(	g8:32)(->		\tuplet 3/2 { d16) g d-> } g16 g \flam d8 |

	\flam d4 \flam d8		d16:64( d8) d16:64( d8) |
	d4:32( d8)		\drag d16 d-> g g \flam d8 |

	\flam g8 d8:32( d8)		r8 d8:32( d8) |
	\drag d16 d-> g g \flam d8		d4.:32(\< |
}
snareCA = \drummode {
	d8)\! \tuplet 3/2 { d16 g d } \flam g8		d8:32( \tuplet 3/2 { d16) g d } \flam g8 |
	d8 g16 d-> g g		d4.:32(\< |

	d8)\! \tuplet 3/2 { d16 g d } \flam g8		d8:32( \tuplet 3/2 { d16) g d } \flam g8
	d4:32(	g8:32)(->		\tuplet 3/2 { d16) g d-> } g16 g \flam d8 |

	d8 \tuplet 3/2 { d16 g d } \flam g8		d8:32( \tuplet 3/2 { d16) g d } \flam g8 |
	d4:32( d8)		\drag d16 d-> g g \flam d8 |
}
snareCBA = \drummode {
	\drag d16 d-> g g \flam d8		d4.:32(\< |
}
snareCBB = \drummode {
	\drag d16)\! d-> g g \flam d8		\flam d4. |
}
