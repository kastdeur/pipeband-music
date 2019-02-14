\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

IIofII = \markup { "2." \text \small" of 2" }
\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\halfline
				\set Score.repeatCommands = #(list (list 'volta IIofII)) 
				\halfline
				\bar ":|."
				\set Score.repeatCommands = #'((volta #f))
				\break
				
				\halfline
				\set Score.repeatCommands = #'((volta "1.")) 
				\halfline
				\bar ":|."
				\set Score.repeatCommands = #'((volta #f)) 
			}%Format
			\new Voice = "pipes" {
				\pipesAA
				\pipesAB

				\pipesBA
				\pipesBBA

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
		\repeat unfold 2 {
			\pipesAA \pipesAB
		}

		\pipesBA \pipesBBA
		\pipesBA \pipesAB
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
