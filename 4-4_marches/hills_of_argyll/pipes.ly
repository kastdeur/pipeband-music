\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{ 
				\repeat volta 2 {
					\part
					\halfline 
					\break
					\halfline
					\break
				}
				\repeat volta 2 {
					\part
					\halfline \break
				}
				\alternative {
					{
					\part \halfline \break
					}
					{
					\part \halfline \break
					}
				}
			
			}%Format
			{ 
				\pipesAA
				\pipesAB s4

				\pipesBA s4
				\pipesBBA s4
				\pipesBBB s4
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
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune

		\partial 4
		\repeat unfold 2 {
			\pipesAA
			\pipesAB
		}

		\partial 4
			\pipesBA
			\pipesBBA

			\pipesBA
			\pipesBBA
	}
	\midi { \confTempo }
}
