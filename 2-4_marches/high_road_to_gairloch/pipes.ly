\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		\set Staff.midiInstrument = #"bagpipe"

				\pipesA
				\bar "||"
				\pipesB
				\bar "|."
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
	\layout { }
	\midi { \confTempo }
}
