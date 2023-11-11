IncludeLib("TONG")
INTERVAL_TIME = 1440
function TaskShedule()
	TaskName("B�o tr� h�ng ng�y");
	TaskInterval(INTERVAL_TIME);
	TaskTime(0, 0);
	TaskCountLimit(0);
	OutputMsg("[Start] B�o tr� bang h�i 24:00 h�ng ng�y")
end

function TaskContent()
	local nTongID = TONG_GetFirstTong()
	OutputMsg("[Start] B�o tr� bang h�i 24:00 h�ng ng�y")
	while (nTongID ~= 0)do
		OutputMsg("�ang ti�n h�nh b�o tr� bang:  "..TONG_GetName(nTongID))
		TONG_ApplyMaintain(nTongID)
		nTongID = TONG_GetNextTong(nTongID)
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
