\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "./notes.pipes.ily"
%\include "./notes.pipes.seconds.ily"
\include "./notes.lyrics.ily"

\score {
	\new StaffGroup <<
		\new Staff \with {
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal
			<<
				\new NullVoice = "format" {
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

				\new Voice = "pipes" {
					\pipesA
					\pipesB

					\pipesE
					
				}%Pipes
			>>
		}
%		\new Staff = "song" {
%  			\lyricsglobal
%			\new Voice = "lyrics" {
%				
%			}
%		}
		\new Lyrics = "verse1" {
		  \lyricsto "pipes" {
			\refrain

			\coupletA
		  }
		}
%		\new Staff = "seconds" \with {
%			instrumentName = \markup{ \instrumentPipes \instrumentSecnd }
%			shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentSecnd }
%		} {
%			\pipessecndglobal
%
%
%		}
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup { \instrumentSide }
			shortInstrumentName = \markup{ \shortInstrumentSide }
		} {
			\sideglobal
			
			\snareA
			\snareB

			\snareE
		}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal

			\tenorA
			\tenorB

			\tenorE

		}
%		\new PipeBandDrumStaff = "bass" \with {
%			instrumentName = \markup{ \instrumentBass }
%			shortInstrumentName = \markup{ \shortInstrumentBass }
%		} {
%			\bassglobal
%
%		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
			\column \right-align {
				$(if (not (string=? "" composerLyrics)) #{ \markup { \line { \composerLyrics ":" } } #} )
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  ":" }} #} )
				$(if (not (string=? "" composerPipessecnd))  #{ \markup {\line { \composerPipessecnd ":" }} #} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerLyrics)) #{ \markup { \line { "Lyrics" } } #} )
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" composerPipessecnd))  #{ \markup {\line { \instrumentPipessecnd }}#} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}
