\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "../../standards/standards.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
		\new DrumVoice = "tenor" {
				\repeat volta 2 {
					\tenorFourfoursOneA
					\bar "||"
					\break
					\tenorFourfoursOneB
				}
		}
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
	}
}
