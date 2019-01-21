\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
%\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "./notes.pipes.ily"
\include "./notes.lyrics.ily"


\layout {
	indent = 7.0
	short-indent = 5.0
}

#(set-default-paper-size "a4" 'portrait)

\score {
	\new StaffGroup <<
		\new Staff \with {
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal
			<<
				{
					\repeat volta 2 { \line }		\break
					\repeat volta 2 { \halfline \break }
					\alternative {
						{\halfline \break}
						{\halfline}
					}
					\bar "|."
					%\line \bar "||" \break
					%\line \bar "|."
				}%Format
				{
				\pipesA

				\pipesB
				\pipesBA
				\pipesBB
				}%Pipes
				\new NullVoice = "tune" {
				  \lyricstuneA

				  \lyricstuneBA
					  \lyricstuneBBA
					  \lyricstuneBBB
				}
			>>
		}
		\new Lyrics = "lyrics1" {
				\lyricsto "tune" {
				  \verseAA

				  \verseBAA
				  \verseBAB
				  \verseBBB

				}
			}
			\new Lyrics = "lyrics-voltad2" {
				\lyricsto "tune" {
				  \verseAB
				  \verseBBA
				}
			}
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup { \instrumentSide }
			shortInstrumentName = \markup { \shortInstrumentSide }
		} {
			\sideglobal
			\snareAA
			\snareAB

			\snareBA
			\snareBB
			\removeWithTag #'tutti \snareAB
		}
%		\new PipeBandDrumStaff = "bass" {
%			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
%			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
%
%		}
%		\new PipeBandDrumStaff = "tenor" {
%			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
%			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }
%
%		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
			\column \right-align {
				$(if (not (string=? "" composerLyrics))  #{ \markup {\line { \composerLyrics  ":" }} #} )
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  ":" }} #} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerLyrics))  #{ \markup {\line { \instrumentLyrics }}#} )
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}
