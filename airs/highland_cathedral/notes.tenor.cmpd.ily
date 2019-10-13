% 4/4 Highland Cathedral
% Tenor
\version "2.18.2"
composerTenor = ""
arrangerTenor = ""
tenorglobal = {}
% Music
stfe = \drummode {
	\stf <d g >2
}

tenorAA = \drummode {
  \flourish { g8[ g] d8[ d] } \stfe |
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
	g8 d g8 d g8 d g8 d |
	g8 d g8 d g8 d g8 d |
}

tenorC = \drummode {
	\repeat percent 8 {
		<>^\markup {"alternate drummer"} 
		\tenorAA
	}
}
