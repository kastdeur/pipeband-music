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
				\repeat volta 2 {
					\part
					\line
				}
				\break
				\repeat volta 2 {
					\part
					\line
				}
			}%Format
			
			\new DrumVoice = "side" {
				\sidePI
				\sideMidII
				\sidePI
				\sideEndII s8
				
				\sidePII
				\sideMidII
				\sidePI
				\sideEndII s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = #(string-append instrumentSide " 2")
		composer = \composerSide
		arranger = \arrangerSide
	}
}
