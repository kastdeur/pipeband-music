\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
			\repeat 2 volta { \part \line }
			\repeat 2 volta { \line }
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

		\repeat volta 2 {
	}
	\midi { \confTempo }
}
