\version "2.19.0"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\global
			\set PipeBandDrumStaff.instrumentName = \markup{\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}

			<<
				{
					\mark "Intro"
					\repeat volta 2 {
						\halfline
					}
					\repeat volta 2 {
						\halfline
					}
					\break
					\mark \default
					\repeat volta 2 {
						\line
					}
					\break
					\repeat unfold 7 {
						\mark \default
						\repeat volta 2 {
							\part
							\line
						}
						\break
					}
				}%Format
				{

					R2.*4 | 
					R2.*4 |

					\snareA
					\snareB
					\snareC
					\snareD
					\snareE
					\snareF
					\snareG
					\snareH
				}
			>>
		}
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			R2.*4 |
			\tenorIntro

			\tenorA s8
			r8 \tenorB s8
			r8 \tenorC s8
			r8 \tenorD s8
			r8 \tenorE s8
			r8 \tenorF s8
			r8 \tenorG s8
			r8 \tenorH s8 
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}

			\bassIntro
			\bassIntro

			\bassA s8
			r8 \bassB s8
			r8 \bassC s8
			r8 \bassD s8
			r8 \bassE s8
			r8 \bassF s8
			r8 \bassG s8
			r8 \bassH s8 
		}
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
