\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{ }
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
