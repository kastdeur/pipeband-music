\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
        <<
			{
			  \repeat volta 2 { \partial 16 s16 \line }
			  \break
			  \repeat volta 2 { \partial 16 s16 \line }
			}
			{
			  \tenorA r8. s16
			  \tenorA r8. s16
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
	}
}
