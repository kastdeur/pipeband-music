% 4/4 Old Rustic Bridge
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, 2021"
arrangerSide = ""
sideglobal = {
	\eighthBeaming
}
% Music
snareAupbeatA = \drummode {
	\flam d8. g16 |
}
snareAupbeatB = \drummode {
	d16. g32 |
}
snareAA = \drummode {
	% \flam d8. g16 |
	d4:32~ \<	d4:32~	d4 \! r8. g16
	|
	d8:32( g8)	\flam d8 d8:32(	g4)	r8.
}
snareAB = \drummode {
	\tutti {
		\tag #'upbeat g16
		|
		 d8:32(-> g16.) d32->	g16. g32 d8:32(->}	\triplet { g16) d g } d16. d32->	g16. g32 d8:32(
	|
	\tutti { g4:32)(->	d4:32)~	d4 }
	% r8 d16. g32 |
}
snareA = \drummode {
  \snareAA
  \snareAB
}

snareBA = \drummode {
	\tutti {
	  g8
	|
		\flam  d4	\flam g8.
	  } d16:64(\<	d16.)\! g32-> d16. d32	g8:32(-> d8)
	|
	\tutti {
	d8:32( g8:32)(-> \< d4:32)~	d4	\! r8

	  g8
	|
		\flam d16. g32 d16. d32
		\flam g8 } \flam d16. g32	d16. d32 \triplet { g16 d g }	\flam d16. d32 g16. g32
	|
	\tutti { d8:32( g16.) } d32->	g16. g32 \tutti { \flam d8	d4:32(\<	d8) \! } g8
	|
}
snareB = \drummode {
	\snareBA
	\snareA
}
