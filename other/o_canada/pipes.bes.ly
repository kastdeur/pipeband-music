\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \transpose f d \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\repeat unfold 7 {
				  	\repeat unfold 4 \measure
					\break
				}
				\bar "|."
			}%Format
			
			\new Voice = "pipes" {
				\pipesA
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
