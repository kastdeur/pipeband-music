\version "2.18.2"

\include "config.ily"
\include "notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	\tenorglobal
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
			{ }
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
	}
}