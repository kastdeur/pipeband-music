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
					\part \line
				}
				\break
				\part \line \bar "||"
				\break
				\line \bar "|."
			}%Format
			\new DrumVoice { 
				r8 \bassA s8
				\bassB
				\bassA s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
	}
}
