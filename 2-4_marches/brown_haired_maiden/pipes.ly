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
					\line
				}
				\break
				\repeat volta 2 {
					\halfline
				}	
				\alternative {
					{\halfline}
					{\halfline}
				}
	
				\bar "|."
			}
			{ 
			\pipesA

			\pipesB
			\pipesBA
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
