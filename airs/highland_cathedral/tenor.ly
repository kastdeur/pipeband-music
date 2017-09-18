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
				\repeat volta 2 {
					\line
				} \alternative {
					\measure
					{\measure \measure}
				}
				\bar "|."
				\break
				\line \bar "|."

				\break
				\mark \markup \small "HaFaBra"
				\measure
				\measure
				\bar "|."
		
			}%Format
			
			\new DrumVoice = "tenor" {
				\repeat percent 9 {
					\tenorAA
				}
				\tenorRolls
				\repeat percent 4 \tenorBA

				\tenorHafabraEnd
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
