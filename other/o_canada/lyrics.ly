\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
%\include "./notes.pipes.seconds.ily"
\include "./notes.lyrics.ily"

\layout {
	%indent = 8.0
	%short-indent = 2.0
}

#(set-global-staff-size 18)

\score {
	\new StaffGroup <<
		\new Staff = "pipes" \with {
		%	instrumentName = \markup{ \instrumentPipes }
		%	shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\lyricsglobal
			\pipeglobal
			<<
			  	\new NullVoice = "format" {
					\repeat unfold 7 {
						\repeat unfold 4 \measure
						\break
					}
					\bar "|."
				}%Format
				\new NullVoice = "tune" {
					\songA
				}
				\new Voice = "pipes" {
				  \pipesA
				}
			>>
		}
		\new Lyrics = "lyrics1" {
			\lyricsto "tune" {
				\lyricsEnglish
			}
		}
		\new Lyrics = "lyrics2" {
			\lyricsto "tune" {
				\lyricsFrench
			}
		}
		%{
		\new Staff = "seconds" \with {
			instrumentName = \markup{ \instrumentPipesSecnd }
			shortInstrumentName = \markup{ \shortInstrumentPipesSecnd }
		} {
			\pipessecndglobal
			\pipessecndAA s4
			\pipessecndAB s4

			\pipessecndB s4
		}
		%}
	>>
	\header {
		title = \title
		meter = \meter
		instrument = ""
		composer = \markup \large {
		  	\column \right-align {
				$(if (not (string=? "" composerPipes)) #{ \markup { \line { \composerPipes  ":" } } #} )
				$(if (not (string=? "" composerLyricsEn)) #{ \markup { \line { \composerLyricsEn "(En)," \composerLyricsFr "(Fr)" ":"} } #} )
		  	}
			\column \right-align {
			    $(if (not (string=? "" composerPipes)) #{ \markup { \line { \instrumentPipes  } } #} )
				$(if (not (string=? "" composerLyricsEn)) #{ \markup { \line { \instrumentLyrics } } #} )
			}
		}

	}
}

