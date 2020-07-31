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
					\part
					\line
				}
				\break
				\repeat volta 2 {
					\part
					\halfline
					\bar ""
				} \alternative {
					{ \part \halfline }
					{ \part \halfline }
				}
				\bar "|."
			}%Format

			\new Voice = "pipes" {
				\pipesA s8

				\pipesBA s8
				\pipesBBA s8
				\pipesBBB
			}
		>>
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 8
		\repeat unfold 2 {
			\pipesA
		}
		\break
		\repeat unfold 2 {
			\pipesBA
		} \alternative {
			\pipesBBA
			\pipesBBB
		}

	}
	\midi { \confTempo }
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
