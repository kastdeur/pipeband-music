\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
				\repeat volta 2 { \part \line } \break
			
				\part \line \break
				\line \bar "|."
			}
			{
				\pipesA s8

				\pipesBA
				\pipesBB s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
	\midi {
		\tempo 2 = 70
	}
}
