Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ���÷�������
	TaskName("SevenCityWar prepare")
	TaskInterval(24 * 60)
	TaskTime(20, 0)
	TaskCountLimit(0)
	-- ���������Ϣ
	OutputMsg("[Start][SEVENCITY] Chu�n b� b�t ��u th�t th�nh ��i chi�n 20:00")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ����
	if (day == 5) then
		BattleWorld:Clear()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Prepare",
			0)
		OutputMsg("[SEVENCITY] Chu�n b� b�t ��u th�t th�nh ��i chi�n")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
