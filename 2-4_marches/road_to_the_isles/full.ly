\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
%\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "./notes.pipes.ily"
%\include "./notes.pipes.seconds.ily"
%\include "./notes.lyrics.ily"

\layout {
	indent = 5.0
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
			<<
				\new NullVoice = "format" {
					\repeat volta 2 {
						\part
						\line
					}
					\break
					\repeat unfold 2 {
						\part
						\halfline
					} \alternative {
						{ \halfline \break \bar "||" }
						{ \halfline }
					}
				}%Format

				\new Voice = "pipes" {
					\pipesAA
					\pipesAB s8

					\pipesBA
					\pipesBBA s8
					\pipesBA
					\pipesBBB

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
			\sidePI
			<<
				\sideMid
				\context PipeBandDrumStaff = "sideLD" {
					\sideMidII
				}
			>>
			\sidePI
			<<
				\sideEnd
				\context PipeBandDrumStaff = "sideLD" {
					\sideEndII
				}
			>> s8

			%%
			\sidePII
			<<
				\sideMid
				\context PipeBandDrumStaff = "sideLD" {
					\sideMidII
				}
			>>
			\sidePII
			<<
				\sideEnd
				\context PipeBandDrumStaff = "sideLD" {
					\sideEndII
				}
			>> s8
			%
			<>\dr
			\removeWithTag #'tutti {
				\sidePII
				<<
					\sideMid
					\context PipeBandDrumStaff = "sideLD" {
						\sideMidII
					}
				>>
				\sidePI
				<<
					\sideEnd
					\context PipeBandDrumStaff = "sideLD" {
						\sideEndII
					}
				>> s8 \fr
			}
		}
		\new PipeBandDrumStaff = "sideLD" \with {
			instrumentName = \markup \center-column { LD \instrumentSide }
			shortInstrumentName = \markup{ L.D. }
			\RemoveAllEmptyStaves
		} {
			s8 | s1*4
			s8 | s1*4
		}
%{
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal

		}
%}
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
