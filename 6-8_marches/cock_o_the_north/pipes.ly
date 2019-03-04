\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
			\repeat volta 2 {
				\partial 8
				\pipesA s8
			}
			\break
			
			\repeat volta 2 {
				\partial 8
				\pipesBA
			} \alternative {
				{ \pipesBBA s8 }
				{ \pipesBBB s8 }
			}
			\bar ".|:-||"
			\break
			
			\repeat volta 2 {
				\partial 8
				\pipesC s8

			}
			\break
			
			\repeat volta 2 {
				\partial 8
				\pipesDA
			} \alternative {
				{ \pipesDBA s8 }
				{ \pipesBBB s8 }
			}
			\bar "|."
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
		\pipesA

		\pipesBA
		\pipesBBA
		\pipesBA
		\pipesBBB
		
		\pipesC
		\pipesC

		\pipesDA
		\pipesDBA
		\pipesDA
		\pipesBBB
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
