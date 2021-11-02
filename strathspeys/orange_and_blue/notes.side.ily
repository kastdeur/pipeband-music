% 4/4 Orange and Blue
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v0, Nov 2021"
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}
% Music
snareEnding = \drummode {
	d8.)\! g16	\flam d8. g16	\triplet { d16 g d g d8 }	g8. g16 |
	\drag d16 d8.	\triplet { g8 d \flam g }	d4:32(	d4) |
}
snareA = \drummode {
    \flam d16 g8.   d4:32(\<    d8.)\! g16	d16 d8. |
    \triplet { g8-> d16 d g8 }  \triplet { d16 g d g d8 }   \triplet{ \drag d8\< d \flam g }    d4:32( |
    d4)\!   \triplet { d16 g d g d8 }   g16 d16:64( d8)	g8. g16 |
	d4:32(	d8.) d16:64(	d16) g8.->	d32\< g d g d8\!

    \flam d16 g8.   d4:32(\<    d8.)\! g16  d16 d8. |
    \triplet { g8-> d16 d g8 }  \triplet { d16 g d g d8 }   \triplet{ \drag d8\< d \flam g }    d4:32( |
	\snareEnding
}

snareB = \drummode {
	\flam d8. d16:64(	d8.) g16	d16:64( d8.)	\flam g8. \flam d16 |
	\triplet { d8 d8 \flam g8 }	\flam d8. g16	\flam d8. \flam g16	\triplet { d16\< g d g d8\! } |
	g4\v	\triplet { d8 g16 g d8 }	g4:32(->\<	d4:32)(->\> |
	\triplet { g8)\! d g }	\triplet { d16 g d g d8 }	g8. g16	\flam d8. g16 |

	\flam d8. d16:64(	d8.) g16	d16:64( d8.)	\flam g8. \flam d16 |
	\triplet { d8 d8 \flam g8 }	\flam d8. g16	\flam d8. \flam g16	d4:32(\< |
	\snareEnding
}
