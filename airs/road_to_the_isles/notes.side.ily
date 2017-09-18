% 2/4 Road to the Isles
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, 23/05/2017"
arrangerSide = ""
sideglobal = { \eighthBeaming \set strictBeatBeaming = ##t}
% Music
sideMid = \drummode {  
  d16. g32 |
  d16.:64([ d32) \tuplet 3/2 { g16 d g] }	\flam d16.[ \drag g32 \tuplet 5/2 { d16 g d g d] } |
  g8 d8:32( d8)
}
sideMidTwo = \drummode {
  d16. g32 |
  d16.-> g32 d16. g32->  d16. g32-> d16. g32 |
  d8-> d8:32( d8)
}
sideEnd = \drummode {
  d16. g32 |
  \dragd \tuplet 3/2 { d16[ d g } \drag d16. g32] 	\flam d16.[ \drag g32 \tuplet 5/2 { d16 g d g d] } |
  g8 d8:32( d8)
}
sideEndTwo = \drummode {
  g8 |
  \flam d8 \flam g	\flam d16. g32 d16. g32 |
  d4:32( d8)
}
% parts
sideA = \drummode {
  d16. g32 |
  d4:32(	d16.) g32 \tuplet 3/2 { d16 g d } |
  \flam g8 d8:32(	d8)

  \sideMid

  d16. g32 |
  d4:32(	d16.) g32 \tuplet 3/2 { d16 g d } |
  \flam g16. d32-> g16. g32 	\flam d8

  \sideEnd
}
sideB = \drummode {
  d16. g32 |
  d16.:64(-> d32) \tuplet 3/2 { g16 d g }	d16.:64(-> d32) \tuplet 3/2 { g16 d g } |
  d16.:64(-> d32) g16.:64(-> g32)	d8

  \sideMid

  d16. g32 |
  d16.:64(-> d32) \tuplet 3/2 { g16 d g }	d16.:64(-> d32) \tuplet 3/2 { g16 d g } |
  d16.:64(-> d32) g16.:64(-> g32)	d8

  \sideEnd
}
