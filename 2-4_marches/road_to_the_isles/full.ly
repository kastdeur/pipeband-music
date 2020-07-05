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

% Force a Break between the Voltas
mbreak = { \break }

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

					\repeat volta 2 {
						\part
						\halfline
					} \alternative {
						{
							\mbreak
							\part
							\halfline
						}
						{
							\mbreak
							\part
							\halfline
						}
					}
					\bar "||"
					\break

					\repeat volta 2 {
						\part
						\halfline
					} \alternative {
						{
							\mbreak
							\part
							\halfline
						}
						{
							\mbreak
							\part
							\halfline
						}
					}
					\bar "||"
					\break

					\repeat volta 2 {
						\part
						\line
					}
				}%Format

				\new Voice = "pipes" {
					\pipesAA
					\pipesAB s8

					\pipesBA s8
					\pipesBBA s8
					\pipesBBB s8

					\pipesCA s8
					\pipesCBA s8
					\pipesCBB s8

					\pipesDA
					\pipesDB s8
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
		<<
			\new PipeBandDrumStaff = "side" \with {
				instrumentName = \markup { \instrumentSide }
				shortInstrumentName = \markup{ \shortInstrumentSide }
			} {
				\sideglobal

				%% Part 1
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

				%% Part 2
				\sidePII
				<<
					\sideMid
					\context PipeBandDrumStaff = "sideLD" {
						\sideMidII
					}
				>> s8
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
					\sidePI
					<<
						\sideEnd
						\context PipeBandDrumStaff = "sideLD" {
							\sideEndII
						}
					>>
				} s8 \fr

				%% Part 3
				\sidePIII
				<<
					\sideMid
					\context PipeBandDrumStaff = "sideLD" {
						\sideMidII
					}
				>> s8
				\sidePIII
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
						\sideEnd
						\context PipeBandDrumStaff = "sideLD" {
							\sideEndII
						}
					>>
				} s8 \fr

				%% Part 4
				\sidePIV
				<<
					\sideMid
					\context PipeBandDrumStaff = "sideLD" {
						\sideMidII
					}
				>>
				\sidePIV
				<<
					\sideEnd
					\context PipeBandDrumStaff = "sideLD" {
						\sideEndII
					}
				>> s8

			}
			\new PipeBandDrumStaff = "sideLD" \with {
				instrumentName = \markup \center-column { L.D. \instrumentSide }
				shortInstrumentName = \markup{ L.D. }
				\RemoveEmptyStaves
			} {
				s8 | s1
			}
		>>
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
