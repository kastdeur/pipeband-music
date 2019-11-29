% 4/4 Rose of Kelvingrove
% Tenor
\version "2.18.2"
composerTenor = "v0.5, 2019"
arrangerTenor = ""
tenorglobal = {}
% Music

stfe = \drummode {
  \stf d2 
}
pianomotion = \drummode {
  d8\startGroup^\markup{"piano"} g d  g8\stopGroup
}

tenorA = \drummode {
	\repeat percent 3 {
		d4 g4 \stf d2 |
	}
	d4 g4 \pianomotion|

	\repeat percent 2 {
		d4 g4 \stf d2 |
	}
	d4 g4 \pianomotion|
	d4 g4 \stf d2 |
}
tenorB = \drummode {
	\repeat percent 2 {
		d4 g4 \stf d2 |
		d4 g4 \pianomotion|
	}

	\repeat percent 2 {
		d4 g4 \stf d2 |
	}
	d4 g4 \pianomotion|
	d4 g4 \stf d2 |
}
tenorC = \drummode {
	\tenorA
}
tenorD = \drummode {
	\repeat percent 2 {
		d4 g4 \stf d2 |
		d4 g4 \pianomotion|
	}

	\repeat percent 3 {
		d4 g4 \stf d2 |
	}
	\stf d2 \stf d2 \stf d2
}
