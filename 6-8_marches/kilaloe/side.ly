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
				\break
				
				\part
				\line
				\break
				\line
				\measure
				
				\break
				\part
				\line
				\break
				\line
				\measure
				

			}%Format
			
			\new DrumVoice = "side" {
				\snareA r4 s8

				\snareB r4 s8

				\snareCA r4
				\snareCB r4 s8

				\snareDA r4
				\snareDB r4 s8
			
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
