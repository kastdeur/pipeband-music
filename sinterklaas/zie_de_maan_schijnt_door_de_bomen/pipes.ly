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
					\measure
					\time 2/4
					\grace {s4} s2
					\time 3/4
					\measure
					\measure
				}
				\break
				\part
				\line \bar "|."
			
			}%Format
			
			\new Voice = "pipes" {
			  \pipesA s4

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
		arranger = \arrangerPipes
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
				\partial 4
			  \pipesA
			  \pipesA

			  \pipesBA
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
