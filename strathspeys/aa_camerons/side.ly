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
			\repeat unfold 2 {
				\line
				\bar "||"
				\break
				\line
				\bar "|."
				\break
				}
			\bar "|."
			}
			{
			\snareAA
			\snareABA
			\snareAA
			\snareABB


			\snareBA
			\snareBBA
			\snareBA
			\snareBBB
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
