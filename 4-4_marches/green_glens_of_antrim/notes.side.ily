% 4/4 Green Glens of Antrim
% Side
\version "2.18.2"
composerSide = ""
arrangerSide = "T. Hachmang / E.T. de Boone, 2019"
sideglobal = {
	\eighthBeaming
}
% Music
snareA = \drummode {
	d16. g32 |
	\flam d8 \triplet { d16 g d }	\flam g8  d8:32(	\triplet { g16) d g } \flam d16. g32	\flam d8

	%%
	d8:32( \dr |
	g16.) d32:64( d16.) g32	\triplet { d16 g d } \flam g16. g32	\tuplet 6/4 { d16\< g d  g16 d g }	\flam d8 \!
	\fr

	%%
	d8:32( |
	g8.) g16	d8:32( g16.) g32	\flam d16. g32 \triplet { d16 g d }	\flam g8 

	%%
	\tutti {
	g8 |
	\flam d4 d4:32( d4) 
	} 
}

snareB = \drummode {
	\tutti {
		d4:32(\<	d8)\! \flam g	d4:32(\<	d8)\!
	}

	%%
	d8:32( |
	g8) \flam d16. g32	d16. g32-> d16. d32	\flam g16. g32 \triplet { d16 g d }	\flam g8

	%%
	\tutti {
		g8 |
		d4:32(	d8) \flam g	\triplet { d16 g d } g8	\flam d16. g32 d16. d32
		|
		\flam g8. g16	d4:32(	d4)
	}
}
