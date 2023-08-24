\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

pBreak = {\break}
\score {
    \new PipeBandDrumStaff {
	\global
	\tenorglobal
	<<
			{
				\halfline
				\pBreak
				\halfline
				\section
				\halfline
				\pBreak
				\halfline
				\fine
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
