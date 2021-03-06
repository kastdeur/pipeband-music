\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		\repeat volta 2 {
			\snareAA
			\snareAB
		}
		\break
		\repeat volta 2 {
			\snareBA
		}
		\alternative {
			{\snareBB}
			{\removeWithTag #'tutti { \snareAB } }
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