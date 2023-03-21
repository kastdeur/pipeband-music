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
		<<
			\new NullVoice = "format" {
				\repeat volta 2 {
					\part \halfline \markTextEol "Fine"
				}
				\break
				\part
				\halfline
				\markTextEol "D.C. al Fine"
				\bar "||"
			}%Format
			\new DrumVoice = "side" {
				\sideglobal
				s8 \snareA r8 s8

				s8 r8 \snareB r8 s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
