\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\bagpipeKey
		<<
			{
				\repeat volta 2 {
					\part \line
				}
				\break
				\repeat volta 2 {
					\part s2*3 s4 s8
				}	
				\alternative {
					{s8 \halfline}
					{s8 \halfline}
				}
	
				\bar "|."
			}
			{
				\pipesA s8

				\pipesB
				\pipesBA s8
				\pipesBB
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
