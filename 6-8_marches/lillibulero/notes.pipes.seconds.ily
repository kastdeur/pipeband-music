% 6/8 Lillibullero
% Pipes (Seconds)
\version "2.18.2"

\include "./notes.pipes.ily"

composerPipesSecnd = ""
arrangerPipesSecnd = ""
pipessecndglobal = {
	\key a \mixolydian
}
% Music
pipessecndAA = {
	\pipesAA
}
pipessecndABAA = {
	\pipesABAA
}
pipessecndABABA = {
	A8 g f	\grg e8 f g |
	A8 g f	\grg e8 f g |

	f16 A8. a8	\grg d4 c8 |
	\grg b8. a16 G8	\grg a4.
}
pipessecndABABB = {
	f8 e d	\grg c8 d e |
	\grg e8 d c \grg b8 c d |

	\grg e4 a8	\grg d4 c8 |
	\grg b8. a16 G8	\grg a4.
}