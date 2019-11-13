\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		<<
			{
				\repeat volta 2 {
					\part \halfline
					\halfline
				}
				\break

				\part \halfline
				\break
				\line
				\bar "|."
			}
			{
			\pipesA s8

			\pipesB

			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
