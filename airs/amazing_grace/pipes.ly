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
			  \repeat volta 2 {
				\part
				\line	\break
				\line	\break
				\line	\break
				\halfline
			  }
			  \alternative {
				{\halfline}
				{\halfline}
			  }
			  \bar "|."
			}%Format
			{ 
				\pipesA
				\pipesAendA s4
				\pipesAendB s4
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
		\pipesAendA

		\pipesA
		\pipesAendA
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
