\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

% Force a Break between the Voltas
mbreak = { \break }

\score {
    \new Staff {
		\global
		\pipeglobal

		\repeat volta 2 {
			\partial 8
			\pipesAA
			\pipesAB
		}
		\break

		\repeat volta 2 {
			\partial 8
			\pipesBA
		} \alternative {
			{
				\mbreak
				\pipesBBA
			}
			{
				\mbreak
				\pipesBBB
			}
		}
		\bar ".|:-||"
		\break

		\repeat volta 2 {
			\partial 8
			\pipesCA
		} \alternative {
			{
				\mbreak
				\pipesCBA
			}
			{
				\mbreak
				\pipesCBB
			}
		}
		\bar ".|:-||"
		\break

		\repeat volta 2 {
			\partial 8
			\pipesDA
			\pipesDB s8
		}
	}
	\header {
		title = \title
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
		\pipesAA \pipesAB
		\pipesAA \pipesAB

		\pipesBA \pipesBBA
		\pipesBA \pipesBBB

		\pipesCA \pipesCBA
		\pipesCA \pipesCBB

		\pipesDA \pipesDB
		\pipesDA \pipesDB
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
