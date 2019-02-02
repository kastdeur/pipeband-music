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
	\tutti {
		d16. g32 |
		\flam d8 
	} \triplet { d16 g d } 
	\flam g8  d8:32(\dr
	\triplet { g16) \fr d g } \flam d16. g32
	\flam d8

	%%
	\tutti { 
		d8:32( |
		g16.) d32:64( d16.) 
	} g32
	\triplet { d16 g d } \flam d16. g32
	\tutti {
		\triplet { d16\< g d } \triplet { g16 d g }
		\flam d8 \!
	}

	%%
	d8:32( |
	g8.) g16
	d8:32( g16.) g32
	\flam d16. g32 
	\tutti {
		\triplet { d16 g d }
		\flam g8 

	%%
		g8 |
		\flam d4 d4:32( d4) 
	} 
}

snareB = \drummode {
	\tutti {
		d4:32(\< 
		d8)\!
	} \flam g
	\tutti {
		d4:32(\< 
		d8)\!
	}

	%%
	d8:32( |
	g8) \flam d16. g32
	\tutti {
		d16. g32-> d16. d32
		\flam g16. g32 \triplet { d16 g d }
		\flam g8
	} 

	%%
	g8 |
	d4:32( 
	d8) \flam g
	\triplet { d16 g d } g8
	\tutti {
		\flam d16. g32 d16. d32
		|
		\flam g8. g16
		d4:32(
		d4)
	}
}
