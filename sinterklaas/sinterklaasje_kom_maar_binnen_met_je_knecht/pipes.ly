\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\line \bar "|." \break
				\halfline
				\repeat volta 2 {
					\partial 4 \grace{s4} s4
					\halfline
				}\bar "|."
			
			}%Format
			
			\new Voice = "pipes" {
				\pipesA

				\pipesBA s4
				\pipesBB s4
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
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
				\pipesA

				\pipesBA
				\pipesBB
				\pipesBB
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
