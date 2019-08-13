\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

snare_royal_scots_polka = \drummode {
	\repeat volta 2 {
		\partial 8
		\snareApart \snareMid
		\snareApart \snareEnd
	}
	\break

	\repeat volta 2 {
		\partial 8
		\snareBApart \snareMidTwo

	} \alternative {
		{ \snareBApart \snareEnd }
		{ \snareBDpart \snareEnd }
	}
	\bar "||"
	\break

	\repeat volta 2 {
		\partial 8
		\snareCpart \snareMid
		\snareCpart \snareEnd
	}
	\break

	\repeat volta 2 {
		\partial 8
		\snareDApart \snareMidTwo
	} \alternative {
		{ \snareDApart \snareEnd }
		{ \snareDDpart \snareEnd }
	}
	\bar "|."
}
\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		\snare_royal_scots_polka
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}

\score {
	\new PipeBandDrumStaff {
		\global
		\sideglobal
		\unfoldRepeats \snare_royal_scots_polka
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}