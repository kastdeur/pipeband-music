% 6/8 Piobaireachd o' Donuil Dubh
% Pipes
\version "2.18.2"
composerPipes = ""
pipeglobal = {
	\key a \mixolydian
}
mbreak = \break
% Music
pipesA = {
	\repeat unfold 2 {
		\dble e8. [ c16 \grG c8 ] \grg f8. [ g16 A8 ] |
		\hdble e8. [ c16 \grG c8 ] \dblc c8. [ b16 \grG a8 ] |
	} \alternative {
		{
		  \dble e8. [ c16 \grG c8 ] \grg f8. [ g16 A8 ] |
		  \hdble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 \mbreak |
		}
		{
		  \slurb b4 c8 \thrwd d8. [ e16 f8 ] |
		  \dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 |
		}
	}
}
pipesB = {
	\repeat unfold 2 {
		\dble e8. [ c16 \grG c8 ] \grg f8. [ d16 \grG d8 ] |
		\dble e8. [ c16 \grG c8 ] \dblc c8. [ b16 \grG a8 ] |
	} \alternative {
		{
		  \dble e8. [ c16 \grG c8 ] \grg f8. [ d16 \grG d8 ] |
		  \dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 \mbreak |
		}
		{
		  \slurb b4 c8 \thrwd d8. [ e16 f8 ] |
		  \dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 |
		}
	}
}
pipesC = {
	\repeat unfold 2 {
		\grip e4 \grg a8 \grip f4 \grg a8 |
		\grip e4 \grg a8 \dblc c8. [ b16 \grG a8 ] |
	} \alternative {
		{
		  \grip e4 \grg a8 \grip f4 \grg a8 |
		  \grip e4 c8 \dblb b4 \grG a8 \mbreak |
		}
		{
		  \slurb b4 c8 \thrwd d8. [ e16 f8 ] |
		  \dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 |
		}
	}
}
pipesDA = {
	A8. [ e16 \grg e8 ] A8. [ f16 \grg f8 ] |
	A8. [ e16 \grg e8 ] \dblc c8. [ b16 \grG a8 ] |
	A8. [ e16 \grg e8 ] A8. [ f16 \grg f8 ] |
	\dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 | 
}
pipesDBA = {
	A8. [ e16 \grg e8 ] A8. [ f16 \grg f8 ] |
	A8. [ e16 \grg e8 ] \dblc c8. [ b16 \grG a8 ] |
	\slurb b4 c8 \thrwd d8. [ e16 f8 ] |
	\dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 
}
pipesDBB = {
	A8. [ e16 \grg e8 ] A8. [ f16 \grg f8 ] |
	A4 \grip A8 \hdblc c8. [ b16 \grG a8 ] |
	\slurb b4 c8 \thrwd d8. [ e16 f8 ] |
	\dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 
}
