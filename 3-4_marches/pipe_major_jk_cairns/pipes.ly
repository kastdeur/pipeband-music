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
				\repeat volta 2 {
					\halfline
				} \alternative {
					\halfline
					\halfline
				}\bar "|."

				\break
				\line \bar "||"
				\break
				\line \bar "|."
			}%Format
			
			\new Voice = "pipes" {
				\pipesAA
				\pipesABA
				\pipesABB

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
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
				\pipesAA
				\pipesABA
				\pipesAA
				\pipesABB

				\pipesBA
				\pipesBB
		}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
