\version "2.19.0"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.pipes.seconds.ily"
%\include "./notes.pipes.thirds.ily"

mbreak = \break
pipes = {\pipeglobal \pipesA \pipesB }
pipesII = {
			\pipessecndglobal
  \pipessecndAA \pipessecndAB
  \pipessecndBA \pipessecndBB
}

\score {
	\new StaffGroup <<
		\new Staff = "pipes" \with{
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			<<
			  	\new NullVoice = "format" {
					\part \halfline \mbreak \halfline \bar "||"
					\break
					\halfline \mbreak \halfline \bar "|."
				}%Format
				\set Staff.printPartCombineTexts = ##f
				\partcombine \pipes \pipesII
			>>
		}
%		\new Staff = "thirds" \with {
%			instrumentName = \markup{ \instrumentPipes \instrumentThrd }
%			shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentThrd}
%		} {
%			\pipesthrdglobal
%
%		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  ":" }} #} )
				$(if (not (string=? "" composerPipessecnd))  #{ \markup {\line { \composerPipessecnd ":" }} #} )
				$(if (not (string=? "" composerPipesthrd))  #{ \markup {\line { \composerPipesthrd  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" composerPipessecnd))  #{ \markup {\line { \instrumentPipessecnd }}#} )
				$(if (not (string=? "" composerPipesthrd))  #{ \markup {\line { \instrumentPipesthrd }}#} )
			}
		}
	}
}
