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
				\partial 4 s4
				\line \break
				\line \break
			}
			}%Format
			{
				\pipesA
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
		\repeat unfold 2 {
			\pipesA
		}
	}
	\midi { \confTempo }
}
