\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.seconds.ily"

\score {
    \new Staff {
		\global
		\pipessecndglobal
		<<
			\new NullVoice = "format" {
				\part
				\repeat unfold 7 \measure
				\bar "||"
				\break
				\part
				\repeat unfold 7 \measure
				\bar "|."
				\break

				\part
				\line
				\break
				\line
				\bar "|."
			}%Format
			
			\new Voice = "seconds" {
				\pipessecndAA s4
				\pipessecndAB s4

				\pipessecndB s4
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSecnd
		composer = \composerPipessecnd
	}
}
\score {
	\new Staff { \global \pipessecndglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 4 
		\pipessecndAA
		\pipessecndAB

		\pipessecndB
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSecnd
		composer = \composerPipessecnd
	}

}
