\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \transpose a d {
	  \new Staff {
		\global
		\pipeglobal
		\repeat volta 2 { 
			\partial 4
			\pipesA s4
		}
		\break
		\repeat volta 2 {
			\partial 4
			\pipesB s4
		}
	}
  }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
