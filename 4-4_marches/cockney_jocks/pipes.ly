\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
				\part \line \break
				\line \bar "||" \break
				
				\part \line \break
				\line \bar "||" \break
				
				\part \line \break
				\line \bar "|."
			}
			{ 
				\pipesA s8

				\pipesB s8

				\pipesC s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 8
		\pipesA
		\pipesB
		\pipesC
	}
	\midi { \confTempo }
}
