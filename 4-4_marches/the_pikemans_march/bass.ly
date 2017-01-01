\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\bassglobal
		<<
			{\repeat volta 2 { \line \break \line} 
				\break
				\line \break
				\line \break
				\line \bar "|."
			}
			{
				\bassAA
				\bassAB
			
				\bassBA 
				\bassBB
				\bassBB
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
