\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
			  	\repeat volta 2 {
					\part \line
			  	}
			  	\break
				\repeat volta 2 {
					\part \line
				}
			}
			{
				\snareA s8
				<<
					{
						\snareB s8
					}
					{
						s8 | s1_\markup { \dynamic {ff} 2nd time through}
					}
				>>
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
