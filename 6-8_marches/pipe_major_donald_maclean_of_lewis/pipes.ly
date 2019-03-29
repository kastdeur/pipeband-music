\version "2.18.2"

\include "bagpipe-fixed.ly"

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
					\break
					\halfline
				}
				\break

				\repeat volta 2 {
					\part
					\halfline
				} \alternative {
					{ \halfline }
					{ \halfline }
				}
				\bar ".|:-||"
				\break

				\repeat volta 2 {
					\part
					\halfline
					\break
					\halfline
				}
				\break

				\repeat volta 2 {
					\part
					\halfline
				} \alternative {
					{ \halfline }
					{ \halfline }
				}
				\bar "|."

			}%Format

			\new Voice = "pipes" {
				\pipesAA
				\pipesAB

				\pipesBA
				\pipesBBA
				\pipesAB

				\pipesCA
				\pipesCB

				\pipesDA
				\pipesDBA
				\pipesAB
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
		\unfoldRepeats \removeWithTag #'midiRemove {
				\repeat volta 2 { \partial 8 \pipesAA \pipesAB }
				\break
				\repeat volta 2 { \partial 8 \pipesBA }
				\alternative { \pipesBBA \pipesAB }
				\bar "||"
				\break
				\repeat volta 2 { \partial 8 \pipesCA \pipesCB }
				\break
				\repeat volta 2 { \partial 8 \pipesDA }
				\alternative { \pipesDBA \pipesAB }
				\bar "|."
		}
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
