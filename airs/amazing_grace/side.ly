\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\part
				\repeat volta 2{
					\line \break
					\line \break
					\line \break
					\halfline
				}
				\alternative {
					{ \halfline }
					{ \halfline }
				}
				\bar "|."
			}
			{
				\snarePart
				\snareAA
				\snareAB
				\snareAC
				\keepWithTag #'with-volta \snareAD
				\snareADendB
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
