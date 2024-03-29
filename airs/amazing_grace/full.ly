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
				\new Voice = "format" {
					\part
					\repeat volta 2 {
					  \line \break
					  \line \break
					  \line \break
					  \halfline
					 }
					 \alternative {
					   {\halfline}
					   {\halfline}
					 }
					 \bar "|."
				}%Format
				\new Voice = "pipes" {
					\pipesA
					\pipesAendA s4
					\pipesAendB s4
				}%Pipes
				\new NullVoice = "lyrics-aligner" {
					\lyricsA
				}
			>>
		}
		\new Lyrics = "lyrics1" {
			\lyricsto  "lyrics-aligner" {
				\verseA
			}
		}
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup { \instrumentSide }
			shortInstrumentName = \markup{ \shortInstrumentSide }
		} {
			\sideglobal

				\snarePart
				\snareAA
				\snareAB
				\snareAC
				\keepWithTag #'with-volta \snareAD
				\snareADendB s4
		}
%		\new PipeBandDrumStaff = "tenor" {
%			\tenorglobal
%			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
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
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  \arrangerPipes ":" }} #} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerLyrics)) #{ \markup { \line { "Lyrics" } } #} )
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}

	}
}
