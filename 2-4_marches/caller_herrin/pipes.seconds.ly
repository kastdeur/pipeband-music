\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "config.ily"
\include "notes.pipes.seconds.ily"

\score {
    \new Staff {
		\global
		\bagpipeKey
		<<
			{
				\repeat volta 2 {
					\part \line
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
			\pipesSecA s8

			\pipesSecB

			\pipesSecC
			\pipesSecCA
			\pipesSecCB
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipesSec
	}
}
