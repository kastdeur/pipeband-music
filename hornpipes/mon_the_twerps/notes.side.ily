% 2/4 Mon the Twerps
% Side
\version "2.18.2"
composerSide = "Carel Ooms, 10-10-2015, Version 1.2"
arrangerSide = ""
sideglobal = {
  \eighthBeaming
  %\sixteenthBeaming
}
% Music
snareA = \drummode {
	\tutti {
		\flam d16-\v g g |
		d4:32(-\v
		d16)-> g32 g\< d\! d\< g\! g
		|
		d16-\v g32 g d16 \flam g->
	}
	d16 \tutti {
		g
		\flam d \flam g
		|
		\flam d8-\v
	} g32 d\< d\! g
	d16 \flam g-> d g 
	|
	\tutti { \flam d32-> } g d16 g16 \tutti { \flam d }
	g16 \tutti {
		\flam g d32 g d g
		|

		d8-\v g32 d\< d\! g
		d16 \flam g->
	} d \tutti {
		g
		|
		\flam d32 d g16-> d g
		\flam d16 \flam g->
	} d32 g d g
	|
	\tutti {
		d16-\v g32 g d16 g->
	}
	d16 \tutti { \flam g } d g
	|
	\flam d32 d g16-> d \tutti {
		\flam g
		\flam d16-\v g g g
	}
}

snareBA = \drummode {
	\tutti {
		g16 |
		d8:32(\> g16)\! g
		d8[ \sruff d16-> g]
		|
		d16 \flam g
	} d32 g g \tutti {
		d
		\flam g16 g d \flam d
		|
		\flam d16->
	} g32 g\< d\! d\< g\! g
	d16 \tutti { \flam g d g
		|
		d8:32(->
	  } \tutti { \grace{s16} g16)-> } \tutti { 
		g16:64(->% Grace needed to fix unison over accented note
		g16:64 d)-\v g g
	}
	|
}
snareBBA = \drummode {
	\tutti { \grace{s16} d32-> } g d d \tutti { \grace{s32} g32-> } d g g% Grace needed to fix unison over accented note
	\tutti { d16 \flam g-> } d \tutti {
		g
		|
		\flam d32 d g16-> d g
		\flam d16 \flam g->
	} d32 g d g
	|
	\tutti {
		d16-\v g32 g d16 g->
	}
	d16 \tutti { \flam g } d \tutti {
		g
		|
		\flam d32 d g16-> d \flam g
		\flam d8.-\v g16
	}
}
snareBBB = \drummode {
	\flam d8[ \flam g16-> g]
	d16[ \flam g-> d32 g d g]
	|
	d8.[:32(-\v \> g16)]
	d16[:64(->\< d16)\! g16:64(->\< g16)\!]
	|
	d16[-\v g32 g d16 g->]
	d16[ \flam g d g]
	|
	\flam d32[ d g16-> d \flam g]
	\flam d8.[-\v g16]
}
snareC = \drummode {
	\tutti {
		\flam d8-\v \flam g-\v
		d16[ \flam g->
	} d32 g d g]
	|
	\tutti {
		d16[-> g32 g d->
	} g \tutti { \grace{s16} d32-> } g]
	d32[ d \tutti {
		g16-> d g]
		|
		\flam d16[->
	} g \drag d \tutti { \grace{s16} d16]-> }
	g16[ \tutti { \drag d d-> } \triplet { g32 d d] }
	|
	\tutti {
		g16[-> d \flam g d:64(]->
		g16[:64 g)-\v d32 g d g]
		|
	
		d16-> g \flam d \flam g->
	}
	d16 \tutti {
		\flam g-> d32 g d g
		|
		d16->
	} g32 g d16 \tutti { 
		\flam g->
		d32 g d g d16-> g
		|
		d16-\v g32 g d16 g->
	}
	d16 \tutti { 
		\flam g d g
		|
		\flam d4-> d4:32(\<
	
		d8)->\! \flam g->
		d16 \flam g-> d32 g d g
		|
		d16-> g32 g d16 \flam g->
		\flam d4->
		|
		d16 g32 g d->
	} g \tutti { \grace{s16} d32-> } g
	d32 d \tutti { 
		g16-> d g
		|
		\drag d16 d d d 
		d4-\v
	}
}
