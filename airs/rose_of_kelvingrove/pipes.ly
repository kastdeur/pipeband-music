\version "2.18.2"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

pbreak = \break
\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\repeat volta 2 {
					\part \halfline
					\pbreak
					\quartline
				} \alternative {
				  \quartline
				  \quartline
				}
				\bar ".|:-||"
				\break
				\repeat volta 4 {
					\part \halfline
					\pbreak
					\quartline
				} \alternative {
					{\quartline \pbreak}
					{ \quartline \measure }
				}
				\bar "|."
			}%Format

			\new Voice = "pipes" {
				\pipesAA
				\pipesABA s4
				\pipesABB s4

				\pipesBA s4
				\pipesBEnding
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
