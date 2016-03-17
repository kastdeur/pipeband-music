\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{ }%Format
			{ }
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
	}
	\midi { \confTempo }
}
