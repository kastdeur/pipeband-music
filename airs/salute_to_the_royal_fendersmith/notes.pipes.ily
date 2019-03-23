% 12/8 Salute to the Royal Fendersmith
% Pipes
\version "2.18.2"
composerPipes = "PM J.M. Banks"
arrangerPipes = ""
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesA = {
	\grg a4
	\repeat unfold 2 {
		b8 |
		\dblc c4 e8	\dblc c4.	\gre a4.~	a4 \grc c8 |
		\grg e4 f8	\dble e2.~	e4. |
	} \alternative {
		{
			\dblA A4 f8	\dble e4.	\grg a4.~	a4 f8 |
			\dble e4 c8 \slurb b4.~	b4 a8	\wbirl a4
		}
		{
			\dblA A4 f8	\dble e4.	\grg a4.~	a4 b8 |
			\dblc c4 \gre b8	\grG a2.~	a4
		}
	}
}

pipesB = {
	\repeat unfold 2 {
		e8 |
		\gra e4 f8	\dble e4.	\dblc c2. |
		\dblA A4 f8	\dble e2.~	e4 a8 |
	} \alternative {
		{
			\wbirl a4 b8	\dblc c4.	e4.~	e4 f8 |
			\dble e4 c8	\slurb b2.~	b4
		}
		{
			\dblA A4 f8	\dble e4.	\grg a4.~	a4 b8 |
			\dblc c4 \gre b8	\grG a2.~ a4
		}
	}
}
