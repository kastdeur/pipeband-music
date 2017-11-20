% 6/8 Kilaloe
% Tenor
\version "2.18.2"
composerTenor = "N. Kuijkhoven, 2017"
arrangerTenor = ""
tenorglobal = {}

% Music
tenorAA = \drummode {
	d4. g4. | d4. r4.\rswipe | 
	d4. g4. | d4. r4.\rswipe |
	d4. g4. | d4. g4. |
	d4.\up g4.\up | d4.\up r4. |
}
tenorAB = \drummode {
	\flourish{
	  d4. d4. | g4. g4. |
	  d4. d4. | g4. g4. |
	  d4. d4. | g4. g4. |
	}
	d4.\up g4.\up | d4. \up r4. |
}
tenorBA = \drummode {
	\tenorAA
}
tenorBB = \drummode {
  \flourish{
	  d4. d4. | g4. g4. |
	  d4. d4. | g4. g4. |
	  d4. d4. | g4. g4. |
	}
	r4. r4. |
	d4.\up g4.\up | d4. \up r4. |
}
