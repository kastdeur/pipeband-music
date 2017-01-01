\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.thirds.ily"

\score {
    \new Staff {
		\global
		\pipesthrdglobal
		<<
			{
				\repeat volta 2 { \line }
				\break
				\repeat volta 2 { \line }
			}
			{
				\pipesthrdA

				\pipesthrdB
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipesthrd
		composer = \composerPipesthrd
	}
}
