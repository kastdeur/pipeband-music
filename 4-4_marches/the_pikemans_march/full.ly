\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "./notes.pipes.ily"
%\include "./notes.pipes.seconds.ily"
%\include "./notes.lyrics.ily"

\score {
	\new StaffGroup <<
		\new Staff {
			\global
			\pipeglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentPipes }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentPipes }
			<<
				\new NullVoice = "format" {
					\repeat volta 2 {
						\part
						\line \break
						\line \break
					}
					\break
					\part \line \break
					\line \break
					\line \break
				}%Format

				\new Voice = "pipes" {
					\pipesA s8

					\pipesBA
					\pipesBB
					\pipesBC
				}%Pipes
			>>
		}
%		\new Staff = "song" {
%  			\lyricsglobal
%			\new Voice = "lyrics" {
%				
%			}
%		}
%		\new Lyrics = "verse1" {
%		  \lyricsglobal
%		  \lyricsto "lyrics" {
%			\verseA
%		  }
%		}
%		\new Staff = "seconds" {
%			\pipessecndglobal
%			\set Staff.instrumentName = \markup{ \instrumentPipes \instrumentSecnd }
%			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentTrd}
%
%
%		}
		\new PipeBandDrumStaff = "side" {
			\sideglobal
			\set PipeBandDrumStaff.instrumentName = \markup \column {\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}

					\snareAA
					\snareAB s8

					\snareBA
					\snareBB
					\snareBC s8
		}
		\new PipeBandDrumStaff = "tenor" {
			\tenorglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			\tenorAA
			\tenorAB s8

			\tenorBA
			\tenorBB
			\tenorBC r8 s
		}
		\new PipeBandDrumStaff = "bass" {
			\bassglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}

			s8 \bassAA
			\bassAB
			
			s8 \bassBA 
			\bassBB
			\bassBC r4
		}
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
