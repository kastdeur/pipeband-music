\version "2.24.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
			\unfoldRepeats \new DrumVoice = "side" {
				\sideglobal
				\snareA
				\break
				\section
				\snareB
				\fine
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
