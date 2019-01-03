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
	  		\new NullVoice = "format"{
	  			\repeat volta 2 {
	  				\line
	  			}
	  			\break
	  			\repeat volta 2 {
	  				\halfline
	  			} \alternative {
	  				\halfline
	  				\halfline
	  			} \bar "|."
			}%Format
			\new Voice = "pipes" {
				\pipeglobal
				
				\pipesA
				
				\pipesB 
					\pipesBA
					\pipesBB
				
			}
			\new NullVoice = "tune" {
			  \lyricstuneA
			  
			  \lyricstuneBA
				  \lyricstuneBBA
				  \lyricstuneBBB
			}

			\new Lyrics = "lyrics1" {
				\lyricsto "tune" {
				  \verseAA
				  
				  \verseBAA
				  \verseBAB
				  \verseBBB
				  
				}
			}
			\new Lyrics = "lyrics-voltad2" {
				\lyricsto "tune" {
				  \verseAB
				  \verseBBA
				}
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentLyrics
		composer = \composerLyrics
	}
}
%{\markup {
  \fill-line{
	\column {
	  \verseAblock
	  \combine \null \vspace #0.5
	  \verseBblock
	}
  }
}
%}
