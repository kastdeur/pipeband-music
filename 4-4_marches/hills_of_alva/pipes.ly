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
				\part \halfline 
				\break
				\halfline
				\bar "||"
				\break

				\part \halfline 
				\break
				\halfline
				\bar "||"
				\break

				\part \halfline 
				\break
				\halfline
				\bar "||"
				\break

				\part \halfline 
				\break
				\halfline
				\bar "|."
			}%Format

			\new Voice = "pipes" {
				\pipesA s8

				\pipesB s8

				\pipesC s8

				\pipesD s8
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
		\partial 8
		\pipesA
		\pipesB
		\pipesC
		\pipesD
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
