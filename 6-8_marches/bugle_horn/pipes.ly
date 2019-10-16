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
					\part \line
				}
				\break
				\repeat volta 2 {
					\part 
					s2.*3 | s4.
				} \alternative {
					{ \grace {s1} s4. | \halfline }
					{ \grace {s1} s4. | \halfline }
				}
				\bar "|."
			}%Format
			\new Voice = "pipes" {
				\pipesA s8

				\pipesBA
				\pipesBBA s8
				\pipesBBB
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
	\unfoldRepeats \new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune

		\repeat volta 2 {
			\partial 8 \pipesA
		}
		\repeat volta 2 {
			\pipesBA
		} \alternative {
			\pipesBBA
			\pipesBBB
		}
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
