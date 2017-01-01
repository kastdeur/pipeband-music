\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\sideglobal
		<<
			{ 
			  \line
			  \bar "|."
			  \break
			  \line
			  \bar "|."
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
