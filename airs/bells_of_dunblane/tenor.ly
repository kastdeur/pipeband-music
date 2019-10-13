\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
	\global
	\tenorglobal
	<<
			\new NullVoice = "format" {
					\line 
					% \bar "||"
					\break
					\repeat volta 2 {
						\line
			 		}
			 		%\bar "||"
			 		\break
			 		\line
			 		\bar "|."
			}%Format
			
			\new DrumVoice = "tenor" {
				\repeat percent 4 {
					\tenorAA
				}

				\repeat percent 4 {
					\tenorAA
				}

				\repeat percent 4 {
					\tenorAA
				}
			}
	>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
		arranger = \arrangerTenor
	}
}
