\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

pbreak = {}
\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		\new DrumVoice = "side" {
			\repeat volta 2 {
				\partial 8 \snareA s8
			}
			\break
			\repeat volta 2 {
				\partial 8 \snareB s8
			}
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
