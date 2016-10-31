\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"
\include "notes.lyrics.ily"

\score {
%  \new StaffGroup <<
    \new Staff {
		\global
		\pipeglobal
		<<
		  	\new Voice = "format"
			{
			  \repeat volta 2 {
				  \part
				  \repeat unfold 2 { 
					\line 
					\line
				  }
				  \break
			  }
			}%Format
			\new Voice = "tune"
			{
			  \pipesA s8
			}
%		>>
%	}
%	\new Staff = "align" {
		\lyricsglobal
		\new NullVoice = "align" {
%		\new Voice = "align" {
				\lyricsA s8
		}
%	}
		\new Lyrics = "lyrics" {
			\lyricsto "align" { 
				\verseA	
			}
		}
 	  >>
	}
%  >>
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
			    $(if (not (string=? "" composerPipes)) #{ \markup { \line { \instrumentPipes  } } #} )
			}
		}

	}
}
\markup {
  \fill-line{
	\column {
	  \verseBblock
	  \combine \null \vspace #0.5
	  \verseCblock
	}
  }
}

