\version "2.19.0"

\include "config.ily"
\include "notes.pipes.ily"
\include "notes.pipes.agira.ily"
\include "notes.pipes.charge.ily"
\include "notes.pipes.strathspey.ily"

\score {
	\new StaffGroup <<
		\new Staff = "pipes"  {
			\global
			\pipeglobal
			\set Staff.instrumentName = \markup{ \instrumentPipes }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes }
			<<
			\new NullVoice = "format" {
				\repeat unfold 4 {
				  \repeat volta 2 {
				  	\part
					\line
				  }
				  \break
				}
			}%Format
			
			\new Voice = "pipes" {
				\pipesA s8

				\pipesB s8

				\pipesC s8

				\pipesD s8
			}
			>>
		}
		\new Staff = "agira" {
			\pipeglobal
			\set Staff.instrumentName = \markup{ "Agira" }
			\set Staff.shortInstrumentName = \markup{ "A."}
			
				\pipesAgiraA s8

				\pipesAgiraB s8

				\pipesAgiraC s8

				\pipesAgiraD s8
		}
		\new Staff = "strath" {
			\pipeglobal
			\set Staff.instrumentName = \markup{ "Strathspey" }
			\set Staff.shortInstrumentName = \markup{ "S."}
			
				s16 \pipesStrathspeyA s16

				s16 \pipesStrathspeyB s16

				s16 \pipesStrathspeyC s16

				s16 \pipesStrathspeyD s16
		}
		\new Staff = "charge" {
			\pipeglobal
			\set Staff.instrumentName = \markup{ "Charge" }
			\set Staff.shortInstrumentName = \markup{ "C."}
	
			\pipesChargeA s8

			\pipesChargeB s8
		}
	>>
	\header {
		title = \title
		meter = ""
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
