% 2/4 Rakes of Mallow
% Tenor
\version "2.18.2"
composerTenor = "N. Kuijkhoven, 2018"
arrangerTenor = ""
tenorglobal = {}

% Special Character
click = \andrewStop

% Music
tenorAA = \drummode {
	d4 g4 d8 g d4 |
	d4 g4 d8 g d4 |
	d4 g4 d8 g d4 |
	d4 g4 d8 g\click d4\click |
}

tenorAB = \drummode {
	\flourish {
	  d4 d4
	  g g
	  d d
	  g g
	  d d
	  g g
	  d g
	}
	  d \up g \up
}
