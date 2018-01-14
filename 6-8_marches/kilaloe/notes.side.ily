% 6/8 Kilaloe
% Side
\version "2.18.2"
composerSide = ""
arrangerSide = ""
sideglobal = {}
\include "../../standards/68_standards.side.ily"

% Music
endfour = \drummode {
	\flam d4. d4.:32(
	|
	d4.)
}
pone = \drummode {\pempty}
ptwo = \drummode {\pone}
pthree = \drummode { \pempty }
pthreeb = \drummode {s8 | s2. | s4. \flam d4. |}
pfour = \drummode { \pthree }
pfourb = \drummode {\pthreeb}


snareA = \drummode {
	\pone \midone \pone \endfour
}

snareB = \drummode {
	\ptwo \midone \ptwo \endfour
}

snareCA = \drummode {
	\pthree \midone \pthree \endfour
}
snareCB = \drummode {
	\pthree \midone \pthreeb | r2.^\markup{Yell} \endfour
}

snareDA = \drummode {
	\pfour \midone \pfour \endfour
}
snareDB = \drummode {
	\pfour \midone \pfourb | r2.^\markup{Yell} \endfour
}


