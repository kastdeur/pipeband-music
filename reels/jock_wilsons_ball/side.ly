\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\sideglobal
		<<
			{ 
				\partial 16 s16
				\line
				\bar "||"
				\break

				\line
				\bar "|."
			}%Format
			{
			\sideA

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
