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
				\repeat volta 2 { \part \halfline \break \halfline }
				\break
				\repeat volta 2 { \part \halfline \break \halfline }
			}
			{
			\snareA s8
			\snareB s8
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
\score {
	\new PipeBandDrumStaff {
		\global
		\sideglobal
			\partial 8
			\snareA
			\snareA

			\snareB
			\snareB
	}
	\midi{
		\confTempo
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}	
