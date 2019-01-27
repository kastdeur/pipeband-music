\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.hmpd.ily"


\score {
    \new PipeBandDrumStaff {
        \global
        \sideglobal
		<<
			{
				\repeat unfold 4 {
					\repeat volta 2 { \halfline \break \halfline } \break
				}
			}
			{
				\snareA
				\snareB
				\snareC
				\snareD
			}
		>>
	}
	\header {
		title = \markup \column { \title \smaller "Holland Massed P&D" }
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
