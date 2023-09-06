\version "2.24.1"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
	\new PipeBandDrumStaff {
		\global
		\sideglobal
		\repeat segno 2 {
			\repeat volta 2 {
				\partial 4
				\snareA
			}
			\volta 2 \fine

			\volta 1 {
			  \allowBreak
			  \break
			  \snareBA
			  \section
			}
		}
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
