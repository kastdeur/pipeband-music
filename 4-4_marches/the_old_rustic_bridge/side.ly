\version "2.24.1"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
	\new PipeBandDrumStaff {
		\global
		\sideglobal
		\partial 4 \snareAupbeatA
		\repeat segno 2 {
			\repeat volta 2 {
				\snareA
				\volta 2 \fine
				\alternative {
					\volta 1 { r8 \snareAupbeatB }
				}
			}

			\volta 1 {
				\allowBreak
				\break
				\section
				\partial 4
				r8 \snareBA
			}
		}
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
