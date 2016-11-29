\version "2.18.2"

\include "bagpipe.ly"

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
					\part \line
				}\break
				\part \line \bar "||" \break
				\line \bar "|."

			}
			{
				\pipesA s8
				\pipesB
				\pipesCA
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
