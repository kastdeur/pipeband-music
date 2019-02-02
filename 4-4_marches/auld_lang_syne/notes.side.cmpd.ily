% 4/4 Auld Lang Syne
% Side
\version "2.18.2"
composerSide = ""
arrangerSide = ""
sideglobal = {
	\eighthBeaming
}
% Music
snareA = \drummode {

  \flam d8[ d8]:32(
  g8[) \flam d8]
  d8[:32( g8])
  d8[:32( g8])
  |
  \flam d8[ d8]:32(
  g8[) \flam d8]
  d8[:32( g8])
  d8[:32( g8])
  |
  \flam d8[ d8]:32(
  g8[) \flam d8]
  d8[:32( g8])
  d8[:32( g8])
  |
  \tuplet 3/2 { d16 g \backstick d } \tuplet 3/2 { g16 d \backstick g }
  d4 
  \flam d4 
  r4
}
