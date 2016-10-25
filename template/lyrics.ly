\version "2.18.2"

\include "config.ily"
%\include "notes.pipes.ily"
\include "notes.lyrics.ily"

\score {
    \new Staff {
		\global
		\lyricsglobal
		<<
		  	\new Voice = "format"
			{ }%Format
%			\new Voice = "tune"
%			{ }
			\new Lyrics = "lyrics" {
				\lyricsto "format" { 
			
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
%\markup {
%  \fill-line{
%	\column {
%	  \verseAblock
%	  \combine \null \vspace #0.5
%	  \verseBblock
%	}
%  }
%}

