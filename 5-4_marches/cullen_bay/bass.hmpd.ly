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
		title = \title
		band = "Holland Massed Pipes and Drums"
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
	}
}
