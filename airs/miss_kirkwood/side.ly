\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\repeat volta 2 {\line \break}
				\repeat volta 2 {\line \break}
			}
			{
				\snareA
				\snareB
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
