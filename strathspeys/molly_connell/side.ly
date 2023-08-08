\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal

		\mark \markup { \normalsize {Intro } }
		\intro
		\break


		\mark \markup { \normalsize {Tune } }
		\repeat volta 2 { \snareA s8 }
		\snareBA s8
		\snareBB s8
		\bar "|."
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
