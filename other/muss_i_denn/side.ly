\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
			\new DrumVoice = "side" {
				\global
				\sideglobal
				\repeat volta 2 {
					\partial 4
					<>\dr \snareAA \fr
				}
				\break

				\partial 4
				\snareBA
				<>\dr \snareAA \fr
				\bar "|."
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
