% 6/8 - 2/4 Steam Train to Mallaig
% Pipes (1st Harmony / 3rd Piper)
\version "2.18.2"
composerPipesthrd = ""
arrangerPipesthrd = ""
pipesthrdglobal = {
	\key a \mixolydian
}
% Music
pipesthrdIntro = {
	R2.*7
}
pipesthrdAA = {
	R2*6
}
pipesthrdAB = {
	\dble e8 [ \gra e16 d16 ]	\grg d16 [ c16 \grg a8 ] |
	d16 [ c16 \grG c16 d16 ]			\grg G16 [ \grd G16 G16 \grd a16 ]
}

pipesthrdBA = {
	\grg e4~ e8 [ \grg f16 e16 ] |
	\thrwd d4~ d8 [ \grg e16 d16 ] |
	\dblc c4~ c4~ |
	c4~ c4
}

pipesthrdC = {
	\grg e4~ e4~ |
	e4~ e16 [ f16 \grg e16 d16 ]
	\grg e4~ e4~ |
	e4~ e16 [ f16 \grg e16 d16 ] |

	\grg f4~ f4~ |
	f4~ f16 [ g16 \grA f16 d16 ] |
	\grg e4~ e4~ |
	e4~ e16 [ f16 \grg e16 d16 ]
}

pipesthrdD = {
	\grg c16 [ e16 \gra e16 c16 ]	\grg c16 [ e16 \gra e16 b16 ] |
	\grg b16 [ d16 \grc d16 b16 ]	\grg b16 [ d16 \grc d16 a16 ] |
	\grg a16 [ c16 \grG c16 a16 ]	\grg d16 [ a16 \grg c16 a16 ] |
	\grg a16 [ c16 \grG c16 a16 ]	\grg d16 [ a16 \grg c16 a16 ] |

	\grg e4~ e8 [ \grg f16 e16 ] |
	\thrwd d4~ d8 [ \grg e16 d16 ] |
	\dblc c4~ c4~ |
	c4~ c4
}

pipesthrdE = {
	\repeat unfold 2 {
 		\grg c16 [ e16 A16 c16 ]	\grg e16 [ A16 c16 e16 ] |
 		\grg b16 [ d16 g16 \grA b16 ]	d16 [ g16 \grA b16 d16 ] |
 		\grg c16 [ e16 A16 c16 ]	\grg e16 [ A16 c16 e16 ] |
 		A16 [ c16 \grg e16 A16 ]	c16 [ e16 A16 c16 ] |
	}
}

pipesthrdF = {
	\dblA A4~	A4 |
	e8. [ \dblA A16~ ]	A4 |
	\grf g8. [ \grA f16~ ]	f4 |
	\dblA A8 [ e8~ ]	e4 |

 	\grg e16 [ \grg e16 \gra e16 \dblA A16~ ] A4 |
 	G16 [ a16 b16 \grg e16~ ]	e4 |
 	\grg b16 [ c16 d8 ] \grg b16 [ c16 d8 ] |
 	\grg d16 [ e16 f8 ] \grg d16 [ e16 f8 ] |

 	\dblA A4~ A4 |
 	\grf g4~ g4 |
 	A8 [ \grg A16 f16 ]	\grg f16 [ e16 \grg c8 ] |
 	\grg f16 [ e16 \grd e16 f16 ]	\grg b16 [ \grd b16 \gre b16 \grd c16 ] |

 A8 [ \grg A16 f16 ]	\grg f16 [ e16 \grg c8 ] |
 \dblg g4~ g4~ |
 g16 [ d16 \gre d16 \grc d16 ]	\dble e4~ |
 e4~ e4
}