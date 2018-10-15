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
				\mark \default
				\repeat unfold 7 { \grace {s2} s2. }
				\bar "||"
				\break

				\time 2/4
				\mark \default
				\repeat volta 2 { \halfline }
				\break
				\mark \default
				\repeat volta 2 { \halfline }
				\break
				\mark \default
				\repeat volta 2 { \line }
				\break
				\mark \default
				\repeat volta 2 { \line }
				\break
				\mark \default
				\repeat volta 2 { \line \line}
				\break
				\mark \default
				\repeat volta 2 { \line \line }
			}%Format

			\new Voice = "pipes" {
				\pipesA

				\pipesB
				\pipesC
				\pipesD
				\pipesE
				\pipesF
				\pipesG

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
%{
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
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
%}
