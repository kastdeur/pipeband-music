\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "./notes.pipes.ily"
\include "./notes.pipes.seconds.ily"
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
			<<
				\new NullVoice = "format" {
					\repeat unfold 4 {
						\line \bar "||"	\break
						\line \bar "|." \break
					}		
				}%Format
				\new Voice = "pipes" {
					\pipeglobal

					\repeat unfold 2 { \pipesA }
					\repeat unfold 2 { \pipesB }
					\repeat unfold 2 { \pipesC }
					\repeat unfold 2 { \pipesD }
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
		\new Staff = "seconds" \with {
			instrumentName = \markup{ \instrumentPipes \instrumentSecnd }
			shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentSecnd }
		} {
			\pipessecndglobal

			\repeat unfold 2 { \pipessecndA }
			\repeat unfold 2 { \pipessecndB }
			\repeat unfold 2 { \pipessecndC }
			\repeat unfold 2 { \pipessecndD }
		}
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup { \instrumentSide }
			shortInstrumentName = \markup{ \shortInstrumentSide }
		} {
			\sideglobal

			\repeat unfold 2 { \snareA }
			\repeat unfold 2 { \snareB }
			\repeat unfold 2 { \snareC }
			\repeat unfold 2 { \snareD }
		}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal

			\repeat unfold 4 {
				\tenorAA
				\tenorAB
			}
		}
		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass }
		} {
			\bassglobal

			\repeat unfold 4 {
				\bassAA
				\bassAB
			}
		}
	>>
	\header {
		title = \title
		subtitle = \subtitle
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
