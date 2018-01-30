\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 19)
\layout {
	indent = 0
	\set Score.markFormatter = #format-mark-box-alphabet
}
\score {
	\new Staff = "staff_pipes" {
		\numericTimeSignature
		\bagpipeKey

		\compressMMRests {
			\tempo 2. = 32
			\time 3/4
			\override MultiMeasureRest.expand-limit = #3
			R2.*4

		\bar "||"
		\mark \default
			R2.*35

		\bar "||"
		\mark \default
			\time 4/4
			<<
			  { s8 \tempo 4 = 108 }
			  {	R1*3 }
			>>

			\time 2/4
			R2
		
			\time 4/4
			R1
		}

		\bar "||"
		\mark \default
			r4 \grg c4 e4 c4 \grG a1 |
			a4. \grg a16 [ b16 ] c4. a8 |
			e1~ |
			e4 \grg c4 e4 c4 |
			\grG a1~ |
			a4~ a4 b2 |
			\grg c1 | 
		
			c4 \grg c4 e4 c4 |
			\grG a1~ |
			a4. \grg a16 [ b16 ] c4. a8 |
			e1~ |
			e2 \grg c4 e4 |
			\grg f1~ |
			f1 |
			\grg e1~ |
			e4 \grg c4 e4 c4 | 
		
			\grG a1~ |
			a4. \grg a16 [ b16 ] c4. a8 |
			e1~ |
			e8  r8 r4 r2 |

		\bar "||"
		\mark \default
			R1*12
			
			A1~ |
			A4 g4 \tuplet 3/2 { f4 d4 a4 } |
			f2 e2 |
			e4 d4 \tuplet 3/2 { c4 a4 c4 } |
			b2 a2 |
			a4 d4 \tuplet 3/2 { c4 a4 c4 } |
			b1 |


		\bar "||"
		\mark \default
		\compressMMRests {
			R1*4
		}

		\bar "||"
		\mark \default
			\grg b1~ |
			b4. \grg a16 [ b16 ] d4. c8 |
			\grg a1~ |
			a1 |
			\grg b1 |
			b4. \grg a16 [ b16 ] d4. c8 |
			\grg e1~ |
			e2 \tuplet 3/2 { e4 a4 A4 } |
			\grg A1~ |
			A4 g4 \grg \tuplet 3/2 { f4 d4 a4 } | 
		
			\grg f2 \grg e2~ |
			e4 d4 \grg \tuplet 3/2 { c4 a4 c4 } |
			\grg b2 \grG a2~ |
			a4 d4 \grg \tuplet 3/2 { c4 a4 c4 } |
			\grg b1~ |
			b1 
			\grG a1 |
	}
	\header {
		title = \title
		subtitle = \subtitle
		arranger = \arranger
		meter = \meter
		instrument = "Bagpipe"
	}
}
