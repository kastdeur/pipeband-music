\version "2.24.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

mbreak = { \break }
\score {
    \new PipeBandDrumStaff {
        \global
			\unfoldRepeats \new DrumVoice = "side" {
				\sideglobal
				<<
					\snareA
					{ s1*4 \mbreak | \grace{s8} s1}
				>>
				\break
				\section
				<<
					\snareB
					{ s1*4 \mbreak | \grace{s8} s1 }
				>>
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
