\version "2.24.1"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
	\new PipeBandDrumStaff {
		\global
		\sideglobal
		%\unfoldRepeats
		\repeat segno 2 {
			\repeat volta 2 {
				\partial 8 \snareA
			}
			\volta 2 \fine
			\volta 1 {
				\allowBreak
				\section
				\partial 8 \snareBAhigh
				\section
				\allowBreak
			}
		}
	}
	\header {
		title = #(string-append title " (high)" )
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
