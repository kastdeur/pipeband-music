% 4/4 Muss I Denn
% Side
\version "2.18.2"
composerSide = "Coriovallum Pipe Band, 2000"
arrangerSide = ""
sideglobal = {
	\eighthBeaming
}
% Music
snareA = \drummode {
  \flam d8 g |
  d4:32(	d8) g	d8:32([ g)]	\flam d8 d8:32(
  |
  g16.) d32-> g16. g32	\flam d8 \flam g	d4:32(	d8) d8:32(
  |
  g16.) d32-> g16. g32	\flam d8 g	\tuplet 3/2 { d16 g d } g16. g32	\flam d8 \flam g
  |
  d4:32(	d8) g	\tuplet 3/2 { d16 g d } g16. g32	\flam d8 \flam g
  |
  d4:32(	d4:32)(	d4)
}
