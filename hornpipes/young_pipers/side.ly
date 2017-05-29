\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff 
	{
        \global
		<<
			\new NullVoice = "format" {
				\repeat volta 2 {
					\part
					\halfline
					%\break
					\set Score.repeatCommands = #(list (list 'volta twoOfTwo ))
					\halfline
					\set Score.repeatCommands = #'((volta #f ))
				}
				\break
				\repeat volta 2 {
					\part
					\halfline
					%\break
					\halfline
				}
				\break
				\repeat volta 2 {
					\part
					\halfline
					%\break
					\set Score.repeatCommands = #(list (list 'volta twoOfFour ))
					\halfline
					\set Score.repeatCommands = #'((volta #f ))
				}
				\break
				\repeat volta 2 {
					\part
					\halfline
					%\break
					\halfline
				}
			}%Format
			
			\new DrumVoice = "side" {
				\sideglobal
				\snareAA
				\snareAB
				\snareAC
				\snareAD s8

				\snareBA
				\snareBB
				\snareBC
				\snareAD s8

				\snareCA
				\snareCB
				\snareCC
				\snareAD s8

				\snareDA
				\snareDB
				\snareDC
				\snareAD s8
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
