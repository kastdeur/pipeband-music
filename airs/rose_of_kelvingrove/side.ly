\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		
		\repeat volta 2 {
			\unfoldRepeats 
			\snareA
		}
		\break
		\repeat volta 2 {
			\unfoldRepeats 
			\snareB
		}
		\break
		\repeat volta 2 {
			\unfoldRepeats 
			\snareC
		}
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
