\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
				\repeat volta 2 { \line }
				\break
				\repeat volta 2 { \line }
				\break
				\repeat volta 2 { \line }
			}
			{ 
				\pipesA

				\pipesB

				\pipesC
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
