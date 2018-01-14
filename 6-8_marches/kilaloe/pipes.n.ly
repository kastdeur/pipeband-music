\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

part = { \partial 4. \grace {s4} s4. }

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
				\part
				\line
				\break
				\line \bar "!"
				\break
				\part
				\line
				\break
				\line \bar ".|:-||"
				\break
				\repeat volta 2 {
					\part
					\line
					\break
					\line
					\measure
				}
			}%Format
			{ 
			r4 \pipesA s4.

			\pipesB s4.

			\pipesC s4.

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
