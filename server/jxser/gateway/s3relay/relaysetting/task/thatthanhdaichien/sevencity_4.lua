Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ���÷�������
	TaskName("SevenCityWar start")
	TaskInterval(24 * 60)
	TaskTime(20, 30)
	TaskCountLimit(0)
	-- ���������Ϣ
	OutputMsg("[Start][SEVENCITY] B�t ��u th�t th�nh ��i chi�n 20:30")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ����
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Start",
			0)
		OutputMsg("[SEVENCITY] B�t ��u th�t th�nh ��i chi�n")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
