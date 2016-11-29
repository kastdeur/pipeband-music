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
				\repeat volta 2 { \line }
				\break
				\repeat volta 2 { \halfline }
				\alternative {
					{\halfline}
					{\halfline}
				}
				\bar "|."
				%\line \bar "||" \break
				%\line \bar "|."
			}
			{
			 \snareAA
			 \snareAB

			 \snareBA
			 \snareBB
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
