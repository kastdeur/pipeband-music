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
				\partial 8 s8
				\repeat volta 2 {
					\quartline
				} \alternative {
				  	\quartline
					{	\quartline 
						\markTextEol "Fine"
					}
				}\bar "|."
				\break

				\partial 8 s8
				\halfline 
				\markTextEol "D.C. al Fine"
				\bar "||"
			}%Format
			
			\new DrumVoice = "side" {
				\sideglobal
				\snareAA
					\snareABA
					\snareABB r8 s8
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
