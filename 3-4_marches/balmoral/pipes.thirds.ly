\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.thirds.ily"

\score {
    \new Staff {
		\global
		\pipesthrdglobal
		<<
			{
				\repeat volta 2 { \line }
				\break
				\repeat volta 2 { \line }
			}
			{
				\pipesthrdA

				\pipesthrdB
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipesThrd
		composer = \composerPipesThrd
	}
}
\score {
	\new Staff { \global \pipesthrdglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\repeat unfold 2 {
			\pipesthrdA
		}
		\repeat unfold 2 {
			\pipesthrdB
		}
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentThrd
		composer = \composerPipesthrd
		arranger = \arrangerPipesthrd
	}

}
