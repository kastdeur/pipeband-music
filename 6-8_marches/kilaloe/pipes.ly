\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
			\part
			\line
			\break
			\line
			\break
			\line
			\break
			\line \bar "|."
			\break
			\repeat volta 2 {
				\line
				\break
				\line
				\break
				\line
				\break
				\repeat unfold 3 { s1. | }
			}
			\alternative{ { \grace{ s8 } s1.} {s1.} }
			\bar "|."
			}%Format
			{ 
			\pipesA

			\pipesB \pipesBBA
			\pipesB \pipesBBB

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

		\pipesB	\pipesBBA
		\pipesB	\pipesBBB
		
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}