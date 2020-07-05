\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global

		\repeat volta 2 { \snareA }
		\break
		\repeat volta 2 { \snareB }
		\break
		\repeat volta 2 { \snareCA }
		\alternative {
			\snareCBA
			\snareCBB
		}
		\bar "|."
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
