\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		\repeat volta 2 {
			\partial 4 r8
			\snareA s4
		}
		\break
		\partial 4
		\snareBA
		\snareBB
		\fine
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
