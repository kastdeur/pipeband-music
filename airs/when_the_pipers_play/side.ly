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
				\partial 4 s4
				\repeat volta 2 {
					\halfline
					\measure
					\measure
					\measure
				}
				\alternative {
					{ \measure }
					{ \measure }
				}
				\bar "|."
			}%Format

			\new DrumVoice = "side" {
				\snareAA
				\snareAEndingI
				\snareAEndingII
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
