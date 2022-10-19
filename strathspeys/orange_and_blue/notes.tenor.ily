% 4/4 Orange and Blue
% Tenor
\version "2.18.2"
composerTenor = "E.T. de Boone, v0.1, Oct 2022"
arrangerTenor = ""
tenorglobal = {}
% Music
tenorAA = \drummode {
	d4 g4 d8. d16 g4 |
	\flourish { d4 g } r8.^\rpush g16 d4 |
	d4 g8. g16 d4 g4 |
	d8. g16 d8. d16 g4 g4 |
}
tenorAB = \drummode {
	d4 g4 d8. d16 g4 |
	\flourish { d4 g } r8.^\rpush g16 d4 |
	d8. g16 d4 \triplet { d8 g d } g4  |
	d4^\up g4^\up \stf d2
}

tenorBA = \drummode {
	\flourish { d4 g4 d4 g4 } |
	\triplet { d8 g d } g8. g16 d2 |
	d4^\up g4^\up d4^\up g4^\up |
	d8. g16 d8. d16 g4 g4 |
}
tenorBB = \drummode {
	\flourish { d4 g4 d4 g4 } |
	\triplet { d8 g d } g8. g16 d2 |
	d8. g16 d4 \triplet { d8 g d } g4  |
	d4^\up g4^\up \stf d2
}

tenorA = \drummode { \tenorAA \tenorAB }
tenorB = \drummode { \tenorBA \tenorBB }
