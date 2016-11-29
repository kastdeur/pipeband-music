\version "2.18.2"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\repeat unfold 8 {
					\mark \default
					\repeat volta 2 {
						\part
						\line
					}
					\break
				}
			}
			{
				r8 \snareA
				\snareB 
				\snareC 
				\snareD 
				\snareE 
				\snareF 
				\snareG 
				\snareH 
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
