% 2/2 Jock Wilson's Ball
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v0.6, 2023"% 2023-07-14 Andre Rieu, Maastricht
arrangerSide = ""
sideglobal = {
%	\eighthReelBeaming
}
% Music
snareAAA = \drummode {
	\flam d4\fr g4:32( d4:32)(-> g4) |
	\flamdr \triplet { d8->\fr g \optflam d8 } \flamdr g8. d16\v	%g8.[ \drag d16 d4 |
}
snareABA = \drummode {
	g8.[ \drag d16] d4\fr |
	%\flam g8. d16:64(\dr d8.)\fr g16	d4:32( d4) |
	d4:32( g8.) d16:64(\dr d8.)\fr d16 \flam g4 |
	%g8.[ d16-> g8. \drag d16]	d16 g d g d16-> g d g->
	g8.[ d16->\dr g8. \drag d16]	d8.\fr g16-> d8. g16\dr
}
snareAAB = \drummode {% only different for unisons
	\flam d4\fr g4:32( d4:32)(-> g4) |
	\flamdr \triplet { d8-> g \optflam d8 } \flam g8. d16\v	%g8.[ \drag d16 d4 |
}
snareABB = \drummode {
	g8.[ \drag d16 d8.\fr g16] |
	%d16 d g d g8.-> g16	d4:32( d8.) d16:64(\> |
	%d4)\! \flam d8.\v g16	d8. \flam g16-> \triplet { d8 g8 d8 } |
	d16 d g d g8.->\dr g16	d4:32( d8.)\fr d16:64( |
	d4) \flamdr d8.\v g16	d8. \flam g16->\fr d4 | % \triplet { d8 g8 d8 } |
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
	g4	\flamdr d8.\v\fr d16	g8. d16\dr \triplet { g8 d g } |
	%\flam \triplet { d8 g \flam d8 }	\flam g8 d32 g d16	%g8.[ \drag d16 d4 |
	\flam d8.[\fr d16	\flam g8.  g32 d] %g8.[ \drag d16 d4 |
}
snareBBA = \drummode {
	g8.[-> \dragdr d16]% d4 |
	d4\fr |
	%\tutti{ d16->\< } g d g \tutti{ d16-> g d g		d8.->\! g16 d8. } d16:64( |
	\tutti{ d16->\< } g d g \tutti{ d16-> g d g		d8.[->\! \drag g16 g8.}  d16:64(] |
	d4) \flamdr d8.\v g16	d8. \flam g16-> d8. d16 | %\triplet { d8 g8 d8 } |
}
snareBAB = \drummode {% only different for unisons
	%<>\dr
	g4	\flam d8.\v\fr d16	g8. d16\dr \triplet { g8 d g } |
	%\flam \triplet { d8 g \flam d8 }	\flam g8 d32 g d16	%g8.[ \drag d16 d4 |
	\flam d8.[\fr d16	\flam g8.  g32 d] %g8.[ \drag d16 d4 |
}
snareBBB = \drummode {
	g8.[-> \dragdr d16]% d4 |
	d4 |
	d2.:32(\<	d8.)\!\v\fr g16 |
	d8.:32(-> g16) \triplet { d8\dr g d }	g16 d8.:32(-> g4)->\fr
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
