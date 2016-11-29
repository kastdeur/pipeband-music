\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
				\repeat volta 2 {\line}
				\break
				\repeat volta 2 {\halfline}
				\alternative {
					{\halfline}
					{\halfline}
				}
				\bar "|." 
			}
			{
			\pipesA
			\pipesAB
			
			\pipesB
			\pipesBA
			\pipesAB
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
