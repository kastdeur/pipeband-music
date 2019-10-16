\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.thirds.ily"

\score {
    \new Staff {
		\global
		\pipesthrdglobal
		\compressFullBarRests
  		\override Score.MultiMeasureRest.expand-limit = #1
		\set Score.markFormatter = #format-mark-box-letters
		<<
			\new NullVoice = "format" {

				\time 6/8
				s2.*7
				\bar "||"

				\time 2/4
				\bar "||"
				\mark \default
				\repeat unfold 1 { \grace {s4} s2*8 }
				\break

				\mark \default
				\repeat volta 2 { \grace { s32 } s2*4 }
				\break

				\mark \default
				\repeat unfold 1 { \line }
				\break

				\bar "||"
				\mark \default
				\repeat unfold 1 { \line }
				\break

				\mark \default
				\repeat volta 2 { \halfline \break \halfline }
				\break

				\mark \markup \box \bold "Fine"
				\line \line
				\bar "|."
			}%Format

			\new Voice = "thirds" {
				\pipesthrdIntro

				\pipesthrdAA
				\pipesthrdAB

				%\repeat volta 2 {
					\pipesthrdBA
				%}

				\pipesthrdC

				\pipesthrdD

				%\repeat volta 2 {
					\pipesthrdE
				%}

				\pipesthrdF
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentThrd
		composer = \composerPipesthrd
		arranger = \arrangerPipesthrd
	}
}
\score {
	\unfoldRepeats \new Staff {
		\global \pipesthrdglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\tempo 4. = 40
		\time 6/8
		\pipesthrdIntro

		\time 2/4
		\confTempo
		\repeat unfold 1 {
			\pipesthrdAA
			\pipesthrdAB

			\repeat volta 2 { \pipesthrdBA }

			\pipesthrdC

			\pipesthrdD

			\repeat volta 2 { \pipesthrdE }
		}

		\pipesthrdF
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentThrd
		composer = \composerPipesthrd
		arranger = \arrangerPipesthrd
	}

}
