\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{ \repeat volta 2 {\line \break}
			  \repeat volta 2 {\part \halfline \break}
				\alternative { {\halfline \break} {\halfline \break } }
			}
			{ \snareAA \snareAB s8
				\snareBA
				\snareBBA s8
				\snareAB s8
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
