\version "2.18.2"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\sideglobal
		<<
			{ 
				\partial 16 s16
				\halfline
				\break
				\halfline
				\bar "|."

				\break
				\partial 16 s16
				\halfline
				\break
				\halfline
				\bar "|."
			}%Format
			{
			\sideA s16

			\sideB
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
