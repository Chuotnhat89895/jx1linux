Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ���÷�������
	TaskName("SevenCityWar close signup")
	TaskInterval(24 * 60)
	TaskTime(19, 0)
	TaskCountLimit(0)
	-- ���������Ϣ
	OutputMsg("[Start][SEVENCITY] k�t th�c ghi danh th�t th�nh ��i chi�n 19:00")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ����
	if (day == 5) then
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:CloseSignup",
			0)
		OutputMsg("[SEVENCITY] k�t th�c ghi danh th�t th�nh ��i chi�n")
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
