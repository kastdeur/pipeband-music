
\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"


#(set-default-paper-size "a4" 'portrait)
\score {
    \new Staff {
		\global
		\pipeglobal
		\set Score.markFormatter = #format-mark-box-letters
		\time 6/8
		<<
			\new NullVoice = "format" {
				\repeat unfold 7 { \grace {s2} s2. }
				\bar "||"
				\break

				\time 2/4
				\mark \default
				\repeat volta 2 { \halfline }
				\break
				\mark \default
				\repeat volta 2 {\halfline }
				\break
				\mark \default
				\repeat unfold 1 { \line }
				\bar "||"
				\break
				\mark \default
				\repeat unfold 1 { \line }
				\bar "||"
				\break
				\mark \default
				\repeat unfold 1 { \line \line}
				\bar "||"
				\break
  				\mark \default
				\line \line
				\bar "|."
			}%Format

			\new Voice = "pipes" {
				\pipesIntro

				\pipesA
				\pipesB
				\pipesC
				\pipesD
				\pipesE
				\pipesF

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
		\time 6/8
		\pipesIntro

		\time 2/4
		\repeat unfold 1 {
			\repeat unfold 2 {\pipesA}
			\repeat unfold 2 {\pipesB}
			\repeat unfold 2 {\pipesC}
			\repeat unfold 2 {\pipesD}
			\repeat unfold 2 {\pipesE}
		}
		\pipesF
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
