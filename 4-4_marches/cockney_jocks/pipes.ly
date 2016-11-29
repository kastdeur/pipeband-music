\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
				\line \break
				\line \break
				
				\line \break
				\line \break
				
				\line \break
				\line \break
			}
			{ 
				\pipesA

				\pipesB

				\pipesC
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
		\pipesA
		\pipesB
		\pipesC
	}
	\midi { \confTempo }
}
