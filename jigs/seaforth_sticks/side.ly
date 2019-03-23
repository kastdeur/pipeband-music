\version "2.18.2"

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
				r8 \snareA s8
				\snareB s8
				\snareC s8
				\snareD s8
				\snareE s8
				\snareF s8
				\snareG s8
				\snareH s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
