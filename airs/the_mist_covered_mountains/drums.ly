\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\set PipeBandDrumStaff.instrumentName = \markup{\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}

			\global
			<<
				{
					\repeat volta 2 {
						\part \line
			  		}
			  		\break
					\repeat volta 2 {
						\part \line
					}
				}
				{
					\snareA s8
					<<
						{
							\snareB s8
						}
						{
							s8 | s1_\markup { \dynamic {ff} 2nd time through}
						}
			  		>>
				}
			>>
		}
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			r8 \tenorA s8
			r8 \tenorB s8
		}
%		\new PipeBandDrumStaff = "bass" {
%			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
%			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
%
%			\bassA
%			\bassB
%		}

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
