\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
	\unfoldRepeats
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		\repeat volta 2 {
			\snareAA
			\alternative {
				\snareABA
				\snareABB
			}
		}
		\section
		\break
		\repeat volta 2 {
			\snareBA
			\alternative {
				\snareBBA
				\snareBBB
			}
		}
		\fine
		\fine
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
