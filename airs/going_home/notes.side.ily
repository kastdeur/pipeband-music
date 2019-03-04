% 6/8 Going Home
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, 2019"
arrangerSide = ""
sideglobal = {
}
% Music
snareA = \drummode {
	\tag #'upbeat { d8:32( | }

	d8.)-> g16 d8	\flam g4 d8:32( |
	g8.) g16 d8	d4.:32( |
	d8.) g16 d8	\flam g8. d16 g8 |
	d4.:32~ d4.:32( |

	d8.)-> g16 d8	\flam g4 d8:32( |
	g8.) g16 d8	d4.:32( |
	d8.) g16 d8	\flam g8. d16 \flam g8 |
	d4.:32~ d4.:32( |
}

snareBA = \drummode {
	d8) \tuplet 3/2 { d16 g d } \flam g8	\flam d8. g16 d8 |
	\flam g8. d16 g8	d4.:32( |
	d8) \tuplet 3/2 { d16 g d } \flam g8	\flam d8. g16 d8 |
	d4.:32(	d4.:32)(->	|


	d8) \tuplet 3/2 { d16 g d } \flam g8	\flam d8. g16 d8 |
	\flam g8. d16 g8	d4.:32( |
	d8) \tuplet 3/2 { d16 g d } \flam g8	\flam d8. g16 d8 |
	d4.:32(	d4.:32)(\v	|
}
snareBB = \drummode {
	d8.)-> g16 d8	\flam g4 d8:32( |
	g8.) g16 d8	d4.:32( |
	d8.) g16 d8	\flam g8. d16 g8 |
	d4.:32~ d4.:32( |

	d8.)-> g16 d8	\flam g4 d8:32( |
	g8.) g16 d8	\flam g4.|
	d8) \tuplet 3/2 { d16 g d } \flam g8	\flam d4 \flam d8 |
	d2.:32 |
}
