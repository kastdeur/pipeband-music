\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal

		\repeat volta 2 {
			\partial 16
			\pipesA s16
		}
		\break
		\repeat volta 2 {
			\partial 16
			\pipesBA
		} \alternative {
			{ \pipesBBA }
			{ \pipesBBB s16 }
		}
		\bar "|."
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
		\partial 16
		\pipesA
		\pipesA

		\pipesBA \pipesBBA
		\pipesBA \pipesBBB
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
