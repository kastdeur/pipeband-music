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
					\repeat unfold 2 { \line \line \break }
				}
			}%Format
			\new DrumVoice {
				\bassA
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
