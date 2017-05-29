\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.alt.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "bass" {
			\global
			\bassglobal
			\set Staff.instrumentName = \markup{ \instrumentBass }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentBass}
			<<
				{
					\repeat volta 2 { \line } \break
					
					\line \bar "||" \break
					\line \bar "|."
				}%Format
				{
				\bassA

				\bassBA
				\bassBB
				}
			>>
		}
			\new PipeBandDrumStaff = "tenor" {
				\tenorglobal
				\set Staff.instrumentName = \markup{ \instrumentTenor }
				\set Staff.shortInstrumentName = \markup{ \shortInstrumentTenor }

				\tenorA

				\tenorBA
				\tenorBB
			}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup {
			\column \right-align {
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}
\include "./notes.tenor.alt.ily"

\score {
    \new PipeBandDrumStaff {
	\global
	\tenorglobal
	<<
			{
				\repeat volta 2 {
					\part \line
				}
				\break

				\part \line \bar "||" \break
				\line \bar "|."
			}%Format
			{
				\tenorA s8

				\tenorBA
				\tenorBB s8
			}
	>>
	}
	\header {
		title = ""
		meter = ""
		instrument = ""
		composer = \composerTenor
	}
}
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
	\global
	\tenorglobal
	<<
			{
				\repeat volta 2 {
					\part \line
				}
				\break

				\part \line \bar "||" \break
				\line \bar "|."
			}%Format
			{
				\tenorA s8

				\tenorBA
				\tenorBB s8
			}
	>>
	}
	\header {
		title = ""
		meter = ""
		instrument = ""
		composer = \composerTenor
	}
}

\score {
  \new PipeBandDrumStaff {
	\global
	\repeat volta 2 {
	  \part \line
	}
	\break
	\part \line \bar "||" \break
	\line \bar "|."
  }
}

\score {
  \new PipeBandDrumStaff {
	\global
	\repeat volta 2 {
	  \part \line
	}
	\break
	\part \line \bar "||" \break
	\line \bar "|."
  }
}
\score {
  \new PipeBandDrumStaff {
	\global
	\repeat volta 2 {
	  \part \line
	}
	\break
	\part \line \bar "||" \break
	\line \bar "|."
  }
}
\score {
  \new PipeBandDrumStaff {
	\global
	\repeat volta 2 {
	  \part \line
	}
	\break
	\part \line \bar "||" \break
	\line \bar "|."
  }
}
