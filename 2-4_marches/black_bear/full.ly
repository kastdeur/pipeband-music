\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "./notes.pipes.ily"

markTextEol = #(define-music-function (parser location text) (string?) #{
	\once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\mark \markup $text
#})

\layout {
	indent = 5.0
	short-indent = 2.0
}

\score {
	\new StaffGroup <<
		\new Staff {
			\global
			\bagpipeKey
			\set Staff.instrumentName = \markup{ \instrumentPipes }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes }
			<<
				{
					\repeat volta 2 {
						\part \line \markTextEol "Fine"
					}\break
					\part \line \markTextEol "D.C. al Fine" \bar "||"
				}%Format
				{
					\pipesA s8
					\pipesB
				}%Pipes
			>>
		}
		\new PipeBandDrumStaff = "side" {
			\set PipeBandDrumStaff.instrumentName = \markup \column { \instrumentSide }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}
			\sideglobal
				\snareA s8
				\snareBA
		}
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			\tenorglobal

			r8 \tenorA s8

			\tenorB
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
			r8 \bassA s8

			\bassB
		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  ":" }} #} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}
