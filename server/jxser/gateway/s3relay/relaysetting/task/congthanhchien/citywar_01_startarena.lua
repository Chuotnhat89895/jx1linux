Include("\\RelaySetting\\Task\\congthanhchien\\citywar_head.lua")
function TaskShedule()
	TaskName("Ph��ng T��ng- tr�n L�i ��i b�t ��u");
	TaskSetMode(1);
	TaskSetStartDay(1, 5);
	TaskInterval(7);
	TaskTime(20, 0);
	TaskCountLimit(0);
end

function TaskContent()
	if (cw_CanStart(1,3) == 1) then
		StartArena(1);
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
