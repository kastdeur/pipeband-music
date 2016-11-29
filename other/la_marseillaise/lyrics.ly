\version "2.18.2"

\include "./config.ily"
%\include "./notes.pipes.ily"
\include "./notes.lyrics.ily"

\score {
    \new Staff {
		\global
		\lyricsglobal
		<<
%		  	\new NullVoice = "format"{
%				
%			}%Format

			\new Voice = "tune" {
				
			}

			\new Lyrics = "lyrics" {
				\lyricsto "tune" { 
					
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
%\markup {
%  \fill-line{
%	\column {
%	  \verseAblock
%	  \combine \null \vspace #0.5
%	  \verseBblock
%	}
%  }
%}
