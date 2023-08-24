\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"

pBreak = {\break}
\score {
    \new PipeBandDrumStaff {
        \global
	\bassglobal
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
			\bassA

			\bassB
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
	}
}
