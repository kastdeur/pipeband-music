%{
    Header formatting for tunes. Customize to get your name in the tag line.
%}

\version "2.16.0"

today = #(strftime "%B %e, %Y" (localtime (current-time)))

\paper {
    raggedbottom = ##t
    tagline = \markup {
        \line {
            "Cpl ET de Boone, Seaforths of Holland,"
            \concat { "(rev. " \today ")" }
        }
    }
    bookTitleMarkup = \markup {
      \override #'(baseline-skip . 3.5)
      \column {
        \fill-line { \fromproperty #'header:dedication }
        \override #'(baseline-skip . 3.5)
        \column {
          \huge \larger \bold
          \fill-line {
            \larger \fromproperty #'header:title
          }
          \fill-line {
            \large \smaller \bold
            \larger \fromproperty #'header:subtitle
          }
          \fill-line {
            \smaller \bold
            \fromproperty #'header:source
          }
          \fill-line {
          \line { \fromproperty #'header:meter }
          \line { \fromproperty #'header:composer " " \italic \fromproperty #'header:arranger }
          }
        }
      }
    }
}
