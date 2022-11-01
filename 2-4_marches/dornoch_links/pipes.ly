\version "2.22.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

pbreak = { \break }

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\repeat volta 2 {
					\part
					\halfline
					\pbreak
					\halfline
				}
				\break
				\repeat volta 2 {
					\part
					\halfline
					\pbreak

					\measure
					\set Score.repeatCommands = #'((volta "1"))
						\measure \bar "||"
					\set Score.repeatCommands = #'((volta "2"))
						\measure
					\set Score.repeatCommands = #'((volta #f))
					\measure
					\measure
				}
			}%Format
			\new Voice = "pipes" {
				\pipesA s8

				\pipesB s8
			}%Pipes
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
		\repeat unfold 2 { \pipesA }

		\keepWithTag #'voltaI \pipesB
		\keepWithTag #'voltaII \pipesB
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
