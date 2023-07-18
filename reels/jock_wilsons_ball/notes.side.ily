% 2/2 Jock Wilson's Ball
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v0.5, 2023"% 2023-07-14 Andre Rieu, Maastricht
arrangerSide = ""
sideglobal = {
%	\eighthReelBeaming
}
% Music
snareAA = \drummode {
	\flam d4 g4:32( d4:32)(-> g4) |
	\flam \triplet { d8-> g \flam d8 } \flam g8. d16\v	%g8.[ \drag d16 d4 |
}
snareABA = \drummode {
	g8.[ \drag d16] d4 |
	\flam g8. d16:64( d8.) g16	d4:32( d4) |
	g8.[ d16-> g8. \drag d16]	d16 g d g d16-> g d g->
}
snareABB = \drummode {
	g8.[ \drag d16 d8. g16] |
	%d16 d g d g8.-> g16	d4:32( d8.) d16:64(\> |
	%d4)\! \flam d8.\v g16	d8. \flam g16-> \triplet { d8 g8 d8 } |
	d16 d g d g8.-> g16	d4:32( d8.) d16:64( |
	d4) \flam d8.\v g16	d8. \flam g16-> d4 | % \triplet { d8 g8 d8 } |
}

snareA = \drummode {
	\repeat volta 2 {
	  \snareAA
	  \alternative{
		\snareABA
		\snareABB
	  }
	}
}

snareBA = \drummode {
	g4	\flam d8.\v d16	g8. d16 \triplet { g8 d g } |
	%\flam \triplet { d8 g \flam d8 }	\flam g8 d32 g d16	%g8.[ \drag d16 d4 |
	\flam d8.[ d16	\flam g8.  \triplet { d32 g d] }	%g8.[ \drag d16 d4 |
}
snareBBA = \drummode {
	g8.[-> \drag d16]% d4 |
	d4 |
	d16->\< g d g d16-> g d g		d8.->\! g16 d8. d16:64( |
	d4) \flam d8.\v g16	d8. \flam g16-> d8. d16 | %\triplet { d8 g8 d8 } |
}
snareBBB = \drummode {
	g8.[-> \drag d16]% d4 |
	d4 |
	d2.:32(\<	d8.)\!\v g16 |
	d8.:32(-> g16) \triplet { d8 g d }	g16 d8.:32(-> g4)->
}

snareB = \drummode {
	\repeat volta 2 {
	  \snareBA
	  \alternative{
		\snareBBA
		\snareBBB
	  }
	}
}
