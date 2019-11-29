% 4/4 Highland Cathedral
% Tenor
\version "2.18.2"
composerTenor = ""
arrangerTenor = ""
tenorglobal = {}
% Music
stfe = \drummode {
	\stf d2
}

tenorAA = \drummode {
  \flourish { d8[ d] g8[ g] } \stfe |
}
tenorA = \drummode {
	\repeat percent 8 {
		<>^\markup {"alternate drummer"} 
		\tenorAA
	}
}

tenorB = \drummode {
	\repeat percent 6 {
		d4\< g\! d4 r4 |
	}
	d2 g2 |
	d8 g d8 g d8 g d8 g |
	d8 g d8 g d8 g d8 g |
}

tenorC = \drummode {
	\repeat percent 8 {
		<>^\markup {"alternate drummer"} 
		\tenorAA
	}
}
