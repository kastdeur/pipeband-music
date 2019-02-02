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
					\repeat volta 2 { \line } \break
			}
			{
				\snareA
			}
		>>
	}
	\header {
		title = \markup { \title "(Canadian Memorial Pipes and Drums)" }
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
