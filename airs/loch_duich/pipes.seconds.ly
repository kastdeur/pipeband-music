\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.seconds.ily"

\score {
    \new Staff {
		\global
		\pipessecndglobal
		<<
			{ 
				\repeat unfold 3 {
				  \repeat volta 2 {
					\part \line
					\break
				  }
				}
			}%Format
			{ 
				\pipessecndA s8

				\pipessecndB s8

				\pipessecndC s8
			}
		  >>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSecnd
		composer = \composerPipesSecnd
	}
}
\score {
	\new Staff { \global \pipessecndglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
			\partial 8
				\pipessecndA
				\pipessecndA

				\pipessecndB
				\pipessecndB

				\pipessecndC
				\pipessecndC

	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSecnd
		composer = \composerPipesSecnd
	}

}
