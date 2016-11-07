\version "2.18.2"

\include "config.ily"
%\include "notes.pipes.ily"
\include "notes.lyrics.ily"

\score {
    \new Staff {
		\global
		\lyricsglobal
		<<
		  	\new NullVoice = "format"{
				\line \halfline
				\break
				\line
				\break
				\line
				\bar "|."
			}%Format

			\new Voice = "tune" {
				\songA
			}

			\new Lyrics = "lyrics" {
				\lyricsto "tune" { 
					\lyricsA
				}
			}
		>>
	}
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
  \line{
	\column {
	  \verseA
	  \combine \null \vspace #0.5
	  \verseC
	  \combine \null \vspace #0.5
	  \verseE
	}
	\column {
	  \verseB
	  \combine \null \vspace #0.5
	  \verseD
	}
  }
}
