\version "2.18.2"

\include "lilydrum.ly"
\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.bass.ily"
\include "./notes.side.ily"

\include "./notes.tenor.alt.ily"

\score {
  \new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
		\tenorglobal
			\global
		<<
			{
				\repeat volta 2 {
					\part \line
				}
				\break

				\part \line \bar "||" \break

				\line \bar "|."
			}%Format
			{
				\tenorA

				\tenorB
				\tenorB
			}
		>>
		}
		\new PipeBandDrumStaff = "bass" {
		  \tenorAold
		}

		\new PipeBandDrumStaff {
		  \tenorAvold
		}
		\new Staff {
			\pipesA

			\pipesB
			\pipesBA s8
			\pipesBB
		}
		\new PipeBandDrumStaff {
			s8 \bassA

			s8 \bassBA
			\bassBB
		}
		\new PipeBandDrumStaff {
			\snareA s8

			\snareBA
			\snareBB
		}
	>>
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
	}
}
