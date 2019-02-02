% 4/4 When the Pipers play
% Tenor
\version "2.18.2"
composerTenor = "T. Hachmang"
arrangerTenor = "E.T. de Boone, 2019"
tenorglobal = {}
% Music
tenorEnd = \drummode {
	d8.. g32
	r8 d8
	d4
}
tenorA = \drummode {
	\repeat unfold 7 {
		d8.. g32
		r8 d8
		r16. g32 d8
		g4 |
	}
	\tenorEnd
}
