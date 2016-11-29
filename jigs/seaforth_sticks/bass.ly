\version "2.18.2"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "config.ily"
\include "notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\bassglobal
		<<
			{
				\mark "Intro"
				\repeat volta 2 {
					\halfline
					\halfline
				}
				\break
				\mark \default
				\repeat volta 2 {
					\line
				}
				\break
				\repeat unfold 7 {
					\mark \default
					\repeat volta 2 {
						\line
					}
					\break
				}
			}%Format
			{
				\bassIntro
				\bassIntro
	
				\bassA s8
				\bassB s8
				\bassC s8
				\bassD s8
				\bassE s8
				\bassF s8
				\bassG s8
				\bassH s8

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
