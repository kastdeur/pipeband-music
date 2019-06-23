% 4/4 Muss I Denn (Wooden Heart)
% Side
\version "2.18.2"
composerSide = ""
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}
% Music
snareA = \drummode {
	\flam d8 g8 |
	d4:32(	d8) g	d8:32([ g)]	\flam d8 d:32( |
	g16.) d32-> g16. g32	\flam d8 \flam g	d4:32(	d8) d:32( |
	g16.) d32-> g16. g32	\flam d8 g	\triplet { d16 g d } g16. g32	\flam d8 \flam g |
	d4:32(	d8) g8	\triplet { d16 g d } g16. g32	\flam d8 \flam g |
	d2:32(	d4)
}
snareBA = \drummode {
	\flam d8 g8 |
	d4:32(	d8) g	d8:32([ g)]	\flam d8 d:32( |
	g16.) d32-> g16. g32	\flam d8 \flam g	d4:32(	d8) d:32( |
	g16.) d32-> g16. g32	\flam d8 g	\triplet { d16 g d } g16. g32	\flam d8 \flam g |
	d2:32(	d4)
}
snareBB = \drummode {
	\snareA
}
	
