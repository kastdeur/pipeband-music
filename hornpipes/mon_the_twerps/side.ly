\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		<<
			\new NullVoice = "format" {
				\repeat volta 2 {
					\partial 16*3 s16*3 |
					\line
				}
				\break
				\repeat volta 2 {
					\partial 16 s16 |
					\halfline
				} \alternative {
					\halfline
					\halfline
				}
				\bar "||"
				\break
				\line
				\bar "||"
				\halfline
				\bar "|."	  
			}%Format
			
			\new DrumVoice = "side" {
		\sideglobal
				\snareA

				\snareBA
				\snareBBA
				\snareBBB

				\snareC
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
