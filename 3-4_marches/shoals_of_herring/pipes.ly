\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal

		\repeat volta 2 {
			\pipesA
			\pipesAB
		}
		\break
		\repeat volta 2 {
			\pipesB
		}
		\alternative {
			\pipesBA
			\pipesAB
		}
		\bar "|." 
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
