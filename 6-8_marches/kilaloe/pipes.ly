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
			\part
			\line
			\break
			\line \bar "|."
			\break
			\line
			\break
			\line \bar "|."
			\break
			\repeat volta 2 {
				\line
				\break
				\line
				s4.
			}
			\alternative{ {\grace{s4} s4.} {\grace{s4} s4.} }
			\bar "|."
			}%Format
			{ 
			\pipesA

			\pipesB

			\pipesC \pipesCBA \pipesCBB

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

		\pipesC	\pipesC	\pipesCBB
		
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
