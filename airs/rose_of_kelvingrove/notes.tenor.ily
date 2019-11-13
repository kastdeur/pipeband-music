% 4/4 Rose of Kelvingrove
% Tenor
\version "2.18.2"
composerTenor = ""
arrangerTenor = ""
tenorglobal = {}
% Music

stfe = \drummode {
  \stfd2 
}
xg = \drummode {
  g8^\markup{ "x" }
}

tenorA = \drummode {
	\repeat percent 3 {
		g4 d4 \stfe |
	}
	g4 d4 d8 g d \xg |

	\repeat percent 2 {
		g4 d4 \stfe |
	}
	g4 d4 d8 g d \xg |
	g4 d4 \stfe |
}
tenorB = \drummode {
	\repeat percent 2 {
		g4 d4 \stfe |
		g4 d4 d8 g d \xg |
	}

	\repeat percent 2 {
		g4 d4 \stfe |
	}
	g4 d4 d8 g d \xg |
	g4 d4 \stfe |
}
tenorC = \drummode {
	\tenorA
}
tenorD = \drummode {
	\repeat percent 2 {
		g4 d4 \stfe |
		g4 d4 d8 g d \xg |
	}

	\repeat percent 3 {
		g4 d4 \stfe |
	}
	\stfe \stfe \stfe
}
