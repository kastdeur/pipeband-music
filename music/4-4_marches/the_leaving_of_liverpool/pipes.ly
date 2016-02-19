\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"
\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
				\repeat unfold 2 {
					\part
					\line
					\break
					\line
					\break
				}
			
			}
			{
				\pipesAA
				\pipesAB s4 

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
