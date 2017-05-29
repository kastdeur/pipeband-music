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
				\repeat volta 2 {
					\halfline
					%\break
					\halfline
				}
				\break

				\repeat volta 2 {
					\halfline
					%\break
				}\alternative{
					{\halfline}
					{\halfline}
				}\bar "|."
				\break

				\repeat volta 2 {
					\halfline
					%\break
					\halfline
				}
				\break

				\repeat volta 2 {
					\halfline
					%\break
				}\alternative{
					{\halfline}
					{\halfline}
				}\bar "|."
			}%Format
			{
				\pipesAA
				\pipesAB

				\pipesBA
				\pipesBBA
				\pipesBBB

				\pipesCA
				\pipesCB

				\pipesDA
				\pipesDBA
				\pipesDBB
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
		\pipesAA
		\pipesAB
		\pipesAA
		\pipesAB

		\pipesBA
		\pipesBBA
		\pipesBA
		\pipesBBB

		\pipesCA
		\pipesCB
		\pipesCA
		\pipesCB

		\pipesDA
		\pipesDBA
		\pipesDA
		\pipesDBB
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
