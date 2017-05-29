% 4/4 Molly Connell
% Side
\version "2.18.2"
composerSide  = "C. Ooms, v1.2, 2015"
sideglobal = {}
intro = \drummode {% by Dean Hall, 2006
	\flam d4
	\triplet { d8:32( g8:32 g8) }
	d8. d16
	\flam g8. d16:64(
	|
	d16)-> g8.->
	\triplet { d16 g d g d8-> }
	g8. g16
	d4:32(\<
	|
	d4)-> \!
	\triplet { d8:32( g8:32 g8) }
	\triplet { d8 d g }
	\triplet { d8 g g }
	|
	\flam d8.-> g16
	\tuplet 3/2 { d16 g d g d8 }
	g4:32(
	d4)
	|
}
snareA = \drummode {
	\tutti {
		\flamd d4 	\flam g8.[
	} d16:64(]		d8.[) \tutti {
		\drag d16]		d8.[
	}
	
	g16] |		d8.:64[(-> g16])	\triplet  { d16[ g d g d8]}		\triplet  { g8[ d8 \flamd g8] }		\flam d8.[  g16] |

	\tutti {
		d16:64[( d8.])		g8.[ \drag d16]
	}	\triplet  { d16[ g d g d8] }		g8.[ g16] |
	\flamddr \triplet  { d8 \fr g d }		\tutti {
		\flamd g8.[ \flam g16]		\triplet  { d16 g d g d8 } g8
	}
}

snareBA = \drummode {
	\partial 8 \tutti {
		g8 |
		d4:32(		d8.[) \drag d16]
	} \triplet { d16[ g d g d8] }		g8.[
	\tutti {
		g16] |
		\drag d16[ d8.]		\flam d8.[ \flam g16]
	} \triplet  { d16[ g d g d8] }		\triplet  { g8[ d g] } |

	\tutti {
		\flamd \triplet  { d8[ g16 g16 d8] }		g8.[
		} g16]		\triplet  { d8[ g16 g16 d8] }		g8.[ g16] |
	\flamddr \triplet  { d8[ \fr  g d] }		\tutti {
		\flam g8.[ \flam g16]		\triplet  { d16[ g d g d8] } g8
	}
}
snareBB = \drummode {
	\partial 8 
	\tutti {
		g8 |
		d4:32(		d8.[) \drag d16]		\triplet  { d16[ g d g d8] }		g8.[ g16] |
		\drag d16[ d8.]		\flam d8.[ \flam g16]		\triplet  { d16[ g d g d8] }		\triplet  { g8[\mf\> d g]\p  } |

		\flam d4\f		\flam g8.[ d16:64](		d8.[) \drag d16]		d8.[ g16] |
		\flamd \triplet  { d8[ g d] }		\flam g8.[ \flam g16]		\triplet  { d16[ g d g d8] } g8
	}
}
