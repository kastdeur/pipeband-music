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
				\repeat volta 2 { \part \line \break \line }
				\break
				\repeat volta 2 { \part \line \break \line }
			}
			{
			 \snareA s4

			 \snareB s4
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
