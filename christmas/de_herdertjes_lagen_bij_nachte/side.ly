\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

fine = {
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark \markup \small "Fine"
}
capo = {
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark \markup \small "Da Capo"
}

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		<<
			\new NullVoice = "format" {
			  \repeat volta 2 {
			      \part \halfline \fine
			  }
			  \break
			  \part \time 9/8 s2. s4. 
			  \time 6/8 \measure \measure \measure \capo \bar "||"
			
			}%Format
			
			\new DrumVoice = "side" {
			    \snareA s8
			    r8 \snareBA s8
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
