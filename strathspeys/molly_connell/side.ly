\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{\repeat volta 2 { \line } \break \part \line \break \bar "||" \part \line \bar "|." }
			{\snareA s8 \snareBA \snareBB }
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
