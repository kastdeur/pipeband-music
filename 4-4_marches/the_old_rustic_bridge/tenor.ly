\version "2.24.1"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

mBreak = {\break}
\score {
	\new PipeBandDrumStaff {
		\global
		\tenorglobal
		\partial 4 \drummode { g4 } |
		\repeat segno 2 {
			\repeat volta 2 {
				\tenorAA
				\alternative {
					{ \tenorABA r4 }
					{ \tenorABB r4 }
				}
			}
			\volta 2 {\fine}
			\volta 1 {
				\allowBreak
				\mBreak
				\section
				\tenorBA
				\section
			}
		}
		
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
	}
}
