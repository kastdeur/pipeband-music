\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
			\repeat volta 2 { \part \line }
			\repeat volta 2 { \line }
			}
			{
			\pipesA s4

			\pipesB s4
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
		\pipesA
		
		\pipesB
		\pipesB
	}
	\midi { \confTempo }
}
