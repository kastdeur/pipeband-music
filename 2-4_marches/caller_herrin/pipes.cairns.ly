\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

mbreak = {\break}

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\repeat segno 2 {
					\repeat volta 2 {
						\part
						\halfline
						\volta 2 { \segnoMark \default }
						\halfline
						\volta 2 { \fine }
					}
	
					\volta 1 {
						\allowBreak
						\mbreak
						\part
						\halfline
						\halfline
						\bar "||"
					}
				}
			} % Format
			\new Voice = "pipes" {
				\pipesAvI s8

				\removeWithTag #'fine \pipesBvI
			} % Pipes
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipesvI
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 8
		\unfoldRepeats {
			\repeat volta 2 {
				\pipesAvI
			}
			\removeWithTag #'fine \pipesBvI
			\removeWithTag #'fineRemove \pipesAvI
		}

	}
	\midi { \confTempo }
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipesvI
	}
}
