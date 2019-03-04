\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal

		\repeat volta 2 { \pipesA }
		\break
	 	\repeat volta 2 { \pipesB }
		\break
	 	\repeat volta 2 { \pipesC }
		\break
	 	\repeat volta 2 { \pipesD }
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
		\pipesA

		\pipesB
		\pipesB

		\pipesC
		\pipesC

		\pipesD
		\pipesD
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
