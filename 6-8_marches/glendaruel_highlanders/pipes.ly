\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\repeat unfold 2 {
					\repeat volta 2 {
						\part
						\line
					}
					\break
					\repeat volta 2 {
						\part
						\repeat unfold 3 {
							\measure
						}
						\grace{s1} s4. s4
					} \alternative {
						{\grace{s1} s8	\halfline}
						{\grace{s1} s8 \halfline}
					}
					\bar "|."
					\break
				}
			}%Format
			
			\new Voice = "pipes" {
				\pipesA s8

				\pipesBA 
				\pipesBBA s8
				\pipesBBB s8

				\pipesC s8

				\pipesDA 
				\pipesDBA s8
				\pipesDBB s8

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
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
			\partial 8
				\pipesA
				\pipesA

				\pipesBA \pipesBBA
				\pipesBA \pipesBBB

				\pipesC
				\pipesC

				\pipesDA \pipesDBA
				\pipesDA \pipesDBB

	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
