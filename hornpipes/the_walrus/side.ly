\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\sideglobal
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
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
