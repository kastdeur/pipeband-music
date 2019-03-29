\version "2.19.0"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.pipes.seconds.ily"
%\include "./notes.pipes.thirds.ily"

\layout {
	indent = 8.0
	short-indent = 2.0
}

\score {
	\new StaffGroup \with {
		\override VerticalAxisGroup #'remove-first = ##t
	} <<
		\new Staff = "pipes" \with {
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal
			<<
			  	\new NullVoice = "format" {
					\repeat volta 2 {
						\line
						\break
						\halfline

					} \alternative {
						\halfline
						\halfline
					}
					\bar "|."
				}%Format
				\new Voice = "pipes" {
					\pipesAA

					\pipesABAA
					\pipesABABA
					\pipesABABB

				}%Pipes
			>>
		}
		\new Staff = "seconds" \with {
			instrumentName = \markup{ \instrumentPipesSecnd }
			shortInstrumentName = \markup{ \shortInstrumentPipesSecnd }
			\RemoveEmptyStaves
		} {
			\global
			\pipessecndglobal
			\pipessecndAA
			\pipessecndABAA

			\pipessecndABABA
			\pipessecndABABB
		}
%{		\new Staff = "thirds" \with {
			instrumentName = \markup{ \instrumentPipesThrd }
			shortInstrumentName = \markup{ \shortInstrumentPipeTthrd }
		} {
			\pipesthrdglobal

		}
%}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  ":" }} #} )
				$(if (not (string=? "" composerPipessecnd))  #{ \markup {\line { \composerPipessecnd ":" }} #} )
				$(if (not (string=? "" composerPipesthrd))  #{ \markup {\line { \composerPipesthrd  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" composerPipessecnd))  #{ \markup {\line { \instrumentPipessecnd }}#} )
				$(if (not (string=? "" composerPipesthrd))  #{ \markup {\line { \instrumentPipesthrd }}#} )
			}
		}
	}
}
\score {
	\new StaffGroup <<
		\global
		\new Staff = "pipes" \with {
			midiInstrument = #"bagpipe"
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal
			%%Tune
			\pipesAA
			\pipesABAA
			\pipesABABA

			\pipesAA
			\pipesABAA
			\pipesABABB

		}
		\new Staff = "seconds" \with {
			midiInstrument = #"bagpipe"
			instrumentName = \markup{ \instrumentPipesSecnd }
			shortInstrumentName = \markup{ \shortInstrumentPipesSecnd }
		} {
			\global
			\pipessecndglobal
			%% Seconds
			\pipessecndAA
			\pipessecndABAA
			\pipessecndABABA

			\pipessecndAA
			\pipessecndABAA
			\pipessecndABABB
		}
%{		\new Staff = "thirds" \with {
			midiInstrument = #"bagpipe"
			instrumentName = \markup{ \instrumentPipesThrd }
			shortInstrumentName = \markup{ \shortInstrumentPipeThrd }
		} {
			\pipesthrdglobal
			%% Thirds
		}
%}
	>>
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
