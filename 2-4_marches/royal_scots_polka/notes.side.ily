% 2/4 Royal Scots Polka
% Side
\version "2.18.2"
%composerSide = "E.T. de Boone, 08/07/2019"
% Written while giving blood
composerSide = "E.T. de Boone, v0.1 (2019)"
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}
% Music
snareMid = \drummode {
	d4:32(-> |
	g16.) d32 g16. \flam d32	r16. g32 d16. \flam g32 |
	r16. d32 g16. g32	d32:64(-> d16.)
}
snareEnd = \drummode {
	d8:32(-> g16.) d32 |
	g8 \flam d16. g32	d16. g32 d32 g d g |
	d8 d16.:32( d32)	g8
}
snareApart = \drummode {
	d16. g32 |
	\flam d8 d8:32(	g8[) \drag g8] |
	r16. d32-> g16. g32
}

snareBApart = \drummode {
	d16. g32 |
	\flam d16. d32:64( d16.) g32	d8:32( \triplet { g16) d g } |
	\flam d16. g32 d16. g32
}
snareBDpart = \drummode {
	d16. g32 |
	\triplet { d16-> g d } \triplet { g16-> d g }	\triplet{ d16 g-> d } \triplet { g16-> d g } |
	\flam d16. g32 d16. g32
}

snareCpart = \drummode {
	r16. g32 |
	d8:32( g16.) d32:64(	\triplet { d16) g d } g16. d32 |
	g16. \flam d32 g16. g32
}

snareDApart = \drummode {
	g16. d32 |
	\flam g8 \flam d16.-> g32	\triplet { d16 g d } g8:32( |
	d16.) d32-> g16. g32
}
snareDDpart = \drummode {
	d16. g32 |
	\triplet { d16-> g d } \triplet { g16-> d g }	\triplet{ d16 g-> d } \triplet { g16-> d g } |
	\flam d8 d16. g32
}