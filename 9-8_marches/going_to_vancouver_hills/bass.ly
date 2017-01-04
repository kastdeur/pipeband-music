\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\bassglobal
		<<
			\new NullVoice = "format" {
				\repeat unfold 4 {
					\repeat volta 2 {
						\line
					}
					\break
				}
			}%Format
			
			\new DrumVoice = "bass" {
				\bassA

				\bassB

				\bassC

				\bassD
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
		arranger = \arrangerBass
	}
}
