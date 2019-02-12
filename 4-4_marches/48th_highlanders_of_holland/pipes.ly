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
				\part \line 
				\bar "||" \break
				\part \line 
				\bar "||" \break
				\part \line 
				\bar "||" \break
				\part \line 
				\bar "|." \break
			}%Format

			\new Voice = "pipes" {
				\pipesA s4
				\pipesB s4
				\pipesC s4
				\pipesD s4
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
		\partial 4
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
