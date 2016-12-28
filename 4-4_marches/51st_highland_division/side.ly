\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
					\repeat volta 2 { \part \halfline \break}
						\alternative { {\halfline} {\halfline } }
						\bar "|." \break
					\part \line \bar "||" \break
					\part \line \bar "|." \break
			}
			{
					s8 \snareA
						\snareAA r8 s8
						\snareAB r8 s8

					 s8 \snareB r8 s8
					 s8 \snareA \snareAB r8
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
