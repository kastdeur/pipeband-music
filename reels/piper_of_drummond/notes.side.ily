% 2/2 Piper of Drummond
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v0.6, 2023" % 2023-05-05 Wageningen, unisons 202-07-23 AR, Maastricht
arrangerSide = ""
sideglobal = {
}
% Music
snareAAA = \drummode {
	\flam d4-> d8.\dr g16
	d4:32( g8.)\fr d16:64(
	|
	\triplet { d8) g d } \flamdr g8. d16->
}
snareABA = \drummode {
	g8.[ \drag d16 d16\< g d g]
	|
	d8.\!\v\fr g16 d8. \flamdr g16 \fr
	d8.[ \drag d16 d8. g16]
	|
	\flamdr d8.->\fr g16 \triplet { d8 d g }
	d8. d16\dr \< \triplet { g8 g d\! }
}
snareAAB = \drummode {% only different for unisons
	\flam d4->\fr d8. g16
	d4:32( g8.) d16:64(
	|
	\triplet { d8) g d } \flam g8. d16->\dr
}
snareABB = \drummode {
	g8. g16 \flam d4\fr
	|
	d4:32( d8.) g16
	\flam d8. g16 d4:32(\<\dr
	|
	d8.)->\! g16 d8. \flam g16
	d4\fr d16 g d g
	|
}

snareAA = \drummode {
	\snareAAA
	\snareABA
}
snareAB = \drummode {
	\snareAAB
	\snareABB
}

snareA = \drummode {
	\snareAA
	\snareAB
}


snareBAA = \drummode {
	d4:32(->\dr g8.)\fr g16
	d4:32(\< \triplet { g8)\staccato d\dr g\! }
	|
	d8.->\fr g16 d8. g16:64(->\rn
	g8.:32 d16) g8. g16\dr
	|
}
snareBBA = \drummode {
	d8.\fr g16 \p\< \triplet { d8 g d\! }
	\flamdr \triplet { g8 d g } \flam d8. g16
	|
	\flam d8.\v\fr g16 d8. \flam g16
	d4 d16\dr g d g
	|
}
snareBAB = \drummode {% only different for unisons
	d4:32(-> g8.)\fr g16
	d4:32(\<\dr \triplet { g8)\staccato d g\! }
	|
	d8.->\fr g16 d8. g16:64(->\rn
	g8.:32 d16) g8. g16\dr
	|
}
snareBBB = \drummode {
	\flam d8.[\v\fr g16 d8. \dragdr g16]
	g8.\fr g16 \flam d8. g16\dr
	|
	\flam d8.\v\fr g16 \triplet { d8 d \flamdr g }
	\triplet { d8 g g } d4\staccato \fr
}


snareBA = \drummode {
	\snareBAA
	\snareBBA
}
snareBB = \drummode {
	\snareBAB
	\snareBBB
}

snareB = \drummode {
	\snareBA
	\snareBB
}

