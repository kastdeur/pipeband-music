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
					\halfline
					\repeat unfold 3 {
						\measure
					}
				} \alternative {
				  	\measure
					\measure
				}\bar "|."
			}%Format
			
			\new Voice = "pipes" {
				\pipesA 
				\pipesAendA s8
				\pipesAendB s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
				\partial 8
				\pipesA 
				\pipesAendA
				\pipesA 
				\pipesAendB
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
