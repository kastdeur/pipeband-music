\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
%\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "./notes.pipes.ily"

\layout {
	indent = 5.0
	short-indent = 2.0
}

\score {
	\new StaffGroup <<
		\new Staff \with {
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal
			<<
				{
					\repeat volta 2 { \line }		\break
					\repeat volta 2 { \halfline }
					\alternative {
						{\halfline}
						{\halfline}
					}
					\bar "|."
					%\line \bar "||" \break
					%\line \bar "|."
				}%Format
				{
				\pipesA

				\pipesB
				\pipesBA
				\pipesBB
				}%Pipes
			>>
		}
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup { \instrumentSide }
			shortInstrumentName = \markup { \shortInstrumentSide }
		} {
			\sideglobal

			\snareAA
			\snareAB

			\snareBA
			\snareBB
			\removeWithTag #'tutti \snareAB
		}
%		\new PipeBandDrumStaff = "bass" {
%			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
%			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
%
%		}
%		\new PipeBandDrumStaff = "tenor" {
%			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
%			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }
%
%		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  ":" }} #} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				%$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				%$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				%$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				%$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}
