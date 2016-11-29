\version "2.18.2"

\include "bagpipe.ly"

\include "config.ily"
\include "notes.pipes.ily"
\include "notes.pipes.seconds.ily"
\include "notes.lyrics.ily"

\score {
	\new StaffGroup <<
	    \new Staff {
			\global
			\lyricsglobal
			<<
			  	\new NullVoice = "format" {
					\part
					\repeat unfold 7 \measure
					\bar "||"
					\break
					\part
					\repeat unfold 7 \measure
					\bar "|."
					\break
	
					\part
					\line
					\break
					\line
					\bar "|."
				}%Format
				\new Voice = "tune" {
				  \bagpipeKey
				  \pipesA s4
				  \pipesA s4
	
				  \pipesB
					
				}
			>>
		}
		\new Staff {
			
		}
		\new Lyrics = "lyrics1" {
			\lyricsto "tune" { 
				\lyricsA
			}
		}
		\new Lyrics = "lyrics2" {
			\lyricsto "tune" { 
				\lyricsF
			}
		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.instrumentName = \markup{ \instrumentSecnd }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentSecnd}
			
			\pipessecndAA s4
			\pipessecndAB s4

			\pipessecndB s4
		}
	>>
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentLyrics
		composer = \markup \large {
		  	\column \right-align {
				$(if (not (string=? "" composerLyrics)) #{ \markup { \line { \composerLyrics } } #} )
				$(if (not (string=? "" composerPipes)) #{ \markup { \line { \composerPipes  ":" } } #} )
		  	}
			\column \right-align {
				$(if (not (string=? "" composerLyrics)) #{ \markup { \line { } } #} )
			    $(if (not (string=? "" composerPipes)) #{ \markup { \line { \instrumentPipes  } } #} )
			}
		}

	}
}
\markup {
  \fill-line{
	\column {
	  \verseA
	  \combine \null \vspace #0.5
	  \verseB
	  \combine \null \vspace #0.5
	  \verseC
	  \combine \null \vspace #0.5
	  \verseD
	}
	\column {
	  \verseE
	  \combine \null \vspace #0.5
	  \verseF
	  \combine \null \vspace #0.5
	  \verseG
	  \combine \null \vspace #0.5
	  \verseH
	}
	\column {
	  \verseI
	  \combine \null \vspace #0.5
	  \verseJ
	  \combine \null \vspace #0.5
	  \verseK
	  \combine \null \vspace #0.5
	  \verseL
	}
	\column {
	  \verseM
	  \combine \null \vspace #0.5
	  \verseN
	  \combine \null \vspace #0.5
	  \verseO
	}
  }
}
