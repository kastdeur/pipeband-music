\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.48th.ily"
\include "./notes.pipes.ily"
%\include "./notes.pipes.seconds.ily"
%\include "./notes.lyrics.ily"

part = { \partial 4. \grace {s4} s4. }
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
					\part
					\line
					\break
					\line \bar "||"
					\break
					\part
					\line
					\break
					\line \bar ".|:-||"
					\break
					\repeat volta 2 {
						\part
						\line
						\break
						\line
						\measure
					}

				}%Format

				\new Voice = "pipes" {
					r4 \pipesA s4.

					\pipesB s4.

					\pipesC s4.
				}%Pipes
			>>
		}
%		\new Staff = "song" {
%  			\lyricsglobal
%			\new Voice = "lyrics" {
%
%			}
%		}
%		\new Lyrics = "verse1" {
%		  \lyricsglobal
%		  \lyricsto "lyrics" {
%			\verseA
%		  }
%		}
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

				\snareA \snareA s4.

				\snareB \snareB s4.

				\snareC

		}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal

			r4. \tenorAA
			\tenorAB

			r4.	\tenorAA
			\tenorAB

			r4. \tenorBA
			\tenorBB
			| % Volta bracket for pipes
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