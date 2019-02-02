% 4/4 The Rose of Kelvingrove
% Side
\version "2.18.2"
composerSide = ""
arrangerSide = ""
sideglobal = {
	\sixteenthBeaming
}
% Music
snareA = \drummode {
	\repeat percent 3 {
		d4:32(\< d:32)( d4)\! \flam d4 |
	}
	d4:32(\< d:32)( d8)\! g8 \flam d8 \flam g |

	\repeat percent 2 {
		d4:32(\< d:32)( d4)\! \flam d4 |
	}
	d4:32(\< d:32)( d8)\! g8 \flam d8 \flam g |
	d4:32(\< d:32)( d4)\! \flam d4 |
}
snareB = \drummode {
	\repeat percent 2 {
		d4:32(\< d:32)( d4)\! \flam d4 |
		d4:32(\< d:32)( d8)\! g8 \flam d8 \flam g |
	}

	\repeat percent 2 {
		d4:32(\< d:32)( d4)\! \flam d4 |
	}
	d4:32(\< d:32)( d8)\! g8 \flam d8 \flam g |
	d4:32(\< d:32)( d4)\! \flam d4 |
}
snareC = \drummode {
	\snareA
}
