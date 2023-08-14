% 2/2 Jock Wilson's Ball
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v0.7, 2023"% 2023-07-14 Andre Rieu, Maastricht
arrangerSide = ""
sideglobal = {
%	\eighthReelBeaming
}
% Music
snareAA = \drummode {
	\flam d4 g4	d4:32(\staccato\dr g4:32)(->\fr\> |
	d8.)\!\dr g16-> d16\<\fr g d g\!	d8.[->\dr \drag d16 d8. g16] |
	d4:32(-> g8.)\fr d16:64(	d8.) g16 d4:32(->\>\dr |
	g8.[)\p\fr d16 g8. \drag d16]	d8.[ \dragdr d16->\mf  d8. g16] |
}
snareAB = \drummode {
	\flam d4 g4	d4:32(\staccato g4:32)(->\> |
	d8.)\! g16-> d16\< g d g\!	d8.[->\fr \drag d16 d8. g16]\dr |
	d8.:32(-> g16) d4\fr	r4 \flamdr \triplet { d8\fr g d } |
	g8 g8 \flamdr d8. g16	d4 d4:32(\< |
}

snareA = \drummode {
	\snareAA
	\snareAB
}

snareBA = \drummode {
	g4)\! \flam d8.\v\fr d16	g8. d16\dr \triplet { g8 d g } |
	d4:32(->\fr g8.:32)(-> g16)->	\triplet { d8[\dr g \drag d] } d4 |
	d16->\fr\< g d g d16->\dr g d g	d8.[->\!\fr \drag d16] d4 |
	g8\dr g \flam d8. g16 d4 d4:32(\< |
}
snareBB = \drummode {
	g4)\! \flam d8.\v d16	g8. d16 \triplet { g8 d g } |
	d4:32(-> g8.:32)(-> g16)->	\triplet { d8[ g \drag d] } d4\fr |
	d2:32(	d4:32)(\dr\< d8.)\!-> g16 |
	d8.:32(-> g16) d8. g16	d4:32(-> g4)->\fr
}

snareB = \drummode {
	\snareBA
	\snareBB
}
