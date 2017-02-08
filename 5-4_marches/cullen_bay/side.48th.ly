\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.48th.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        \sideglobal
		<<
			{
				\repeat unfold 2 {
					\repeat volta 1 { \line } \break
				}
			}
			{
				\snareA
				\snareB
			}
		>>
	}
	\header {
		title = \markup \column { \title \normalsize "48th HIGHRS" }
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
