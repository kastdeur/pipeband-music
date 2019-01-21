\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

markTextEol = #(define-music-function (parser location text) (string?) #{
	\once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\mark \markup $text
#})

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
				\repeat volta 2 {
						\part \line \markTextEol "Fine"
					}\break
					\part \line \markTextEol "D.C. al Fine" \bar "||"
			}
			{
				\pipesA s8
				\pipesB
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
		\pipesA
		\pipesB
		\removeWithTag #'upbeat \pipesA
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
