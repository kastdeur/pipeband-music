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
					\part
					\line
				}
				\break
				\repeat volta 2 {
					\part
					\repeat unfold 3 \measure
					\grace{s1} s4 s8
				} \alternative {
					{\part \halfline}
					{\part \halfline}
				}
			}%Format
			
			\new Voice = "pipes" {
				\pipesA s8

				\pipesBA \pipesBBA s8
				\pipesBA  \pipesBBB s8
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
				\pipesA
				\pipesA

				\pipesBA \pipesBBA
				\pipesBA \pipesBBB
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
