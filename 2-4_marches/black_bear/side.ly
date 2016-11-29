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
				\repeat volta 2 { \part \halfline \break \halfline } \break
				\part \halfline \break \halfline \bar "||" \break
				\line
			}
			{
			 \snareA s8

			 \snareBA
			 \snareBB
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
