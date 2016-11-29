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
			\new NullVoice = "format" {
				\repeat volta 2 {
				  	\part
					\line
				}
				\break

				\part
				\line 
				\bar "||"
				\line
				\bar "|."
				\break

				\part
				\line
				\bar "||"
				\line
				\bar "|."
			}%Format
			
			\new Voice = "seconds" {
				\pipessecndA s4

				\pipessecndBA	\pipessecndBB s4
				
				\pipessecndCA	\pipessecndCB s4
			
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

				\pipessecndBA	\pipessecndBB
				
				\pipessecndCA	\pipessecndCB
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSecnd
		composer = \composerPipesSecnd
	}

}
