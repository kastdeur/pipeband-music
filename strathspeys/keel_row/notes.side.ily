% 4/4 Keel Row
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, 2018" %26-09-2018
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}
% Music
snareA = \drummode {
	\flamdr d4 \fr  d8. g16  d4:32->(  g8.)
	\tutti {
		d16-\v |
		\flam g4  d8. g16  \triplet { d8 g d }  \flam d8.
	}  d16:64( \< |
	d8.[)\! \dragdr d16] \fr  r8. g16  \triplet { d16 g d g d8 }  \triplet { g8 d g }
	\tutti {
		\flam \triplet { d8 g d-> }  g8. g16  d4:32( d4)
	}
}

snareB = \drummode {
	d16 \flam g8.  g8. d16  g4:32->( g8.)
	\tutti {
		d16-\v |
		\flam g4  d8. g16  \triplet { d8 g d }  \flam d8.
	}  g16 |
	\drag d16 d8.  d16[ \drag g8.]  d4:32->(  d8.) g16
	\tutti {
		\flam \triplet { d8 g d-> }  g8. g16  d4:32( d4)
	}
}
