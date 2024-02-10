\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        \sideglobal

		\repeat volta 2 { \snareA } \break
		\repeat volta 2 { \snareB } \break
		\repeat volta 2 { \snareC } \break
		\repeat volta 2 { \snareD } \break
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
