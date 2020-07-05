% 2/4 Road to the Isles
% Side
\version "2.18.2"
%composerSide = "E.T. de Boone, 23/05/2017"
% Written while giving blood
composerSide = "E.T. de Boone, v1.1"
arrangerSide = ""
sideglobal = { \eighthBeaming }

% Music
sideMid = \drummode { \tutti {
  d16. g32 |
  d16.-> g32 d16. g32->  d16. g32-> d16. g32 |
  d8-> d8:32( g8)
} }
sideMidII = \drummode { \tutti {
  d16. g32 |
  d16.:64([ d32) \tuplet 3/2 { g16 d g] }	\flam d16.[ \drag g32 \tuplet 5/2 { d16 g d g d] } |
  g8 d8:32( g8)
} }

sideEnd = \drummode { \tutti {
  g8 |
  \flam d8 \flam g	\flam d16. g32 d16. g32 |
  d4:32( d8)
} }
sideEndII = \drummode { \tutti {
  d16. g32 |
  \dragd \tuplet 3/2 { d16[ d g } \drag d16. g32] 	\flam d16.[ \drag g32 \tuplet 5/2 { d16 g d g d] } |
  g8 d8:32( g8)
} }

% parts
sidePI = \drummode {
  d16. g32 |
  d4:32(	d16.) g32 \tuplet 3/2 { d16 g d } |
  \flam g16. d32-> g16. g32 	\flam d8
}
sidePII = \drummode {
  d16. g32 |
  d16.:64(-> d32) \tuplet 3/2 { g16 d g }	d16.:64(-> d32) \tuplet 3/2 { g16 d g } |
  d16.:64(-> d32) g16.:64(-> g32)	d8
}
sidePIII = \drummode {
	s8 |
	s2 |
	s4 s8
}
sidePIV = \drummode {
	s8 |
	s2 |
	s4 s8
}
