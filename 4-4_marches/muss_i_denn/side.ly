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
			\new NullVoice = "format" {
				\repeat volta 2 {
					\part \halfline
				}
				\markTextEol "Fine"
				\break
				\part \repeat unfold 4 \measure
				\markTextEol "D.C. al Fine"
				\bar "|."
			}%Format
			
			\new DrumVoice = "side" {
				\snareA s4

				\snareBA s4
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
