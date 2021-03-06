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
				\repeat unfold 4 {
				\repeat volta 2 {
					\line
				}\break
				}
			}%Format
			{
				\pipesA
				\pipesB
				\pipesC
				\pipesD
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
	\new Staff {
		\global
		\pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%% Tune

		\pipesA
		\pipesB
		\pipesC
		\pipesD
	}
	\midi { \confTempo }
}
