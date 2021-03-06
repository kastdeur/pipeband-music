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
				\part \halfline \halfline \bar "|." \break
				\part \halfline \halfline \bar "|." \break
			}%Format
			{ 
				\pipessecndAA
				\pipessecndAB s4

				\pipessecndBA
				\pipessecndBB s4
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipesSecnd
		composer = \composerPipesSecnd
		arranger = \arrangerPipesSecnd
	}
}
\score {
	\new Staff { \global \pipessecndglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
	
		\partial 4
		\pipessecndAA
		\pipessecndAB 

		\pipessecndBA
		\pipessecndBB 
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipesSecnd
		composer = \composerPipesSecnd
		arranger = \arrangerPipesSecnd
	}
}
