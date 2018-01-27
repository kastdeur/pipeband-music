\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"
\include "../../standards/24_44_standards.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		<<
			%\new NullVoice = "format" {
			%  \repeat unfold 4 {
			%	\repeat unfold 2 {
			%	  \part s1*2
			%	} \alternative {
			%	  { s1*2 }
			%	  { s1*2 }
			%	}
			%}
			%
			%}%Format
			
			\new DrumVoice = "side" {
					\partial 8 \simpleSnarepone \midone \simpleSnarepone \simpleSnareEndingI r8
					\tutti { \simpleSnarepone \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }
				
				\bar "||"

				\break
				\repeat unfold 3 {
					\partial 8 \pempty \midone \pempty \simpleSnareEndingI r8  s8
					\break
					\tutti {
					\partial 8 \cadenzaOn \pempty \cadenzaOff \removeWithTag #'tutti \midone \simpleSnareEndingII s8
				  }
					\bar "||"
			  }
			  \bar "|."
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
