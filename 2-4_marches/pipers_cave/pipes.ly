\version "2.18.2"

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
					\part \partspacer \line
				}
				\break
				\repeat volta 2 {
					\part \partspacer s2*3 s4 s8
				}
				\alternative {
					{\partspacer | \halfline}
					{\partspacer | \halfline}
				}

				\bar "|."
			}%Format

			\new Voice = "pipes" {
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
		arranger = \arrangerPipes
	}
}
\score {
	\unfoldRepeats {\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\repeat volta 2 {
			\part \pipesA
		}

		\repeat volta 2 {
			\part \pipesB
		} \alternative {
			\pipesBA
			\pipesBB
		}
	} }
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
