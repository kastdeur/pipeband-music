\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		<<
			\new NullVoice = "format" {
				\line
				\bar "||" \break

				\line
				\bar "|."
			}%Format
			
			\new DrumVoice = "side" {
				\snareA

				\snareB
			}
		>>
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
