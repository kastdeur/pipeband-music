% 2/4 Black Bear
% Snare
\version "2.18.2"
composerSnare = "E.T. de Boone, 2015"
sideglobal = {
	\eighthBeaming
}
%%music
snareA = \drummode {
	d16. g32 |
	\flam d8 \triplet { d16 g d }		\flam g8 d8:32(		g16.) d32-> g16. g32		\flam d8 d8:32(\dr |
	\triplet { g16) d g } \flam d16. g32		\triplet { d16 g d } \flam g16. g32		d16. g32 \triplet { d16 g d }		\flam g8\fr d16. g32 |

	\flam d8 \triplet { d16 g d }		\flam g8 d8:32(		g16.) d32-> g16. g32		\flam d8 d8 |
	\flamdr d4	d4:32(		d4)\fr
}
% Part 2
snareBA = \drummode {
	\flam d4\v |
	d4:32(\<		d4:32)(->		d8)\! d32 g d g		d8-> d8:32(\dr |
	\triplet { g16) d g } \flam d16. g32		\triplet { d16 g d } \flam g16. g32		d16. g32 \triplet { d16 g d }		\flam g8\fr d16. g32 |

	d4:32(\<		d4:32)(->		d8)\! d32 g d g		d8-> g8 |
	\flamdr d4	d4:32(		d4)
}
snareBB = \drummode{
	\flam d4\v |
	d4:32(\<		d4:32)(->		d8)\! d32 g d g		d8-> d8:32( |

	\triplet { g16) d g } \flam d16. g32		\triplet { d16 g d } \flam g16. g32		d16. g32 \triplet { d16 g d }		\flam g8 d16. g32 |

	\flam g16. d32:128( d16.) g32		d16.:64( d32) \triplet { g16 d g }		\flam d16. g32-> d32 g d g		d16. g32-> d32 g d g |

	d4	d4:32(		d4)\fr
}
