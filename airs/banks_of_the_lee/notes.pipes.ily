% 3/4 Banks of the Lee
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = "D. Rickard"
pipeglobal = {
	\bagpipeKey
}
% Music
pipesA = {
	\repeat volta 2 {
		\grg b8  d8  |
		\grg e4. f8 \grg e8  d8  |
		e8  \grg a8~  a4. b8 |
		\grg d8  e8~  e4 \grg d8  b8  |
		\grg a8  \grd G8~  G4 \grg e8  g8  |
		A4. g8 A8  g8  |
		e8  \grg G8~  G4. a8 |
	} \alternative {
		{
			\grg b4. a8 \grg b8  d8  |
			\dble e2 
		}
		{
			\grg b8  \grG a8~  a4. \wbirl a8 |
			\gre a2 
		}
	}
}
