\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    	\new PipeBandDrumStaff {
        	\global
			\sideglobal
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
