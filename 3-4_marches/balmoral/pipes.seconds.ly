\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.seconds.ily"

\score {
    \new Staff {
		\global
		\pipessecndglobal
		<<
			{
				\repeat volta 2 { \line }
				\break
				\repeat volta 2 { \line }
			}
			{
				\pipessecndA

				\pipessecndB
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipesSecnd
		composer = \composerPipesSecnd
	}
}
\score {
	\new Staff { \global \pipessecndglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\repeat unfold 2 {
			\pipessecndA
		}
		\repeat unfold 2 {
			\pipessecndB
		}
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSecnd
		composer = \composerPipesSecnd
		arranger = \arrangerPipesSecnd
	}

}
