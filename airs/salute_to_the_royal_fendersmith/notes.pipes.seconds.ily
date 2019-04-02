% 12/8 Salute to the Royal Fendersmith
% Pipes (Seconds)
\version "2.18.2"
composerPipesSecnd = "PM J.M. Banks"
arrangerPipesSecnd = ""
pipessecndglobal = {
	\key a \mixolydian
}
% Music
pipessecndAA = { % Same as pipesA
	\grg a4
	b8 |
	\dblc c4 e8	\dblc c4.	\gre a4.~	a4 \grc c8 |
	\grg e4 f8	\dble e2.~	e4. |
	\dblA A4 f8	\dble e4.	\grg a4.~	a4 f8 |
	\dble e4 c8 \slurb b4.~	b4
}
pipessecndAB = {
	c8 \grg c4 d8 |
	\dblc e4 c8	\dble e4.	\grd c4.~ c4 \gre a8 |
	\grg c4 d8	\dblc c2.~	c4. |
	\dblf f4 d8	\dblc c4.	\grg e4.~	e4 d8 |
	\dble e4 d8 \dblc c4 d8	\dble e4 d8	\dblc c4 a8 |
}

pipessecndBA = {
	\grg c4 d8	\dblc c4.	\dble e2. |
	\dblf f4 d8	\dblc c2.~	c4 e8 |
	\dblc c4 d8	\dble e4.	\grg c4.~ c4 d8 |
	\dblc c4 e8	\thrwd d2.~ d4 c8 |
}

pipessecndBB = {
	\grg c4 d8	\dblc c4.	\dble e2. |
	\dblf f4 d8	\dblc c2.~	c4. |
	\dblf f4 d8	\dblc c4.	\grg e4.~	e4 d8 |
	\dble e4 d8	\dblc c4 d8	\dble e4 d8	\dblc c4.
}
