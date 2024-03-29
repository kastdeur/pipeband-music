\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.lyrics.ily"

\score {
    \new Staff {
		\global
		\lyricsglobal
		\pipeglobal
		<<
		  	\new NullVoice = "format"{
				\line \halfline
				\break
				\line
				\break
				\line
				\bar "|."
			}%Format

			\new NullVoice = "tune" {
				\songA
			}
			\new Voice = "pipes" {
				\pipesA
				\pipesB
				\pipesC
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
	\combine \null \vspace #0.5
	\fill-line {
		\column {
			\verseB
			\combine \null \vspace #0.5
			\verseC
		}
		\column {
			\verseD
			\combine \null \vspace #0.5
			\verseE
		}
		\column {
			\verseF
		}
	}
}
