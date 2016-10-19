% 4/4 Molly Connell
% Side
\version "2.18.2"
composerSide  = "v1.1, 2015"
intro = \drummode {% by Dean Hall, 2006
	\flam d4 \triplet { d8:32( g8:32 g8) }
	d8. d16
	\flam g8. d16:64(
	|
	d16)-> g8.->
	\triplet { d16 g d g d8-> }
	g8. g16
	d4:32(
	|
	d4)-> 
	g8. \flam g16->
	\triplet { d16 g d g d8-> }
	\triplet { g8 d g }
	|
	\triplet { d16 g d g d8-> }
	\triplet { g8 d g }
	d4:32(
	d4)
}
snareA = \drummode {
	\flamddr d4 	\flam g8.[\fr d16:64(]		d8.[) \dragddr d16]		d8.[ \fr g16] |
	d8.:64[(-> g16])		\triplet  { d16[ g d g d8]}		\triplet  { g8[ d8 \flamddr g8] }		\flam d8.[ \fr g16] |

	d16:64[( d8.])		g8.[ \drag d16]		\triplet  { d16[ g d g d8] }		g8.[ g16] |
	\flamddr \triplet  { d8 \fr g d }		\flamddr g8.[ \flam g16]		\triplet  { d16 g d g d8 } g8 \fr
}

snareBA = \drummode {
	\partial 8 g8 \dr |
	d4:32(		d8.[) \drag d16] \fr		\triplet { d16[ g d g d8] }		g8.[ g16] \dr |
	\drag d16[ d8.]		\flam d8.[ \flam g16] \fr		\triplet  { d16[ g d g d8] }		\triplet  { g8[ d g] } |

	\flamddr \triplet  { d8[ \fr g16 g16 d8] }		g8.[ g16]		\flamddr \triplet  { d8[\fr g16 g16 d8] }		g8.[ g16] |
	\flamddr \triplet  { d8[ \fr g d] }		\flamddr g8.[ \flam g16]		\triplet  { d16[ g d g d8] } g8 s8 \fr |
}
snareBB = \drummode {
	\partial 8 g8 |
	d4:32(		d8.[) \drag d16]		\triplet  { d16[ g d g d8] }		g8.[ g16] |
	\drag d16[ d8.]		\flam d8.[ \flam g16]		\triplet  { d16[ g d g d8] }		\triplet  { g8[\> d g]\!  } |

	\flam d4		\flam g8.[ d16:64](		d8.[) \drag d16]		d8.[ g16] |
	\flamd \triplet  { d8[ g d] }		\flam g8.[ \flam g16]		\triplet  { d16[ g d g d8] } g8 s8 |
}
