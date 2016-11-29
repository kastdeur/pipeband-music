\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
				\repeat volta 2 { 
					\part \line \break
					\line \bar "|." \break
					}
				\repeat volta 2 { 
					\part \line \break
					\line \bar "|." \break
					}
			}
			{
				\pipesAA
				\pipesAB s4

				\pipesBA
				\pipesBB s4
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
		\partial 4 
		\repeat unfold 2 { \pipesAA \pipesAB }
		\repeat unfold 2 { \pipesBA \pipesBB }
	}
	\midi { \confTempo }
}
