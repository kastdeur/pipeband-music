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
					\part \halfline
				}
				\alternative {
					{ \halfline }
					{ \halfline }
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
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 8
		\pipesA s8

		\pipesB
		\pipesBA s8
		\pipesBB
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
