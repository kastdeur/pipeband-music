\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\sideglobal
        <<
			{
				\repeat volta 2 { \part \halfline \break \halfline } \break
				\part \line \bar "||" \break
				\line
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
}
