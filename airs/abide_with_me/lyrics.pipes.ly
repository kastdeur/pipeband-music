\version "2.18.2"

\include "bagpipe.ly"

\include "config.ily"
\include "notes.pipes.ily"
\include "notes.lyrics.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\absolute {
			  \line
			  \line
			  \break
			  \line
			  \line
			  \bar "|."
			}%Format
			{ 
				\pipes
			}
			\addlyrics \verseA
			\addlyrics \verseB
		>>

	}
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
		  	\column \right-align {
			  $(if (not (string=? "" composerPipes)) #{ \markup { \line { \composerPipes  ":" } } #} )
			  $(if (not (string=? "" composerLyrics)) #{ \markup { \line { \composerLyrics ":" } } #} )
		  	}
			\column \right-align {
			    $(if (not (string=? "" composerPipes)) #{ \markup { \line { \instrumentPipes  } } #} )
				$(if (not (string=? "" composerLyrics)) #{ \markup { \line { "Lyrics" } } #} )
			}
		}
	}
}
\markup {
	\combine \null \vspace #0.5
  \fill-line {
	\column {
		\verseCblock	
		\combine \null \vspace #0.5
		\verseDblock
	}
	\column {
		\verseEblock
		\combine \null \vspace #0.5
		\verseFblock
	}
	\column {
		\verseGblock
		\combine \null \vspace #0.5
		\verseHblock
	}
  }
}
