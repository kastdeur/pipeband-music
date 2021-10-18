\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\repeat volta 2 {
				\partial 8
				\pipesAA
				\pipesAB
			}
			{
				\part
				\halfline
				\break
				\halflineMinusPart
			}
		>>
			\break

			\repeat volta 2 {
				\partial 8
				\pipesBA
			} \alternative {
				{ \partial 8 \pipesBBA }
				{ \partial 8 \pipesBBB }
			}
			\bar ".|:-||"
			\break


			\repeat volta 2 {
				\partial 8
				\pipesCA
				\pipesCB
			}
			\break

			\repeat volta 2 {
				\partial 8
				\pipesDA
			} \alternative {
				{ \partial 8 \pipesDBA }
				{ \partial 8 \pipesDBB }
			}
			\bar "|."
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
		\unfoldRepeats {
		<<
			\repeat volta 2 {
				\partial 8
				\pipesAA
				\pipesAB
			}
			{
				\part
				\halfline
				\break
				\halflineMinusPart
			}
		>>
			\break

			\repeat volta 2 {
				\partial 8
				\pipesBA
			} \alternative {
				{ \partial 8 \pipesBBA }
				{ \partial 8 \pipesBBB }
			}
			\bar ".|:-||"
			\break


			\repeat volta 2 {
				\partial 8
				\pipesCA
				\pipesCB
			}
			\break

			\repeat volta 2 {
				\partial 8
				\pipesDA
			} \alternative {
				{ \partial 8 \pipesDBA }
				{ \partial 8 \pipesDBB }
			}
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
