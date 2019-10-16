% 6/8 - 2/4 Steam Train to Mallaig
% Pipes
\version "2.18.2"
composerPipes = "Mary-Ann MacKinnon"
arrangerPipes = ""
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesIntro = {
	\grg a8. \grd c16 e8		\dblg g8. \grA f16 d8 |
	\grg e16 c8. \grg c8		\grip c8. \grg c16 b8 |
	\grg a8. \grd c16 e8		\dblg g8. \grA f16 d8 |
	\dble e4.				\gra e4 \grg c16  b16 |

	\grg a8. \grd c16 e8		\dblg g8.  \grA f16 d8 |
	\grg e16 c8. \grg c8		\grip c4. |
	\grg d8 e8. d16			\grg G16 \grd a8.\grd b8\fermata |
}
pipesAA = {
	\dble e8 \gra e16 d16		\grg d16 c16 \grg a8 |
	\grg d16 c16 \grG c16 d16	\grg G16 \grd G16 \gre G16 \grd a16 |
}
pipesA = {
	\repeat unfold 2 {
		\pipesAA
	}
}
pipesB = {
	\grg G16 [ g16 \grf g16 G16 ]	g16 [ \grf g16 G16  g16 ] |
	a16 [ f16 \gre f16  a16 ]		f16 [ \gre f16 a16 f16 ] |
	\grg a16 [ e16 \gra e16 a16 ]	\grg f16 [ a16 \grg e16 a16 ] |
	\grg a16 [ e16 \gra e16 a16 ]	\grg f16 [ a16 \grg e16 a16 ] |
}
pipesC = {
	\repeat unfold 2 {
		\grg a16 b16 c16 d16		\grg e16 f16 g16 e16 |
		A16 e16 \gra e16 A16		c16 A16 a8 |
	}

	\grg d16 a16 \grg d16 f16		A16 f16 \grg d16 f16 |
	\grg a16 d16 \grg f16 a16		\grg d16 f16 a16 d16 |
	\grg a16 b16 c16 d16			\grg e16 f16 g16 e16 |
	A16 e16 \grg e16 A16			c16 A16 a8 |
}
pipesD = {
	\grg e16 g16 \grf g16 e16	\grg e16 g16 \grf g16 d16 |
	\grg d16 f16 \gre f16 d16	\grg d16 f16 \gre f16 c16 |
	\grg c16 e16 \gra e16 c16	\grg f16 c16 \grg e16 c16 |
	\grg c16 e16 \gra e16 c16	\grg f16 c16 \grg e16 a16 |

	\grg G16 g16 \grf g16 G16	g16 \grf g16 G16 g16 |
	a16 f16 \gre f16 a16 f16		\gre f16 a16 f16 |
	\grg a16 e16 \gra e16 a16	\grg f16 a16 \grg e16 a16 |
	\grg a16 e16 \gra e16 a16	\grg f16 a16 \grg e16 a16
}
pipesE = {
	\grg a8 [ \grd c8~ ]		c8 [ e8 ] |
	\dblg g8 [ \grA f8~ ]	f8 [ d8 ] |
	\grg e8 [ c8~ ]			c4~ |
	c4~						c8 [ b8 ] |

	\grg a8 [ \grd c8~ ]		c8 [ e8 ] |
	\dblg g8 [ \grA f8~ ]	f8 [ d8 ] |
	\dble e4~				e4~ |
	e4~						e8 [ \grg c16 b16 ] |

	\grg a8 [ \grd c8~ ]		c8 [ e8 ] |
	\dblg g8 [ \grA f8~ ]	f8 [ d8 ] |
	\grg e8 [ c8~ ]			c4~ |
	c4~						c4 |

	\grg d8 [ e8~ ]			e8 [ d8 ] |
	\grg G8 [ \grd a8~ ]		a8 [ b8 ] |
	\grg a4~					a4~ |
	a4~						a4
}
pipesF = {
	e16  \grg e16 \gra e16  \grg d16~ d16  \grG d16 c8  |
	\grg b16[ a16 b16 \grip c16]~ c4 |
	g16  \grg g16 \grf g16  \grA f16~ f16  e16 d8  |
	\grg e8 c8~ c4 |

	A16[ \grg A16 \grg A16 \hdblc c16]~ c16  b16 \grg a8  |
	\grg b16[ c16 d16 \dblc c16]~  c4 |
	\grg G16  a16 b8~ b4 |
	\grg b16  c16 d8~  d4 |

	\grg c4~ c4 |
	b4~ b4 |
	\dble e8  \gra e16 d16  \grg d16  c16 \grg a8  |
	\grg d16  c16 \grG c16  d16  \grg G16  \grd G16 \gre G16  \grd a16  |

	\dble e8  \gra e16 d16  \grg d16  c16 \grg a8  |
	\thrwd d4~ d4~ |
	d16  \grg G16 G16  \gre G16  \grg a4~ |
	a4~ a4
}
