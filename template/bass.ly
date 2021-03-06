\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\bassglobal
		<<
			\new NullVoice = "format"
			{

			}%Format
			\new DrumVoice {

			}
		>>
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
		arranger = \arrangerBass
	}
}
