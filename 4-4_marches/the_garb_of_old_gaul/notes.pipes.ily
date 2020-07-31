% 4/4 Garb of old Gaul
% Pipes
\version "2.18.2"
composerPipes = "R. Reid"
arrangerPipes = ""
pipeglobal = {
	\key d \major
}
% Music
pipesAA = {
	a4 |
	\thrwd d4	\wslurd d8. e16	d4	\grg f8. e16 |
	\grg d8 a	\grg G8 a	\grd d4	\wslurd d8. e16 |
	\grg f4	\gre f8. g16	\grA f4	\dblA A8. g16 |
	\grA f8. e16	\grg d8. e16	\grg f4	\gre f8. g16 |

	\dblA A4	\grip A4	\grg A4	f16 A8. |
	\grf g4	\grf g8. A16	\grf g4	A8. g16 |
	\grA f8. e16	\grg d8. e16	\grg f8 A	\grf g8 f |
	\grg e4	\gra e8. f16
}
pipesABA = {
	\dble e4
}
pipesABB = {
	\dble e8 d	\dblc c8 b |
}
pipesBA = {
	\grg a8. b16	\grg a8. b16	\grg c8. d16	\grg c8. d16 |
	\grg e4	\grip e8. f16	\dblg g4	\grA f8. e16 |
	\thrwd d8. e16	\grg d8. e16	\grg f4	\grip f8. g16 |
	\dblA A8. g16	\grA f8. e16	\dblA A4	f8. g16 |
	
	\dblA A8 f	\grg d8 e16 f	\dblg g8 e	\grg c8 e |
	\grG e8 g	\grA f8 e	\dbld d8 c	\dblb b a |
	\grg b8. c16	\thrwd d8. e16	\grg f8. A16	\tuplet 3/2 { g8 f e } |
	\thrwd d4	\wslurd d8. e16
}
pipesBBA = {
	\thrwd d8. \grg e16 \tuplet 3/2 { d8 c b }
}
pipesBBB = {
	\thrwd d2 |
}