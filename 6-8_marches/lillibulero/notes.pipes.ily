% 6/8 Lillibullero
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = ""
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesAA = {
	\repeat unfold 2 {
		\grg a8. b16 a8	\grg c4 \grG c8 |
		\grg b8. c16 b8 \thrwd d4. |

		\grg c8 e8 a8	\grg d4 c8 |
		\grg b8. a16 G8 \grg a4. |
	}
}
pipesABAA = {
	A4 g8	\dblA A4 e8 |
	\grg e8. f16 g8	\grA f4 e8 |

	\grg e8 f g	A8 g f |
	\grg e8 d8 c	\grg b4
	e8 |
}
pipesABABA = {
	\grg f8 e d	\grg c8 d e |
	\grg f8 e d \grg c8 d e |

	\grg f16 A8. a8	\grg d4 c8 |
	\grg b8. a16 G8	\grg a4.
}
pipesABABB = {
	\grg f8 e d	\grg c8 d e |
	\grg e8 d c \grg b8 c d |

	\grg e4 a8	\grg d4 c8 |
	\grg b8. a16 G8	\grg a4.
}