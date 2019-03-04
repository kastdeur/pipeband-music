\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		\repeat volta 2 { \partial 16 \pipesA }
		\break
	 	\repeat volta 2 { \partial 16 \pipesB }
		\break
	 	\repeat volta 2 { \partial 16 \pipesC }
		\break
	 	\repeat volta 2 { \partial 16 \pipesD }
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 16
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
