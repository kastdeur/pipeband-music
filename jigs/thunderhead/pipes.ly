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
					\halfline
					\repeat unfold 3 { \measure }
					s4.
				} \alternative {
					{ \grace {s1} s4. }
					{ \grace {s1} s4. }
				}
				\break

				\repeat volta 2 {
					\halfline
					\halfline
				}
			}%Format
			\new Voice = "pipes" {
				\pipesAA
				\pipesABA
				\pipesABB

				\pipesB
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
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune

		\pipesAA \pipesABA
		\pipesAA \pipesABB

		\pipesB
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
