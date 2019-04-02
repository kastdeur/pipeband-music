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
				\repeat volta 2 { \line \line }
				\break
				\repeat volta 2 { \line \line s2. }
			}%Format
			
			\new DrumVoice = "tenor" {
				\tenorAA r4. |
				\tenorAB r4. |

				\tenorBA r4. |
				\tenorBB r4. |
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
