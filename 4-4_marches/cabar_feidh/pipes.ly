\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			%\new NullVoice = "format" {
			%	\repeat unfold 4 {
			%	  	\part
			%		\halfline
			%		\break
			%		\halfline
			%		\bar "||"
			%	  \break
			%	}
			%	\bar "|."
			%}%Format
			
			\new Voice = "pipes" {
				\partial 8 \pipesA s8 \bar "||" \break
				\partial 8 \pipesB s8 \bar "||" \break
				\partial 8 \pipesC s8 \bar "||" \break
				\partial 8 \pipesD s8 \bar "|."
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
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
	}
}
