% 6/8 Kilaloe
% Tenor
\version "2.18.2"
composerTenor = ""
arrangerTenor = ""
tenorglobal = {}
% Music
tenorA = \drummode {
	d4. g4. | d4. r4. | 
	d4. g4. | d4. r4. |
	d4. g4. | d8. g16 d8 g8. d16 g8 |
	d4. g4. | d4. r4. |
}
tenorB = \drummode {
	d4. g4. d4. g4. |
	d4. g4. d4. r4. |
	d4. g4. d8. g16 d8 g8. d16 g8 |
	d4. g4. d4. r4. |
}
tenorCA = \drummode {
	\tenorB
}
tenorCB = \drummode {
	d4. g4. d4. r4. |
	d4. g4. d4. r4. |
	d4. g4. d8. g16 d8 g4. |
	r4.^"Oii" r4. d4. g4. |
	d4. r4. |
}
