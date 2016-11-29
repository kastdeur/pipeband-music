\version "2.18.2"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "config.ily"
\include "notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
		\global

		\repeat volta 2 { \bassA } \break
		\bassBA \break
		\bassBB \bar "|."
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
	}
}
