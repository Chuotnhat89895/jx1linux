-- ս��ϵͳ
-- Fanghao_Wu 2004-12-6
function GameSvrConnected(dwGameSvrIP)
	SyncAllLadder(dwGameSvrIP)
end;
function GameSvrReady(dwGameSvrIP)
end

function TaskShedule()
	TaskName( "Relay B�ng x�p h�ng" );
	TaskInterval( 2440 );
	TaskCountLimit( 0 );
	OutputMsg("==========================================================");
	OutputMsg( "[Start] Load B�ng X�p H�ng..." );
	for i=10001, 10300 do 
		LoadLadder(i)
	end
	
end

function TaskContent()
	OutputMsg( "Load b�ng x�p h�ng" );
end