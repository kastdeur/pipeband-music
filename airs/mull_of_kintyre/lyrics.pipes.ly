\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.lyrics.ily"

% From Svenax's bagpipemusic
markText = #(define-music-function (parser location text) (string?) #{
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup $text
#})

\score {
    \new Staff {
		\global
		\lyricsglobal
		<<
		  	\new Voice = "format"
			{
			  	\repeat volta 2 {
				  	% Refrain
					\repeat unfold 6 {	
					  \measure
					}
					\bar "||"
					\break
					% Couplet
					\repeat unfold 4 {
					  \measure
					}
					\break
					\repeat unfold 4 {
					  \measure
					}

					\measure
					\break

				}
				% Dunno
				\markText "Fine"
				\repeat unfold 6 {
				  \measure
				}
				\bar "|."
				
			
			
			}%Format
			\new Voice = "tune"
			{ 
				\pipesA
				\pipesB

				\pipesE
			
			}
			\new Lyrics = "lyrics" {
				\lyricsto "tune" { 
					\refrain

					\coupletA
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

