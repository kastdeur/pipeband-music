\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.hmpd.ily"

\score {
    \new PipeBandDrumStaff {
		\global
		\repeat unfold 4 {
			<<
				{ \repeat volta 2 { \line } }
				{ \bassA }
			>> \break
    		}
	}
	\header {
		title = \markup \column { \title \smaller "Holland Massed P&D" }
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
	}
}
