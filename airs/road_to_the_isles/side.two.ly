\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		<<
			\new NullVoice = "format" {
				\repeat volta 2 {
					\part
					\line
				}
				\break
				\repeat volta 2 {
					\part
					\line
				}
			}%Format
			
			\new DrumVoice = "side" {
				d16. g32 |
				d4:32(	d16.) g32 \tuplet 3/2 { d16 g d } |
				\flam g8 d8:32(	d8)

				\sideMidTwo

				d16. g32 |
				d4:32(	d16.) g32 \tuplet 3/2 { d16 g d } |
				\flam g16. d32-> g16. g32 	\flam d8

				\sideEndTwo s8



				d16. g32 |
				d16.:64(-> d32) \tuplet 3/2 { g16 d g }	d16.:64(-> d32) \tuplet 3/2 { g16 d g } |
				d16.:64(-> d32) g16.:64(-> g32)	d8
				
				\sideMidTwo
				
				d16. g32 |
				d16.:64(-> d32) \tuplet 3/2 { g16 d g }	d16.:64(-> d32) \tuplet 3/2 { g16 d g } |
				d16.:64(-> d32) g16.:64(-> g32)	d8
				
				\sideEndTwo s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = #(string-append instrumentSide " 2")
		composer = \composerSide
		arranger = \arrangerSide
	}
}
