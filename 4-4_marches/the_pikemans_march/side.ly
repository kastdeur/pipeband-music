\version "2.18.2"

\include "config.ily"
\include "notes.side.v1.8.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\sideglobal
        <<
			{\repeat volta 2 { \part \line \break \line} \break
				\part \line \break
				\line \break
				\line \bar "|."
			}
			{
			 \snareAA
			 \snareAB
			 s8

			 \snareBA
			 \snareBB
			 \snareBC
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