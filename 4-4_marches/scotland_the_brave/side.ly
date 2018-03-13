\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

markTextEol = #(define-music-function (parser location text) (string?) #{
	\once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\mark \markup $text
#})

\score {
    \new PipeBandDrumStaff {
        \global
	\sideglobal
        <<
			{
				\repeat volta 2 {\part \line \markTextEol "Fine" \break }
				\part \line \markTextEol "D.C. al Fine" \bar "||"
			}
			{
			 \snareA s8

			 \snareBA
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
