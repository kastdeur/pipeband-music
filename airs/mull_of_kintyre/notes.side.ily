% 6/8 Mull of Kintyre
% Side
\version "2.18.2"
composerSide = ""
arrangerSide = "v1.1"
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
	\flam  d8 \flam \triplet { d16 g d } \flam \triplet { g16 d g }
	|
	\flam  d8 \flam \triplet { d16 g d } \flam \triplet { g16 d g }
	\flam  d8 \flam \triplet { d16 \p\< g d } \flam \triplet { g16 d g}
	<> \mp
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
		\flam  d8 \flam \triplet { d16\p g d } \flam \triplet { g16 d g }
		|
	}
	\alternative {
		{ <> \mp }
		{
			\flam  d8 \flam \triplet { d16 g d } \flam \triplet { g16 d g }
			\flam  d8 \flam \triplet { d16 \< g d } \flam \triplet { g16 d g }
			|
			<> \mp
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
		d8) \flam \triplet { d16 \p g d } \flam \triplet { g16 d g }
		\flam  d8 \flam \triplet { d16 \mp g d } \flam \triplet { g16 d g }
		|
		\flam  d8 \flam \triplet { d16 \mf\< g d } \flam \triplet { g16 d g }
		\flam d4. \f
		|
}
