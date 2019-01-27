% 5/4 Cullen Bay
% Side
\version "2.18.2"
composerSide  = "R. Gankema"
sideglobal = {
	\eighthBeaming
}

% Music
snareEnd = \drummode {
	\tutti {
		d8.->) g16
		d8:32( g16.) d32->
		g16. g32 \flam d8->
		g16. d32:128( d16.) g32
		d8:32( g)
		|
		\flam d8-> d8:32(
		\triplet { g16) d g } \flam d8->
	}
	g16. d32-> g16. g32
	\flam d8-> d16. g32->
	d16. d32 \flam g8->
	|
	\tutti {
		\flam d8.-> g16
		d8 \flam d16.-> g32
		\triplet { d16 g d } \flam g8->
		d4:32(\< d4)\!
	}
	|
}
snareA = \drummode {
	\flam d8-> d8:32(
	\triplet { g16) d g } \flam d8->
	g16. d32-> g16. g32
	\flam d8-> d16. g32->
	d16. d32 \flam g8->
	|
	\tutti {
		\flam d8.->) g16
		d8:32( g16.) d32->
		g16. g32 \flam d8->
		g16. d32:128( d16.) g32
		d8:32( g)
		|
		\flam d8-> d8:32(
		\triplet { g16) d g } \flam d8->
	}
	g16. d32-> g16. g32
	\flam d8-> d16. g32->
	d16. d32 \flam g8->
	|
	\tutti {
		\flam d8.-> g16
		d8 \flam d16.-> g32
		\triplet { d16 g d } \flam g8->
		d4:32(\< d4)\!
	}
	|
}

snareB = \drummode {
	d8:32( g16.) d32->
	g16. g32 d8:32(
	g16.) d32-> g16. g32
	\flam d4->
	\tutti {
		d4:32(
		|
		d8.->) g16
		d8:32( g16.) d32->
		g16. g32 \flam d8->
		g16. d32:128( d16.) g32
		d8:32( g)
		|
		\flam d8-> d8:32(
		\triplet { g16) d g } \flam d8->
	}
	g16. d32-> g16. g32
	\flam d8-> d16. g32->
	d16. d32 \flam g8->
	|
	\tutti {
		\flam d8.-> g16
		d8 \flam d16.-> g32
		\triplet { d16 g d } \flam g8->
		d4:32(\< d4)\!
	}
	|
}

snareC = \drummode { \snareA }

snareD = \drummode {
	\flam d16.-> g32 d16. \flam g32->
	d16. g32 \flam d16.-> g32
	d16. \flam g32-> d16. g32
	\flam d4->
	\tutti {
		d4:32(
		|
		d8.->) g16
		d8:32( g16.) d32->
		g16. g32 \flam d8->
		g16. d32:128( d16.) g32
		d8:32( g)
		|
		\flam d8-> d8:32(
		\triplet { g16) d g } \flam d8->
	}
	g16. d32-> g16. g32
	\flam d8-> d16. g32->
	d16. d32 \flam g8->
	|
	\tutti {
		\flam d8.-> g16
		d8 \flam d16.-> g32
		\triplet { d16 g d } \flam g8->
		d4:32(\< d4)\!
	}
	|
}