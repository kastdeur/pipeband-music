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
			    \repeat volta 2 {
			        \part
			        \halfline
			        \repeat unfold 3 {
				        \measure
			        }
			        s2
			    }
			    \alternative {
				{ \grace {s4} s4 }
				{ \grace {s4} s2 }
			    }
			    \bar "||"
			    \break

			    \repeat volta 2 {
			        \halfline
			        \repeat unfold 3 {
				        \measure
			        }
			        s2
			    }
			    \alternative {
				{ \grace {s4} s2 }
				{ \grace {s4} s2 }
			    }
			    \bar "|."

			}%Format

			\new Voice = "pipes" {
				\pipesAA
				\pipesABA
				\pipesABB

				\pipesBA
				\pipesBBA
				\pipesBBB
			}
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
		\partial 4
		\repeat volta 2 {
			\pipesAA
		} \alternative {
			\pipesABA
			\pipesABB
		}
		\break
		
		\repeat volta 2 {
			\pipesBA
		} \alternative {
			\pipesBBA
			\pipesBBB
		}

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
