\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
		<<
			\new NullVoice = "format" {
				% \line
			}%Format
			\new DrumVoice = "tenor" {
				\tenorglobal
				\repeat unfold 8 { \tenorA | \break } % Remove me
			}%Tenor
		>>
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
		arranger = \arrangerTenor
	}
}
