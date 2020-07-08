\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
%\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "./notes.pipes.ily"

\score {
	\new StaffGroup <<
		\new Staff {
			\global
			\pipeglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentPipes }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentPipes }
			<<
				{
				\repeat volta 2 { \part \line } 	\break
				
				\repeat volta 2 { \part \halfline}
				\alternative{ {\halfline} {\halfline}}	\break
				\bar "||"

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
		\new PipeBandDrumStaff = "side" {
			\sideglobal
			\set PipeBandDrumStaff.instrumentName = \markup \column {\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}

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
		\new PipeBandDrumStaff = "bass" {
			\bassglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
   	
			\bassAA
			\bassAB s8

			\bassBA
			\bassBBA s8
			\bassAB s8

		}
	%	\new PipeBandDrumStaff = "tenor" {
	%		\tenorglobal
	%		\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
	%		\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }
	%	}
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
