\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
%\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "./notes.pipes.ily"
\include "./notes.pipes.seconds.ily"
%\include "./notes.lyrics.ily"

\layout {
	indent = 8.0
	short-indent = 2.0
}

\score {
	\new StaffGroup <<
		\new Staff \with {
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal

			\repeat volta 2 { \partial 8 \pipesA s8 }
			\break
			\repeat volta 2 { \partial 8 \pipesB s8 }
			\break
			
			\partial 8 \pipesC
			<<
				{ \pipesC }
				{ s8 \bar "||" \measure }
			>>
			s8
			\bar "|."
		}
%		\new Lyrics = "verse1" {
%		  \lyricsglobal
%		  \lyricsto "pipes" {
%			\verseA
%		  }
%		}
		\new Staff = "seconds" \with {
			instrumentName = \markup{ \instrumentPipes \instrumentSecnd }
			shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentSecnd }
		} {
			\pipessecndglobal

			\pipessecndA s8

			\pipessecndB s8

			\pipessecndC
			\pipessecndC s8

		}
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup { \instrumentSide }
			shortInstrumentName = \markup{ \shortInstrumentSide }
		} {
			\sideglobal

			s8 \snareA
			s8 \snareB

			s8 \snareCA
			\snareCBA

			\snareCA 
			\snareCBB

		}
%		\new PipeBandDrumStaff = "tenor" {
%			\tenorglobal
%			\set PipewBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
%			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }
%
%		}
%		\new PipeBandDrumStaff = "bass" {
%			\bassglobal
%			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
%			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
%
%		}
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
		arranger = \markup \large {
			\column \right-align {
				$(if (not (string=? "" arrangerLyrics)) #{ \markup { \line { \arrangerLyrics ":" } } #} )
				$(if (not (string=? "" arrangerPipes))  #{ \markup {\line { \arrangerPipes  ":" }} #} )
				$(if (not (string=? "" arrangerPipessecnd))  #{ \markup {\line { \arrangerPipessecnd ":" }} #} )
				$(if (not (string=? "" arrangerSide))  #{ \markup {\line { \arrangerSide  ":" }} #} )
				$(if (not (string=? "" arrangerTenor)) #{ \markup {\line { \arrangerTenor  ":" }} #} )
				$(if (not (string=? "" arrangerBass))  #{ \markup {\line { \arrangerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" arrangerLyrics)) #{ \markup { \line { "Lyrics" } } #} )
				$(if (not (string=? "" arrangerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" arrangerPipessecnd))  #{ \markup {\line { \instrumentPipessecnd }}#} )
				$(if (not (string=? "" arrangerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" arrangerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" arrangerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}
