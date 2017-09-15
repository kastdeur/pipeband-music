% 6/8 Mull of Kintyre
% Side
\version "2.18.2"
composerSide = ""
arrangerSide = ""
sideglobal = {}
% Music
% Refrain
snareA = \drummode {
	\repeat unfold 4 {
		\flam d8 g16. d32-> g16. g32
		\flam d8 g16. d32-> g16. g32
		|
	}
	\flam d8 g16. d32-> g16. g32
	\flam  d8 \flamd \triplet { d16 g d } \flamd \triplet { d16 g d }
	|
	\flam  d8 \flamd \triplet { d16 g d } \flamd \triplet { d16 g d }
	\flam  d8 \flamd \triplet { d16 \p\< g d } \flamd \triplet { d16 g d\mp } 
}
% Couplet
snareB = \drummode {
	\repeat unfold 2 {
		\repeat unfold 3 {
			\flam d8 g16. d32-> g16. g32
		}
		d4.:32(
		|
		d8) g16. d32-> g16. g32
		\flam d8 g16. d32-> g16. g32
		|
		\flam d8 g16. d32-> g16. g32
		\flam  d8 \p \flamd \triplet { d16 g d } \flamd \triplet { d16 g d }
		|
	}
	\alternative {
		{ }
		{
			\flam  d8 \flamd \triplet { d16 g d } \flamd \triplet { d16 g d }
			\flam  d8 \flamd \triplet { d16 \< g d } \flamd \triplet { d16 g d \mp }
			|
		}
	}
}
snareE = \drummode {
		\flam d8 g16. d32-> g16. g32
		\flam d8 g16. d32-> g16. g32
		|
		\flam d8 g16. d32-> g16. g32
		d4.:32(
		|

		d8) g16. d32-> g16. g32
		\flam d8 g16. d32-> g16. g32
		|
		\flam d8 g16. d32-> g16. g32
		d4.:32(
		|
		d8) \flamd \triplet { d16 g d } \flamd \triplet { d16 g d }
		\flam  d8 \flamd \triplet { d16 g d } \flamd \triplet { d16 g d }
		|
		\flam  d8 \flamd \triplet { d16 \< g d } \flamd \triplet { d16 g d }
		\flam d4. \mf
		|
}

