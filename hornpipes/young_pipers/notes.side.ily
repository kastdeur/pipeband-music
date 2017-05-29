% 2/4 Young Pipers
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, 2016"
sideglobal = { \eighthBeaming }
% Music
snareAC = \drummode {
	\flam d8 \flam g8 \fr
	\flam d16 g d g
	|
	\flam d16 g d g:64(\dr
	g16:64 d) g g
	|
}
snareAA = \drummode {
	d16 \dr g |
	\snareAC
}
snareAB = \drummode {
	\flam d8\fr d8:32(
	g16) \flam d g g
	|
	d32 d g16 d \flamdr g
	d16 g d32 g d g
	|
}
snareAD = \drummode {
	\flam d16\fr g d \flamdr g \fr
	d16 g \flamdr d\fr g
	|
	d32 g d g d16\dr g
	\flam d8 \fr
}

snareBC = \drummode {
	d8:32(  g:32)(->\fr
	d32) g d g d16-> g
	|
	d16:64( d) g d:64(\dr
	g16:64 g) d g
	|
}
snareBA = \drummode {
	d16\dr  g |
	\snareBC
}
snareBB = \drummode {
  \snareAB
}


snareCC = \drummode {
	d8:32(\fr  \> g16)\! d:64(\<
	d16)\! \flam d g g\dr
	|
	d32 g d g d16 g:64(
	g16:64 d) g g
	|
}
snareCA = \drummode {
  	g8 |
	\snareCC
}
snareCB = \drummode {
	\snareAB
}

snareDC = \drummode {
	\flam d16 \flam g \flam d8
	g16 d:64( d) g
	|
	d32 g d g d16 g:64(
	g16:64 d) g g
	|
}
snareDA = \drummode {
	g8 |
	\snareDC
}
snareDB = \drummode {
	d16 g32 g d16 g
	d32 g d g d16 g32 g
	|
	d16 g8.:32(
	d16) g d32 g d g 
	|
}
