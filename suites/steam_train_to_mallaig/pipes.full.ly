\version "2.19.0"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.pipes.seconds.ily"
\include "./notes.pipes.thirds.ily"

%% Remove EmptyStaves
\layout {
  \context {
    \RemoveEmptyStaffContext
  }
  \context {
    \Score
    \override VerticalAxisGroup #'remove-first = ##t
  }
  \context{
    \StaffGroup
    \override SystemStartBracket #'collapse-height = #5
  }
}

\layout {
	indent = 8.0
	short-indent = 2.0
}

%% We want this a4 in portrait
#(set-default-paper-size "a4portrait")


\score {
	\new StaffGroup <<
		\new Staff = "pipes" \with {
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal
		\set Score.markFormatter = #format-mark-box-letters
		\time 6/8
			<<
			  	\new NullVoice = "format" {
					\repeat unfold 7 { \grace {s2} s2. }
					\bar "||"
					\break

					\time 2/4
					\bar "||"
					\mark \default
					<<
						\repeat unfold 2 { \halfline }
						{ s2*2 \bar "--" \mark \markup { \box \tiny "2nd Piper" } }
					>>
					\break

					\mark \default
					\repeat volta 2 {\halfline }
					\break

					\mark \default
					\repeat unfold 1 { \line }
					\break

					\bar "||"
					\mark \default
					\repeat unfold 1 { \line }
					\break

					\bar "||"
					\mark \default
					\repeat unfold 1 { \line \line}
					\pageBreak

					\bar "||"
					\mark \markup \box \bold "Fine"
					\line \line
					\bar "|."
			  	}
				\new Voice = "pipes" {
					\pipesIntro


					\repeat unfold 2 {
						\pipesA
					}
					%\repeat volta 2 {
						\pipesB
					%}

					\pipesC

					\pipesD

					\pipesE

					\pipesF
				}%Pipes
			>>
		}
		\new Staff = "piper3 - seconds" \with {
			instrumentName = \markup{ \instrumentPipesSecnd }
			shortInstrumentName = \markup{ \shortInstrumentPipesSecnd }
		} {
			\pipessecndglobal
			%%Tune
			R2.*7

			\repeat unfold 1 {
				R2*2 \pipesAA \pipesA

				%\repeat volta 2 {
					\pipesB
				%}

				\pipesC

				\pipesD

				\pipesE
			}
			\pipesF

		}
		\new Staff = "piper4 - thirds" \with {
			instrumentName = \markup{ \instrumentPipesThrd }
			shortInstrumentName = \markup{ \shortInstrumentPipesThrd }
		} {
			\pipesthrdglobal
			%% Thirds
			\pipesthrdIntro

			\repeat unfold 1 {
				\pipesthrdAA
				\pipesthrdAB

				%\repeat volta 2 {
					\pipesthrdBA
				%}

				\pipesthrdC

				\pipesthrdD

				\repeat unfold 2 {
					\pipesthrdE
				}
			}

			\pipesthrdF
		}

	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
			}
		}
	}
}
\score {
	\unfoldRepeats \new StaffGroup <<
		\global
		\new Staff = "piper1" {
			\pipeglobal
			\set Staff.midiInstrument = #"bagpipe"
			%%Tune
			\tempo 4. = 40
			\time 6/8
			\pipesIntro

			\break
			\confTempo
			\time 2/4
			\repeat unfold 1 {
				\mark \default
				\repeat volta 2 {\pipesA}
				\mark \default
				\repeat volta 2 {\pipesB}
				\mark \default
				\repeat unfold 1 {\pipesC}
				\mark \default
				\repeat unfold 1 {\pipesD}
				\mark \default
				\repeat unfold 1 {\pipesE}
			}
			\mark \markup \box \bold "Fine"
			\pipesF

		}
		\new Staff = "piper2" {
			\pipeglobal
			\set Staff.midiInstrument = #"bagpipe"
			%%Tune
			R2.*7

			\repeat unfold 1 {
				R2*2 \pipesAA \pipesA

				\repeat volta 2 { \pipesB }

				\pipesC

				\pipesD

				\pipesE
			}
			\pipesF
		}
		\new Staff = "piper3 - seconds" {
			\pipessecndglobal
			\set Staff.midiInstrument = #"bagpipe"
			%% Seconds
			\pipessecndIntro

			\repeat unfold 1 {
				\pipessecndAA
				\pipessecndAB

				\repeat volta 2 { \pipessecndB }

				\pipessecndC

				\pipessecndD

				\repeat volta 2 { \pipessecndE }
			}

			\pipessecndF
		}
		\new Staff = "piper4 - thirds" {
			\pipesthrdglobal
			\set Staff.midiInstrument = #"bagpipe"
			%% Thirds
			\pipesthrdIntro

			\repeat unfold 1 {
				\pipesthrdAA
				\pipesthrdAB

				\repeat volta 2 { \pipesthrdBA }

				\pipesthrdC

				\pipesthrdD

				\repeat volta 2 { \pipesthrdE }
			}

			\pipesthrdF
		}
	>>
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
