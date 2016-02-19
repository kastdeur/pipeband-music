\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

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
					\part \halfline
				}	
				\alternative {
					{\halfline}
					{\halfline}
				}
	
				\bar "|."
			}
			{
				\pipesA s8
				
				\pipesB
				\pipesBA s8
				\pipesBB
			}		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
