\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal

		\partial 8
		\repeat volta 2 {
			\pipesAA
			\pipesAB
		}
		\break

		\repeat volta 2 {
			\pipesBA
			\pipesBB
		}
		\break

		\repeat volta 2 {
			\pipesCA
			\pipesCB
		}
		\break

		\repeat volta 2 {
			\pipesDA
		} \alternative {
			{ \pipesDBA }
			{ \pipesDBB }
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
	\unfoldRepeats \new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 8
		\repeat volta 2 {
			\pipesAA
			\pipesAB
		}
		\repeat volta 2 {
			\pipesBA
			\pipesBB
		}
		\repeat volta 2 {
			\pipesCA
			\pipesCB
		}
		\repeat volta 2 {
			\pipesDA
		} \alternative {
			{ \pipesDBA }
			{ \pipesDBB }
		}
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
