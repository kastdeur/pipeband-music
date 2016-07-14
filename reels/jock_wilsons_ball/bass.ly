\version "2.18.2"

\include "config.ily"
\include "notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\bassglobal
		<<
			{
				\line 
				\bar "|."
				\break
				\line
				\bar "|."
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
