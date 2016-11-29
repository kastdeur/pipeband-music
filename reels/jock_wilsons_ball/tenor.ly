\version "2.18.2"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "config.ily"
\include "notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
	\global
	\tenorglobal
	<<
			{
				\line 
				\bar "|."
				\break
				\line
				\bar "|."
			}%Format
			{
			\tenorA

			\tenorB
			}
	>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
	}
	\midi { \confTempo }
	\layout {}
}
