\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.seconds.ily"

\score {
    \new Staff {
		\global
		<<
			\new NullVoice = "format" {
				% \line	
			}%Format
			\new Voice = "seconds" {
				\pipessecndglobal
				\repeat unfold 8 { \pipessecndA | \break } % Remove me
			}%Pipes
		>>
	}
	\header {
		title = \title
		subtitle = \subtitle
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
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentSecnd
		composer = \composerPipesSecnd
		arranger = \arrangerPipesSecnd
	}

}
