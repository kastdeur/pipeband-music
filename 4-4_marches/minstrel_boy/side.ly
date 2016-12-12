\version "2.18.2"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
        <<
			{
				\partial 4 s4 |
				\line \break
				\line \break \bar "|."

				\partial 4 s4 |
				\line \break
				\line \break \bar "|."
			}
			{
			 r8 \snareAA
			 \snareAB s4

			 \snareBA
			 \snareAB 
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
