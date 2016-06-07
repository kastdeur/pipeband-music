% 6/8 Piobaireachd o' Donuil Dubh
% Pipes
\version "2.18.2"
composerPipes = ""
pipeglobal = {
	\bagpipeKey
	}
% Music
pipesA = {
	\dble e8. [ c16 \grG c8 ] \grg f8. [ g16 A8 ] \bar "|"
	\hdble e8. [ c16 \grG c8 ] \dblc c8. [ b16 \grG a8 ] \bar "|"
	\dble e8. [ c16 \grG c8 ] \grg f8. [ g16 A8 ] \bar "|"
	\hdble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 \bar "|" \break

	\dble e8. [ c16 \grG c8 ] \grg f8. [ g16 A8 ] \bar "|"
	\hdble e8. [ c16 \grG c8 ] \dblc c8. [ b16 \grG a8 ] \bar "|"
	\slurb b4 c8 \thrwd d8. [ e16 f8 ] \bar "|"
	\dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 
}
pipesB = {
	\dble e8. [ c16 \grG c8 ] \grg f8. [ d16 \grG d8 ] \bar "|"
	\dble e8. [ c16 \grG c8 ] \dblc c8. [ b16 \grG a8 ] \bar "|"
	\dble e8. [ c16 \grG c8 ] \grg f8. [ d16 \grG d8 ] \bar "|"
	\dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 \bar "|" \break

	\dble e8. [ c16 \grG c8 ] \grg f8. [ d16 \grG d8 ] \bar "|"
	\dble e8. [ c16 \grG c8 ] \dblc c8. [ b16 \grG a8 ] \bar "|"
	\slurb b4 c8 \thrwd d8. [ e16 f8 ] \bar "|"
	\dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 
}
pipesC = {
	\grip e4 \grg a8 \grip f4 \grg a8 \bar "|"
	\grip e4 \grg a8 \dblc c8. [ b16 \grG a8 ] \bar "|"
	\grip e4 \grg a8 \grip f4 \grg a8 \bar "|"
	\grip e4 c8 \dblb b4 \grG a8 \bar "|" \break

	\grip e4 \grg a8 \grip f4 \grg a8 \bar "|"
	\grip e4 \grg a8 \dblc c8. [ b16 \grG a8 ] \bar "|"
	\slurb b4 c8 \thrwd d8. [ e16 f8 ] \bar "|"
	\dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 
}
pipesDA = {
	A8. [ e16 \grg e8 ] A8. [ f16 \grg f8 ] \bar "|"
	A8. [ e16 \grg e8 ] \dblc c8. [ b16 \grG a8 ] \bar "|"
	A8. [ e16 \grg e8 ] A8. [ f16 \grg f8 ] \bar "|"
	\dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 \bar "|" 
}
pipesDBA = {
	A8. [ e16 \grg e8 ] A8. [ f16 \grg f8 ] \bar "|"
	A8. [ e16 \grg e8 ] \dblc c8. [ b16 \grG a8 ] \bar "|"
	\slurb b4 c8 \thrwd d8. [ e16 f8 ] \bar "|"
	\dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 
}
pipesDBB = {
	A8. [ e16 \grg e8 ] A8. [ f16 \grg f8 ] \bar "|"
	A4 \grip A8 \hdblc c8. [ b16 \grG a8 ] \bar "|"
	\slurb b4 c8 \thrwd d8. [ e16 f8 ] \bar "|"
	\dble e8. [ c16 \grG a8 ] \dblb b4 \grG a8 
}
