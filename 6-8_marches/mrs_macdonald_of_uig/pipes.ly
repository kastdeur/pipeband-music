\version "2.24.1"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

hbreak = {}
\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				% \line
				\repeat volta 2 {
					\part
					\halfline
					\hbreak
					\halfline
				}
				\break
				\section
				\repeat volta 2 {
					\halfline
					\alternative {
						\halfline
						\halfline
					}
				}
				\break
				\section
				\repeat volta 2 {
					\partial 4 s4
					\halfline
					\hbreak
					\halfline
				}
				\break
				\section
				\repeat volta 2 {
					\part \halfline
					\alternative {
						\halfline
						\halfline
					}
				}
			}%Format
			\new Voice = "pipes" {
				\pipesA s8

				\pipesBA
				\pipesBBA
				\pipesBBB s8

				\pipesC s8

				\pipesDA
				\pipesDBA s8
				\pipesDBB s8
			}%Pipes
		>>
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 8
		\pipesA \pipesA a8

		\pipesBA \pipesBBA
		\pipesBA \pipesBBB

		\partial 4
		\pipesC 
		\partial 4 
		\pipesC

		\pipesDA \pipesDBA
		\pipesDA \pipesDBB
	}
	\midi { \confTempo }
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
