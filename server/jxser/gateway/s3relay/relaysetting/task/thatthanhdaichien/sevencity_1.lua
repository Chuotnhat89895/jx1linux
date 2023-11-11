Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	TaskName("SevenCityWar start signup")
	TaskInterval(24 * 60)
	TaskTime(18, 0)
	TaskCountLimit(0)
	OutputMsg("==========================================================")
	OutputMsg("[Start][SEVENCITY] ��ng k� th�t th�nh ��i chi�n th� 6 18:00 h�ng tu�n")
end

function TaskContent()
	local day = tonumber(date("%w"))
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:StartSignup",
			0)
		OutputMsg("[SEVENCITY] B�t ��� ghi danh th�t th�nh ��i chi�n")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
