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
				\repeat volta 2 {
				  	\part
					\line
				}
				\break

				\repeat volta 2 {
					\part
					\line 
				}
				\break

				\part
				\line
				\bar "|."
			}%Format
			
			\new Voice = "seconds" {
				\pipessecndA s4

				\pipessecndB s4
				
				\pipessecndC s4
			
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
			\partial 4
				\pipessecndA \pipessecndA

				\pipessecndB	\pipessecndB
				
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
