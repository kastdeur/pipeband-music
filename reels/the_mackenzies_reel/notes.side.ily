% 2/2 The MacKenzie's Reel
% Side
\version "2.18.2"
composerSide = "C. Ooms, 2015"
sideglobal = { \eighthBeaming}

snareA = \drummode {
	g32 |
	\flam d8 d16. g32	d8:32~ g16. g32 
	\triplet { d16 g d } \flam g16. g32	d16. g32 d16.:64~ d32 |
	g8 d16. g32	d32 g d g d16. g32 
	\flam d16. g32 d16. \flam g32	d16. \flam g32 d16. g32 |


	\flam d8 d16. g32	d8:32~ g16. g32 
	\triplet { d16 g d } \flam g16. g32	d16. g32 d16.:64~ d32 | 
	g16.-> g32 d16. g32	\triplet { d16 d g } d16 g32 g 
	d16.-> g32 d16. g32->	d32 g d g d16->
}
snareB = \drummode {
	g32 |
	\flam d16. g32 d16. \flam g32	d16. g32 d32 g d g 
	d16. g32 d16. g32:128(->	g16:64 d8:32)(-> g16) |
	d8-> d16. g32		d32 g d g d16. g32 
	\triplet { d16 d g } \triplet { d16 d g }	d16. \flam g32 d16. g32 |

	\flam d16. g32 d16. \flam g32	d16. g32 d32 g d g 
	d16. g32 d16. g32:128(->	g16:64 d8:32)(-> g16) |
	d16. g32 d16. g32	\triplet { d16 d g } d16 g32 g 
}
snareBA = \drummode {
	\snareB
	d16.-> g32 d16. g32->	d32 g d g d16. |
}
snareBB = \drummode {
	\snareB
	d16.-> g32 d16. g32->	d32 g d g d8
}
