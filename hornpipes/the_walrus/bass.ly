\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\bassglobal
		<<
			{\repeat volta 2 { \part \line }
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
				\bassAA
				\bassAB s8

				\bassBA
				\bassBBA s8
				\bassAB s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
	}
}
