\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
		\global
		<<
			{\repeat volta 2 {\line}\break\repeat volta 2 {\line}\break}
			{\bassA \bassB}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
	}
}
