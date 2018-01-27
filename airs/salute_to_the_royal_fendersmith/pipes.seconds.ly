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
			  \part \line \bar "||"
			  \break
			  \line \bar "|."
			
			}%Format
			
			\new Voice = "seconds" {
			  \pipessecndAA
			  \pipessecndAB

			  \pipessecndBA
			  \pipessecndBB
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
		\partial 4.
		\pipessecndAA
		\pipessecndAB

		\pipessecndBA
		\pipessecndBB
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
