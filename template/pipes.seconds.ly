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
			
			}%Format
			
			\new Voice = "seconds" {
			
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSecnd
		composer = \composerPipesSecnd
		arranger = \arrangerPipesSecnd
	}
}
\score {
	\new Staff { \global \pipessecndglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
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
