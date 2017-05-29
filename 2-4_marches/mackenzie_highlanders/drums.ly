\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
%\include "./notes.tenor.ily"
\include "./notes.side.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\global
			\sideglobal
			\set Staff.instrumentName = \markup{\instrumentSide}
			\set Staff.shortInstrumentName = \markup{\shortInstrumentSide}

			<<
				{
					\repeat volta 2 { \part \line } \break
					
					\part \line \bar "||" \break
					\line \bar "|."
				}%Format
				{
				 \snareA s8
				 \snareBA 
				 \snareBB
				}%Music
			>>
		}
		\new PipeBandDrumStaff = "bass" {
			\bassglobal
			\set Staff.instrumentName = \markup{ \instrumentBass }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentBass}

			s8 \bassA

			s8 \bassBA
			\bassBB
		}
		%	\new PipeBandDrumStaff = "tenor" {
		%		\tenorglobal
		%		\set Staff.instrumentName = \markup{ \instrumentTenor }
		%		\set Staff.shortInstrumentName = \markup{ \shortInstrumentTenor }

		%	}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup {
			\column \right-align {
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}
