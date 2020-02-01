\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.agira.ily"

\score {
    \new Staff {
		\global
		\pipeglobal

		\partial 8 \pipesAgiraA \bar "||" \break
		\partial 8 \pipesAgiraB \bar "||" \break
		\partial 8 \pipesAgiraC \bar "||" \break
		\partial 8 \pipesAgiraD \bar "|." \break
	}
	\header {
		title = \titleAgira
		meter = \meterAgira
		instrument = \instrumentPipes
		composer = \composerPipesAgira
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 8
		\pipesAgiraA
		\pipesAgiraB
		\pipesAgiraC
		\pipesAgiraD
	}
	\midi { \confTempo }
	\header {
		title = \titleAgira
		meter = \meterAgira
		instrument = \instrumentPipesAgira
		composer = \composerPipesAgira
	}
}
