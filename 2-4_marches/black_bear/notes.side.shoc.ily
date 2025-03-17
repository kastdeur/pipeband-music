% 2/4 Black Bear
% Snare
\version "2.18.2"
composerSide = "SHoC"
sideglobal = { \eighthBeaming }
%%music

snareA = \drummode {
	\tag #'upbeat { g8:32( } |
	d8)\dr \flam d8->\fr	g16. d32-> g16. g32 |
	d16.->\dr g32 \flam d16.->\fr g32	d16. g32-> d16. d32 |
	\tutti { \flam g4-> }	r4
	\tutti { d4:32(->^\markup{"OI!"}	d8:32)(-> g8:32)(-\v} |

	d8)\dr \flam d8->\fr	g16. d32-> g16. g32 |
	d16.->\dr g32 \flam d16.->\fr g32	d16. g32-> d16. d32 |
	\tutti {
	  \flam g4-> d4:32( |
	  d8) \flam g8	\flam d8->
	}
}
snareBB = \drummode {
  \snareA
}

snareBA = \drummode {
	g8 |
	d4:32(	d4:32)(\dr |
	d4)->\fr r8

	g8->
	d4:32(	d4:32)(\dr |
	d4)->\fr r8

	g8 |
	\tutti {
		d4:32(	d8.:32)(-> g16)-> |
		d8:32(-> g8:32)(->	d4:32)(-> |
		d16.) g32 \flam d16. g32	d16. g32-> d16. d32 |
		\flam g8-> d8:32(	g8)
	}
}
