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
		<<
			\new NullVoice = "format" {

				\time 6/8
				\repeat unfold 7 { \grace {s2} s2. }
				\bar "||"
				\break

				\time 2/4
				\mark \default
				<<
					\repeat volta 2 { \halfline }
					{ s2*2 \bar "--" \mark \markup { \box \tiny "2nd Piper" } }
				>>
				\break

				\mark \default
				\repeat volta 2 { \halfline }
				\break

				\mark \default
				\repeat unfold 1 { \line }
				\break

				\bar "||"
				\mark \default
				\repeat unfold 1 { \line }
				\break

				\bar "||"
				\mark \default
				\repeat unfold 1 { \line \line}
				\break

				\bar "||"
				\mark \markup \box \bold "Fine"
				\line \line
				\bar "|."
			}%Format

			\new Voice = "pipes" {
				\pipesIntro

				%\repeat volta 2 {
					\pipesA
				%}
				%\repeat volta 2 {
					\pipesB
				%}
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
	\unfoldRepeats \new Staff {
		\global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\tempo 4. = 40
		\time 6/8
		\pipesIntro

		\time 2/4
		\confTempo
		\repeat unfold 1 {
			\repeat volta 2 { \pipesA }
			\repeat volta 2 { \pipesB }
			\pipesC
			\pipesD
			\pipesE
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
