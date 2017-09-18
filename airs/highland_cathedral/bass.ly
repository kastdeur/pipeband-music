\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\bassglobal
		<<
			\new NullVoice = "format"
			{
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
			\new DrumVoice { 
				\repeat percent 9 \bassAA
				\repeat unfold 2 \bassAA

				\repeat percent 4 { \bassAA \bassAA }

				\bassHafabraEnd
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
