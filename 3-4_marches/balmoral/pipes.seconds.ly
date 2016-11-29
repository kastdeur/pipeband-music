\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "config.ily"
\include "notes.pipes.seconds.ily"

\score {
    \new Staff {
		\global
		\pipessecndglobal
		<<
			{
				\repeat volta 2 { \line }
				\break
				\repeat volta 2 { \line }
			}
			{
				\pipessecndA

				\pipessecndB
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipessecnd
		composer = \composerPipessecnd
	}
}
