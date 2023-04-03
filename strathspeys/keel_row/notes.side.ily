% 4/4 Keel Row
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v2.0, 2018 (2023)" %26-09-2018, feedback from C. Ooms on 2023-03-05
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}
% Music
snareA = \drummode {
	d4:32(\ff \dr	d8.[) \mf \fr \drag d16]	d4	d4:32(\< |
	d4)\! g8.\dr[ \drag d16]	\triplet { d16 g d g d8 }	\triplet { g8-> d16 g d g } |
	d4->\fr	\triplet { d8 g \flam d }	\triplet { g8[ \drag d d] }	\flam g8. \flamdr g16 \v |
	\triplet { d8[ g \drag d] }	\triplet { d16 g d g d8-> }	\triplet { g8 d \flam g }	\flam d4 ->\fr
}

snareB = \drummode {
	\dragdr d16 d8.\fr	g8. [ \drag d16 ]	d4	d4:32(\< |
	d4)\! g8.\dr[ \drag d16]	\triplet { d16 g d g d8 }	\triplet { g8-> d16 g d g } |
	d4->\fr	g8.:32->( d16:32)(->  \triplet { g8:32 g) d:64( }  d8.) \flamdr g16 \v |
	\triplet { d8[ g \drag d] }	\triplet { d16 g d g d8-> }	\triplet { g8 d \flam g }	\flam d4 ->\fr
}
