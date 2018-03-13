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
				\part \line \break
				\line \bar "||"
				\break
				\line \break
				\line \bar "|."
			}%Format
			{
				s8 \snareAA
				\snareAB

				\snareBA
				\snareBB s8
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
