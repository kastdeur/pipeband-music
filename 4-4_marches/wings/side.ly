\version "2.18.2"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		<<
			\new NullVoice = "format" {
				\partial 8 s8
				\repeat volta 2 {
					\quartline
				} \alternative {
				  	\quartline
					\quartline
				}\bar "|."
				\break

				\partial 8 s8
				\line \bar "||"
			}%Format
			
			\new DrumVoice = "side" {
				\snareAA
					\snareABA s4
					\snareABB
				\snareBA 
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
