% 6/8 Wi' A Hundred Pipers
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = ""
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesA = {
	d32 e16. |
	\dblf f4 a8		\grg a8. b16 \grG a8 |
	\dblb b4 d8		\dbld d4 \hdblg g8 |
	\dblA A4 f8		\dblf f8. e16 d8 |
	\dblf f4 e8		\grg e8. d16 e8 |

	\dblf f4 a8		\grg a8. b16 \grG a8 |
	\dblb b4 d8		\dbld d4 \hdblg g8 |
	\dblA A4 f8		\grg e8. d16 e8 |
	\grg d4.		\grG d4
}

pipesB = {
	c32 d16. |
	\grg e4 \grip e8		\grg e8. c16 e8 |
	\dblf f4 A8		\grg A4 f8 |
	\dble e4 c8		\dblc c8. b16 \grG a8 |
	\dblc c4 \gre b8		\grG b8. c16 d8 |

	\grg e4 \grip e8		\grg e8. c16 e8 |
	A4 \grip A8		\grg A8. g16 f8 |
	\dble e4 c8		\dblb b8. a16 b8 |
	\grg a4.		\wbirl a4
}
