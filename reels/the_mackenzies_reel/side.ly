\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\sideglobal
		<<
			{ \repeat volta 2 { \part \line } \break
			  \repeat volta 2 { \line }
			}
			{ 
			  s16. \snareA 
			  \snareB}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}