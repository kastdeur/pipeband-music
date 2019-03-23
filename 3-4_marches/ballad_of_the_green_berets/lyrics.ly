\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.lyrics.ily"

\score {
    \new Staff {
		\global
		\lyricsglobal
		<<
		  	\new NullVoice = "format"
			{
				\line
				\bar "||"
				\break
				\line
				\bar "|."
			}%Format
			\new Voice = "tune"
			{
				\pipeglobal
				\pipesA
				\pipesA
			}
			\new NullVoice = "song" {
			  \lyricsAA
			  \lyricsAB
			}
			\new Lyrics = "lyrics" {
				\lyricsto "song" {
					\verseA
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
  \fill-line{
	\column {
	  \verseAblock
	}
	\combine \null \vspace #0.5
	\column {
	  \verseBblock
	}
	  \combine \null \vspace #0.5
	\column {
		\verseCblock
	}
  }
}
