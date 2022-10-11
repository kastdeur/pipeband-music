\version "2.22.1"

\include "lilydrum.ly"
\include "strathspey.side.ily"

% Scores
\score {
	\new PipeBandDrumStaff {
       	\time 4/4
		\drummode {
		  \repeat volta 2 { \pone \midone \pone \endone }
		  \break
		  \repeat volta 2 { \ptwo \midone \ptwo \endone }
		  \break
		  \repeat volta 2 { \pthree \midone \pthree \endone }
		  \break
		  \repeat volta 2 { \pfour \midone \pfour \endone }
		  \break
		  \repeat volta 2 { \pfive \midone \pfive \endone }
		  \break
		  \repeat volta 2 { \psix \midone \psix \endone }
		  \break
		  \repeat volta 2 { \pseven \midone \pseven \endone }
		  \break
		}% End of drums %
	}
	\header {
		title = "Strathspey Standard"
		meter = "Strathspey"
		composer = "E.T de Boone, 2021"
		instrument = "Side"
	}
}
