% 2/2 De Jonge Prins van Friesland
% Bass
\version "2.18.2"
composerBass  = ""
bassglobal = {}
% Music
bassA = \drummode {
	r4 |
	d4 g d g |
	d4 r g r |
	d4 g d g |
	d4. g8 d4
	
	r4|
	d4 g d g |
	d4 r g r |
	d4 g d g |
	d2.
}

simpleBassA = \drummode {
	r4 |
	\repeat percent 4 {
		d2 g2 |
		d2 r2
	}
}
