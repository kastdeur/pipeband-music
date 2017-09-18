\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
cross	= #(define-music-function (parser location notes) (ly:music?)
				#{
					\temporary \override Staff.NoteHead.style = #'cross
					$notes
					\revert Staff.NoteHead.style
				#})
trian = #(define-music-function (parser location notes) (ly:music?)
				#{
					\temporary \override Staff.NoteHead.style = #'triangle
					$notes
					\revert Staff.NoteHead.style
				#})
rim = #(define-music-function (parser location notes) (ly:music?)
				#{
					\temporary \override Staff.NoteHead.style = #'xcircle
					$notes
					\revert Staff.NoteHead.style
				#})
\score {
    \new PipeBandDrumStaff {
        \global
		\drummode {
			\set countPercentRepeats = ##t
			\override Staff.TimeSignature.break-visibility = ##(#f #t #t) 
			\time 4/4
			\tempo 4 = 116
			R1 |
			d1:32(\< |
			\repeat volta 2 {
				\repeat percent 3 {
					d16)->\! g d g-\v
					d g-\v d g-\v
					d4->
					r4
					|
				}
				d16)-> g d g-\v
				d g-\v d g-\v
					
				d16-> g d g-\v
				d g-\v\< d g-\v
				|
				d16-> g d g-\v
				d g-\v d g-\v

				d8-> \cross { d16 d}
				\cross d4\!
			}
			
			\break

			\repeat volta 2 {
				\repeat percent 3 {
					d8:32( d16) g-\v
					d8:32( d16) g-\v
					d8:32( d16) g-\v
					r16 g-\v d g
					|
				}
				d16-> g d g->
				d16 g d-> g
				d16 g-> d g
				\triplet { d16 g d-\v } g8->
				|
			}
			|
			\bar ":|."
			
			\break
%%%%%%%%%%%
			\time 12/8
			\tempo 4. = 69

			r4. r4. r4. r4. |
			\repeat percent 3 {
			  r8 \triplet { d16 g d} \triplet { g16 d g }
			  d8 \flam g \flam d
			  r8 \triplet { d16 g d} \triplet { g16 d g }
			  d8 \flam g \flam d
			  |
			  r8 \triplet { d16 g d} \triplet { g16 d g }
			  d8 \triplet { g16 d g} \triplet { d16 g d }
			  g8 \triplet { d16 g d} \triplet { g16 d g }
			  d8 \flam g \flam d
			}


			\break

			\repeat percent 3 {
				\trian d8 g d
				\trian g8 d g
				\trian d16 g d \trian g d g
				\trian d8 g d
				|
				\trian g8 d g
				\trian d8 g d 
				\trian g16 d g \trian d g d
				\trian g4.
				|
			}

			\bar "||"
			\break

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
			\time 4/4
			\tempo 4 = 116
			
			\repeat volta 2 {
				\flam d8)\! \flam d
				\flam d d:32(
				d16.) g32 d16. d32-\v
				g16. d32-> \triplet {g16 d g }
				|
				\flam d8 \flam d
				\flam d8 g16. g32
				\triplet { d16-> g d-> } \triplet { g16 d g-\v}
				\triplet { d16-> g d-> } \triplet { g16 d g-\v}
				|
				\flam d8 \flam d
				\flam d d:32(
				d16.) g32 d16. d32-\v
				g16. d32-> \triplet {g16 d g }
				|
			} \alternative {
			  {
				\flam d8 \pp g
				g16 g8 g16
				g8 d:32(\<
				d4:)(
			  }
			  {
				\flam d8 \pp g
				g16 g8 g16
				d4
				r8 g8:32(
			  }
			
			\break

			\repeat volta 2 {
				\trian d16} g d \trian g
				d16 g \trian d g
				\trian d8 \cross d8
				\cross d8 d8:32(
				|
				\trian d16) g d \trian g
				d16 g \trian d g
				\trian d8 \cross d8
				\cross d8 d8:32(
				|
				\trian d16 g d \trian g
				d16 g \trian d g
				\trian d16 g d \trian g
				d16 g \trian d g
				|
				\trian d16 g d \trian g
				d16 g \trian d g
				\trian d8 \cross { d16  d}
				\cross d8 d8:32(
			}

			\break
			
			\repeat percent 3 {
				\trian { d4 d4 d8. g16 r16 g8. } |
			}
			\trian { d8. g16
			r8 d8
			r16 g16 r8
			}
			d16 g d g
			
			\bar "||"
			\break

			\repeat percent 3 {
				\trian d16 g d g
				\trian d16 g d g
				\trian d16 g d \trian g
				d16 \trian g d g
			}
			\trian d16 g d \trian g
			d16 g \trian d g
			d16 \trian g d g
			\trian d8 \flam d8

			\break

			\repeat volta 2 {
				\repeat percent 3 {
					\flam d8 \cross d8
					\cross d8 \flam d8
					\cross { d16 d d8 }
					\flam d8 \cross d8
				}
				d16-> g d g->
				d16 g d-> g
				d16 g-> d g
				d8 \flam d8
			}

			\break

			d16->\p\< g d g->
			d16 g d-> g
			d16 g-> d g
			d8 \flam d8
			|
			d16-> g d g->
			d16 g d-> g
			d16 g-> d g
			d8 \flam d8\!
			|
			g8 \rim { d8
			d16 d8 d16
			r16 d8 d16
			d4 }
			\bar "|."



	  }
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = "MWO Steele"
		arranger = "typesetting: Cpl Reesor"
	}
}
