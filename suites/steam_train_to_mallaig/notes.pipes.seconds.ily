% 6/8 - 2/4 Steam Train to Mallaig
% Pipes (Seconds / 3rd Piper)
\version "2.18.2"
composerPipesSecnd = "Mary-Ann MacKinnon"
arrangerPipesSecnd = ""
pipessecndglobal = {
	\key a \mixolydian
}
% Music
pipessecndIntro = {
	R2.*7
}
pipessecndAA = {
	R2*4
}
pipessecndAB = {
	\repeat unfold 2 {
		A8 [ \grg A16 f16 ] \grg f16 [ e16 \grg c8 ] |
		\grg f16 [ e16 \gra e16 f16 ] \grg b16 [ \grd b16 \gre b16 \grd c16 ] |
	}
}

pipessecndB = {
	\dblg g4~ g8 [ A16 g16 ] |
	\hdblf f4~ f8 [ A16 f16 ] |
	\dble e4~ e4~ |
	e4~ e4
}

pipessecndC = {
	\grg c4~ c4~ |
	c4~ c16 [ d16 \grg c16 b16 ] |
	\grg c4~ c4~ |
	c4~ c16 [ d16 \grg c16 b16 ] |

	\grg d4~ d4~ |
	d4~ d16 [ e16 \grg d16 b16 ] |
	\grg c4~ c4~ |
	c4~ c16 [ d16 \grg c16 b16 ]
}

pipessecndD = {
	\grg c16 [ e16 \gra e16 c16 ]	\grg c16 [ e16 \gra e16 b16 ] |
	\grg b16 [ d16 \grc d16 b16 ]	\grg b16 [ d16 \grc d16 a16 ] |
	\grg a16 [ c16 \grG c16 a16 ]	\grg d16 [ a16 \grg c16 a16 ] |
	\grg a16 [ c16 \grG c16 a16 ]	\grg d16 [ a16 \grg c16 a16 ] |

	\pipessecndB
}

pipessecndE = {
	\repeat unfold 2 {
		\grg a16 [ \grd c16 e16 \grg a16 ]	\grd c16 [ e16 a16 \grd c16 ]
		\grg G16 [ b16 d16 G16 ]				\grg b16 [ d16 G16 \grd b16 ]
		\grg a16 [ \grd c16 e16 \grg a16 ]	\grd c16 [ e16 a16 \grd c16 ]
		e16 [ \grg a16 c16 e16 ]				\grg a16 [ \grd c16 e16 a16 ]
	}
}

pipessecndF = {
	A16 [ \grg A16 \grg A16 f16~ ]				f16 [ \grg f16 e8 ]
	\grg d16 [ c16 d16 \dble e16~ ]					e4 |
	\grg d16 [ \gre d16 \grG d16 \grg d16~ ]		d16 [ A16 f8 ] |
	\dblc c8 [ \gre a8~ ]							a4 |

	\grg c16 [ \grd c16 \gre c16 a16~ ]	a16 [ d16 c8 ]
	\grg d16 [ e16 f16 \grg e16~ ]		e4 |
	\grg b16 [ c16 d8~ ]					d4 |
	\grg d16 [ e16 f8~ ]					f4 |

	\grg e4~ e4 |
	\grg d4~ d4 |
	A8 [ \grg A16 f16 ]					\grg f16 [ e16 \grg c8 ] |
	\grg f16 [ e16 \gra e16 f16 ]		\grg b16 [ \grd b16 \gre b16 \grd c16 ] |

	A8 [ \grg A16 f16 ]					\grg f16 [ e16 \grg c8 ] |
	\grg b4~								b4~ |
	\grg b16 [ \grd b16 \gre b8 ]	\grd c4~ |
	c4~									c4 |
}