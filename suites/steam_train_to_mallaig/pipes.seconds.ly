\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.seconds.ily"

\score {
    \new Staff {
		\global
		\pipessecndglobal
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
				s2*4
				\repeat unfold 1 { \halfline }
				\break

				\mark \default
				\repeat volta 2 {\halfline }
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
			\new Voice = "seconds" {
				\pipessecndIntro

				\pipessecndAA
				\pipessecndAB

				%\repeat volta 2 {
					\pipessecndB
				%}

				\pipessecndC

				\pipessecndD

				%\repeat volta 2 {
					\pipessecndE
				%}

				\pipessecndF
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSecnd
		composer = \composerPipesSecnd
		arranger = \arrangerPipesSecnd
	}
}
\score {
	\unfoldRepeats \new Staff {
		\global \pipessecndglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\tempo 4. = 40
		\time 6/8
		\pipessecndIntro

		\time 2/4
		\confTempo
		\repeat unfold 1 {
			\pipessecndAA
			\pipessecndAB

			\repeat volta 2 { \pipessecndB }

			\pipessecndC

			\pipessecndD

			\repeat volta 2 { \pipessecndE }
		}

		\pipessecndF
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSecnd
		composer = \composerPipesSecnd
		arranger = \arrangerPipesSecnd
	}

}
