function TaskShedule()
	TaskName( "Chi�n d�ch T��ng D��ng (T�ng Kim) 20:00" );
	TaskInterval( 1440 );
	TaskTime( 19, 50 );
	TaskCountLimit( 0 );
	OutputMsg("[Start] T�ng Kim 20:00");
end

function TaskContent()
--	Battle_StartNewRound( 1, 1 );		
--	Battle_StartNewRound( 1, 2 );			
	Battle_StartNewRound( 1, 3 );			
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
