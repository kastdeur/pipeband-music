\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
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
				\repeat volta 2 { \part \line } 	\break
				
				\repeat volta 2 { \part \halfline}
				\alternative{ {\halfline} {\halfline}}	\break
				\bar "||"

				\pageBreak

				\repeat volta 2 { \part \halfline}
				\alternative{ {\halfline} {\halfline}}	\break
				\bar "||"

				\repeat volta 2 { \part \halfline}
				\alternative{ {\halfline} {\halfline}}
				\bar "|."
				}%Format
				{
				\pipesA s8

				\pipesBA
				\pipesBBA s8
				\pipesBBB s8

				\pipesCA
				\pipesCBA s8
				\pipesCBB s8

				\pipesDA
				\pipesDBA s8
				\pipesDBB 
				}%Pipes
			>>
		}
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup { \instrumentSide }
			shortInstrumentName = \markup{ \shortInstrumentSide }
		} {

			\snareAA 
			\snareAB s8
			
			\snareBA 
			\snareBBA s8
			\snareBBB s8

			\snareCA
			\snareCBA s8
			\snareCBB s8

			\snareDA
			\snareDBA s8
			\snareDBB s8
		}
%{		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal

		} %}
%{
		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass }
		} {
			\bassglobal

			\bassAA
			\bassAB s8

			\bassBA
			\bassBBA s8
			\bassAB s8
		}
%}
	>>
	\header {
		title = \title
		meter = \meter
	%		composer = \markup \large {
	%			\column \right-align {
	%				$(if (not (string=? "" composerPipes)) { \markup {\line { \composerPipes  ":" }}} )
	%				$(if (not (string=? "" composerSide))  { \markup {\line { \composerSide  ":" }}} )
	%				$(if (not (string=? "" composerTenor)) { \markup {\line { \composerTenor  ":" }}} )
	%				$(if (not (string=? "" composerBass))  { \markup {\line { \composerBass  ":" }}} )
	%			}
	%			\column \right-align {
	%				$(if (not (string=? "" composerPipes)) { \markup {\line { \instrumentPipes }}} )
	%				$(if (not (string=? "" composerSide))  { \markup {\line { \instrumentSide }}} )
	%				$(if (not (string=? "" composerTenor)) { \markup {\line { \instrumentTenor }}} )
	%				$(if (not (string=? "" composerBass))  { \markup {\line { \instrumentBass }}} )
	%			}
	%		}
	}
}
