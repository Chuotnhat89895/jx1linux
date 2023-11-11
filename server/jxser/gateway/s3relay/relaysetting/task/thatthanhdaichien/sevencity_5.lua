Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	TaskName("SevenCityWar close")
	TaskInterval(24 * 60)
	TaskTime(21, 30)
	TaskCountLimit(0)
	OutputMsg("[Start][SEVENCITY] K�t th�c th�t th�nh ��i chi�n 21:30")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ����
	if (day == 5) then
		BattleWorld:Close()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Close",
			0)
		OutputMsg("[SEVENCITY] K�t th�c th�t th�nh ��i chi�n")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
