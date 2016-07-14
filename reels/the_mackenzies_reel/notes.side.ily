% 2/2 The MacKenzie's Reel
% Side
\version "2.18.2"
composerSide = "C. Ooms, 2016"
sideglobal = { \eighthReelBeaming}

snareA = \drummode {
	\flam d4 d8. g16	d4:32~ g8. g16 
	\triplet { d8 g d } \flam g8. g16	d8. g16 d8.:32~ d16 |
	g4 d8. g16	d16 g d g d8. g16 
	\flam d8. g16 d8. \flam g16	d8. \flam g16 d8. g16 |


	\flam d4 d8. g16	d4:32~ g8. g16 
	\triplet { d8 g d } \flam g8. g16	d8. g16 d8.:32~ d16 | 
	g8.-> g16 d8. g16	\triplet { d8 d g } d8 g16 g 
	d8.-> g16 d8. g16->	d16 g d g d8.-> g16 |
}
snareB = \drummode {
	\flam d8. g16 d8. \flam g16	d8. g16 d16 g d g 
	d8. g16 d8. g16:64(->	g8:32 d4:32)(-> g8) |
	d4-> d8. g16		d16 g d g d8. g16 
	\triplet { d8 d g } \triplet { d8 d g }	d8. \flam g16 d8. g16 |

	\flam d8. g16 d8. \flam g16	d8. g16 d16 g d g 
	d8. g16 d8. g16:64(->	g8:32 d4:32)(-> g8) |
	d8. g16 d8. g16	\triplet { d8 d g } d8 g16 g 
	d8.[-> g16 d8. g16]->	d16[ g d g] d8
}
