\version "2.18.2"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\repeat volta 2 { \partial 8 s8 \line \break \line }
				\repeat volta 2 { \line \break \line }

			}
			{
			 \snareA s8

			 \snareB s8
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
