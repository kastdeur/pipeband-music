\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
%\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "../../standards/24_44_standards.side.ily"
\include "../../standards/standards.tenor.ily"
\include "./notes.pipes.ily"
%\include "./notes.pipes.seconds.ily"
%\include "./notes.lyrics.ily"

\layout {
	indent = 5.0
	short-indent = 2.0
}

#(set-global-staff-size 17)
\score {
	\new StaffGroup <<
		\new Staff \with {
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal
			<<
				\new NullVoice = "format" {
					\repeat unfold 4 {
						\part
						\line
						\bar "||"
					 	\break
					}
				}%Format

				\new Voice = "pipes" {
					\pipesA s8

					\pipesB s8

					\pipesC s8

					\pipesD s8
				}%Pipes
			>>
		}
%{		\new Staff = "song" {
  			\lyricsglobal
			\new Voice = "lyrics" {

			}
		}
}%
%{		\new Lyrics = "verse1" {
		  \lyricsglobal
		  \lyricsto "lyrics" {
			\verseA
		  }
		}
%}
%{		\new Staff = "seconds" \with {
			instrumentName = \markup{ \instrumentPipes \instrumentSecnd }
			shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentSecnd }
		} {
			\pipessecndglobal

		}
%}
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup { \instrumentSide }
			shortInstrumentName = \markup{ \shortInstrumentSide }
		} {
			\sideglobal

			\simpleSnarepone \midone \simpleSnarepone \simpleSnareEndingI r8
			\tutti { \simpleSnarepone \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }

			\simpleSnareptwo \midone \simpleSnareptwo \simpleSnareEndingI r8
			\tutti { \simpleSnareptwo \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }

			\simpleSnarepthree \midone \simpleSnarepthree \simpleSnareEndingI r8
			\tutti { \simpleSnarepthree \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }
			
			\simpleSnarepfour \midone \simpleSnarepfour \simpleSnareEndingI r8
			\tutti { \simpleSnarepfour \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }


		}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
				s8 \tenorFourfoursOneA
				\tenorFourfoursOneB
				
				s8 \tenorFourfoursOneA
				\tenorFourfoursOneB
				
				s8 \tenorFourfoursOneA
				\tenorFourfoursOneB
				
				s8 \tenorFourfoursOneA
				\tenorFourfoursOneB
		}
%{
		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass }
		} {
			\bassglobal

		}
%}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
			\column \right-align {
				$(if (not (string=? "" composerLyrics)) #{ \markup { \line { \composerLyrics ":" } } #} )
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  ":" }} #} )
				$(if (not (string=? "" composerPipessecnd))  #{ \markup {\line { \composerPipessecnd ":" }} #} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerLyrics)) #{ \markup { \line { "Lyrics" } } #} )
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" composerPipessecnd))  #{ \markup {\line { \instrumentPipessecnd }}#} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}