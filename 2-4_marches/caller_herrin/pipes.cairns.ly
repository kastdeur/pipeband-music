\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

markTextEolDown = #(define-music-function (parser location text) (string?) #{
    \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark #'direction = #DOWN
    \mark \markup $text
#})

fine = {\markTextEolDown "Fine" }
dsalfine = {\markTextEolDown "D.S. al Fine" }


\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\repeat volta 2 {
					\part 
					\measure
					\measure
					\mark \markup { \musicglyph "scripts.segno"}
					%\inStaffSegno 
					\measure
					\measure
					\halfline
					\fine
				}
				\break

				\part 
				\halfline
				\measure
				\measure
				\dsalfine
				\bar "||"
				%\break
				%\halfline
				%\break
				%\halfline
				%\bar "|."
			} % Format
			\new Voice = "pipes" {
				\pipesAvI s8

				\removeWithTag #'fine \pipesBvI
			} % Pipes
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipesvI
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 8
		\unfoldRepeats {
			\repeat volta 2 {
				\pipesAvI
			}
			\removeWithTag #'fine \pipesBvI
			\removeWithTag #'fineRemove \pipesAvI
		}

	}
	\midi { \confTempo }
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipesvI
	}
}
