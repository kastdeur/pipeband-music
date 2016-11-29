\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
				\repeat volta 2 { \part \line }
			\break
				\repeat volta 2 { \part \halfline}
				\alternative{ {\halfline} {\halfline}}
			\break
				\repeat volta 2 { \part \halfline}
				\alternative{ {\halfline} {\halfline}}
			\break
				\repeat volta 2 { \part \halfline}
				\alternative{ {\halfline} {\halfline}}

			}
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
				\pipesDBB s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
