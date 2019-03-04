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
				\partial 4 \grace { s4 } s4
				\repeat volta 2 {
					\repeat unfold 7 {
						\measure
					}
					\grace { s4. } s4.
				} \alternative {
					{ \grace { s4. } s4. }
					{ \grace { s4. } s4. }
				}
				\break

				\partial 8 \grace { s4 } s8
				\repeat volta 2 {
					\repeat unfold 7 {
						\measure
					}
					\grace { s4. } s4.
				} \alternative {
					{ \grace { s4. } s4. }
					{ \grace { s4. } s4. }
				}
				\break

				\partial 4 \grace { s4 } s4
				\repeat volta 2 {
					\repeat unfold 7 {
						\measure
					}
					\grace { s4. } s4.
				} \alternative {
					{ \grace { s4. } s4. }
					{ \grace { s4. } s4. }
				}
				\break

				\repeat volta 2 {
					\partial 8 \grace { s4 } s8
					\halfline
					\break
					\halfline
				}

			}%Format

			\new Voice = "pipes" {
				\pipesA
				\pipesABA
				\pipesABB s8

				\pipesB
				\pipesBBA
				\pipesBBB s4

				\pipesC
				\pipesCBA
				\pipesCBB s8

				\pipesD s8
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
