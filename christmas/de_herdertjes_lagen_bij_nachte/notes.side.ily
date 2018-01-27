% 6/8 De Herdertjes lagen bij Nachte
% Side
\version "2.19.2"
composerSide = "M. de Klippelaar, 2017"
arrangerSide = ""
sideglobal = {}
% Music
snareA = \drummode {
  g8 |
  \flam d8 d:32( g)
  \flam d8 g16. d32-> g16. g32
  |
  \flam d8 d:32( g)
  \flam d8 \tuplet 3/2 { d16 g d } g8
  |
  \flam d8 d:32( g)
  \flam d8 g16. d32-> g16. g32
  |
  \flam d8 \tuplet 3/2 { d16 g d } g8
  \flam d4
}

snareBA = \drummode {
  \flam d4.->
  d8:32( g8.) g16
  d8:32( g8.) g16
  |
  d4.:32(
  d4)  g8
  |
  \flam d8 d:32( g)
  \flam d8 g16. d32-> g16. g32
  |
  \flam d8 \tuplet 3/2 { d16 g d } \parenthesize \flam g8
  \flam d4
}
