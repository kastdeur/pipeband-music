\version "2.18.2"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "config.ily"
\include "notes.side.ily"

\score {
    	\new PipeBandDrumStaff {
        	\global
        	<<
			{
				\repeat volta 2 { \part \line } \break
				\part \line \bar "||" \break
				\line \bar "|."
			}
			{
			 \snareA s8
			 \snareBA
			 \snareBB
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
	\layout {}
}
\score {
    	\new PipeBandDrumStaff {
        	\global
		

		\unfoldRepeats {
			\repeat volta 2 {
				\partial 8 \snareA
			}
			\bar "|."
			\snareBA \bar "||"
			\snareBB

		}

	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
	\midi {
		\tempo 4 = 80
	}
}
