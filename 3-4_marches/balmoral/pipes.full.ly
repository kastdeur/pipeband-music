\version "2.19.0"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.pipes.seconds.ily"
\include "./notes.pipes.thirds.ily"

\layout {
	indent = 8.0
	short-indent = 2.0
}

\score {
	\new StaffGroup <<
		\new Staff = "pipes" \with{
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal
			<<
			  	\new NullVoice = "format" {
					\repeat volta 2 { \line }
					\break
					\repeat volta 2 { \line }
				}%Format
				\new Voice = "pipes" {
					\pipesA

					\pipesB
				}%Pipes
			>>
		}
		\new Staff = "seconds" \with {
			instrumentName = \markup{ \instrumentPipesSecnd }
			shortInstrumentName = \markup{ \shortInstrumentPipesSecnd}
		} {
			\pipessecndglobal

			\pipessecndA

			\pipessecndB

		}
		\new Staff = "thirds" \with {
			instrumentName = \markup{ \instrumentPipesThrd }
			shortInstrumentName = \markup{ \shortInstrumentPipesThrd}
		} {
			\pipesthrdglobal

			\pipesthrdA

			\pipesthrdB
		}

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
			\pipeglobal
			%%Tune
			\pipesA
			\pipesB

		}
		\new Staff = "seconds" \with {
			midiInstrument = #"bagpipe"
			instrumentName = \markup{ \instrumentPipesSecnd }
			shortInstrumentName = \markup{ \shortInstrumentPipesSecnd }
		} {
			\pipessecndglobal
			%% Seconds
			\pipessecndA
			\pipessecndB

		}
		\new Staff = "thirds" \with {
			midiInstrument = #"bagpipe"
			instrumentName = \markup{ \instrumentPipesThrd }
			shortInstrumentName = \markup{ \shortInstrumentPipesThrd }
		} {
			\pipesthrdglobal
			%% Thirds
			\pipesthrdA
			\pipesthrdB

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
