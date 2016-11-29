\version "2.18.2"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\sideglobal
		<<
			{
				\part \line  
				\line \bar "|."
				\break
				\bar ".|"
				\line
				\line \bar "|."
			}%Format
			{ 
				s8 \snareAA r8
				\snareAB

				\snareBA r8
				\snareBB r8 s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
