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
					% Refrain
					\repeat unfold 6 {	
						\measure
					}
					\bar "||"
					\break
					% Couplet
					\repeat unfold 4 {
						\measure
					}
					\break
					\repeat unfold 4 {
						\measure
					}
					\measure
					\break
				}
				% Dunno
				\repeat unfold 6 {
				  \measure
				}
				\bar "|."

			}%Format
			
			\new DrumVoice = "side" {
				\snareA
				\snareB

				\snareE
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
