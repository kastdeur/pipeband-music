\version "2.18.2"

\include "config.ily"
\include "notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\bassglobal
		<<
			{ }
			{ }
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
	}
}
