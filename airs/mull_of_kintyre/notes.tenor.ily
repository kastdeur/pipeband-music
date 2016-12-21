% 6/8 Mull of Kintyre
% Tenor
\version "2.18.2"
composerTenor = ""
arrangerTenor = ""
tenorglobal = {}
% Music
tenorMeasure = \drummode {
	d8 d16. g32 d8
	d8 d16. g32 d8 |
}
tenorA = \drummode {
	\repeat unfold 6 { \tenorMeasure }
}

tenorB = \drummode {
	\repeat unfold 9 { \tenorMeasure }
}

tenorE = \drummode {
	\repeat unfold 6 { \tenorMeasure }
}
