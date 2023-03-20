% 4/4 Orange and Blue
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v0.8, 2021 (2023)" % 2021-11-08
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}

% Music
snareEnding = \drummode {
	g16	\flam d4	\drag \quintuplet { d16 d g d g }	d8.\! g16\dr |
	\drag d16 d8.	\triplet { g8 d \flam g }	d4:32(	d4)\fr |
}

snareA = \drummode {
	\flam d16 g8.	d4:32(\<\dr	d8.)\!\fr d16	\drag g16 g8. |
	d8.->\dr d16	\triplet { g8 d16 g d g }	d8.->\fr \flam g16

	\tutti{ d4:32(\< |
	d4)\! }	 \triplet { d16 g d g d8 } \triplet { g8 d8:64( d8)}	g8. g16\dr |
	d4:32(	d8.) d16:64(	d16)\fr g8.->	d32 g d g d8

	% repeat
	\flamdr d16 g8.	 d4:32(\<	d8.)\!\fr d16	\drag g16 g8. |
	d8.->\dr d16	\triplet { g8 d16 g d g }	d8.->\fr \flam g16

	d4:32(\<\dr |
	d8.)\!\fr \snareEnding
}

snareB = \drummode {
	\flamdr d8.\fr d16:64(	d8.) g16	d16:64(\dr d8.)\fr	\flam d8. \flamdr g16 |
	\triplet { d8 d8 \flam g8 }	\flam d8.\fr g16	\flam d8.[ \dragdr d16]

	\triplet { d16\< g d g d8 } |
	g4\v\!\fr	\triplet { d16 d g g d8 }	g4:32(\<	d4:32)(->\>\dr |
	\triplet { g8)\! d g }	\triplet { d8 g16 d g d }	g8.->\fr g16	\flam d4 |

	% repeat
	\flamdr d8. d16:64(	d8.)\fr g16	d16:64( d8.)	\flam d8. \flamdr g16 |
	\triplet { d8 d8 \flam g8 }	\flam d8.\fr g16	\flam d8.[  \dragdr d16]

	\triplet { d16\< g d g d8 } |
	g8.\v\!\fr \snareEnding
}
