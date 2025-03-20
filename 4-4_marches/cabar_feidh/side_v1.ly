\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"
\include "../../standards/24_44_standards.side.ily"

#(set-global-staff-size 18)
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
			% }
			%}%Format
			
			\new DrumVoice = "side" {
				\partial 8 \simpleSnarepone \midone \simpleSnarepone \simpleSnareEndingI r8
				\tutti { \simpleSnarepone \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }
				\bar "||"
				\break

				\partial 8 \simpleSnareptwo \midone \simpleSnareptwo \simpleSnareEndingI r8
				\tutti { \simpleSnareptwo \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }
				\bar "||"
				\break

				\partial 8 \simpleSnarepthree \midone \simpleSnarepthree \simpleSnareEndingI r8
				\tutti { \simpleSnarepthree \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }
				\bar "||"
				\break

				\partial 8 \simpleSnarepfour \midone \simpleSnarepfour \simpleSnareEndingI r8
				\tutti { \simpleSnarepfour \removeWithTag #'tutti \midone \simpleSnareEndingII s8 }
				\bar "|."
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSideSimple
	}
}
