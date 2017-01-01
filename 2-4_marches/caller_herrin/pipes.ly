\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\bagpipeKey
		<<
			{
				\repeat volta 2 {
					\part \halfline
				}\break

				\part \halfline \line

				\repeat volta 2 {
					\halfline s2 s1
				}
				\alternative {
					{ s1 }
					{s1}
				}
			}
			{
			\pipesA s8

			\pipesB

			\pipesC
			\pipesCA
			\pipesCB
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
