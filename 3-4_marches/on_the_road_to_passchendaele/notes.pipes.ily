% 3/4 On the Road to Passchendaele
% Pipes
\version "2.18.2"
%If not defined, define rodin here
rodin = { \bgrip }

composerPipes = "PM Gavin Stoddart MBE BEM / Alan Brydon"
pipeglobal = {
	\bagpipeKey
	}
pipesA = {
	\grg a8. [ b16 ] \grip c4~ c8 [ \grG c8 ] |
	\grg d8 [ f8 ] \dble e4 c4 |
	\grg a8. [ b16 ] \grip c4~ c8 [ e8 ] |
	\grg \triplet { f8 e8 c8 } \grg b2  |

	\grg a8. [ b16 ] \grip c4~ c8 [ \grG c8 ] |
	\grg d8 [ f8 ] \dble e4 c4 |
	\grg a8. [ b16 ] \grip c4~ c8 [ e8 ] |
	\dbld d4 \rodin a2 
}

pipesB = {
	\grg f8. [ g16 ] \dblA A4~ A8 [ g8 ] |
	\grA f8 [ A8 ] \hdble e4 \grd c4 |
	\grg a8. [ b16 ] \grip c4~ c8 [ f8 ] |
	\dble \triplet { e8 [  d8 c8 ] } \grg b2 
}

pipesBA = {
	\grg f8. [ g16 ] \dblA A4~ A8 [ g8 ] |
	\dblf f8 [ A8 ] \dble e4 c4 |
	\grg a8. [ b16 ] \grip c4~ c8 [ e8 ] |
	\dbld d4 \rodin a2 
}
pipesBB = {
	\grg a8. [ b16 ] \grip c4~ c8 [ \grG c8 ] |
	\grg d8 [ f8 ] \dble e4 \grd c4 |
	\grg a8. [ b16 ] \grip c4~ c8 [ e8 ] |
	\dbld d4 \rodin a2 
}
