% 4/4 When the Pipers play
% Bass
\version "2.18.2"
composerBass  = "T. Hachmang"
arrangerBass  = "E.T. de Boone, 2019"
bassglobal = {}
% Music
bassEnding = \drummode {
	bd4 r4 r4 r4
}
bassA = \drummode {
	\repeat unfold 7 {
			bd4 r8 bd8 r8 bd8 bd4
	}
	\bassEnding
}

centerbassEnding = \drummode {
	bd4 bd4 bd4 bd4
}
centerbassA = \drummode {
	\repeat unfold 8 {
		bd4 bd4 bd4 bd4
	}
}
