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
				\repeat volta 2 {
					\part \line
				}

				\break
				%\repeat volta 2 {
				%	\part \halfline
				%}
				%\alternative { 
				%	{\halfline}
				%	{\halfline}
				%}
				\part \line
				\bar "||"
				\break
				\part \line
				\bar "|."
				
			}%Format
			{ 
				\pipessecndA s8

				\pipessecndBA 
				\pipessecndBBA s8

				\pipessecndBA 
				\pipessecndBBB s8
				
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipessecnd
		composer = \composerPipessecnd
	}
}
\score {
	\new Staff { \global \pipessecndglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune

		\partial 8
		\pipessecndA
		\pipessecndA

		\pipessecndBA
		\pipessecndBBA

		\pipessecndBA
		\pipessecndBBB
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipessecnd
		composer = \composerPipessecnd
	}

}
