-- �����ļ���ӻ
Include("\\script\\gb_taskfuncs.lua");
function TaskShedule()
	FESTIVAL_SHREWMOUSE = "Thu th�p v�t ph�m bang h�i";
	TaskName("Thu th�p v�t ph�m bang h�i");	
	TaskInterval(15);
	local nNowHour = tonumber(date("%H"));
	local nBeginTime = mod(nNowHour + 1, 24);
	TaskTime(nBeginTime, 0);
	OutputMsg("[Start] Ho�t ��ng Thu Th�p V�t Ph�m - 02:00 , 05:00, 08:00, 11:00, 14:00, 17:00, 20:00, 23:00");
	TaskCountLimit(0);
	gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 3);
end

function TaskContent()
	local nHour = tonumber(date("%H"));
	local nMin = tonumber(date("%M"));
	nResult = hourcheck(nHour, nMin);
	if (nResult == 0) then
		return
	end

	OutputMsg("Ho�t ��ng thu th�p v�t ph�m bang h�i �� b�t ��u cho b�o danh.");
	GlobalExecute("dwf \\script\\missions\\tong\\collectgoods\\collg_gmscript.lua collg_opencellectgoods( 827 )");	--827Ϊ����ռ���Ʒ�׼������mapid
end

function hourcheck(nHour, nMin)
	if (mod(nHour, 3) ~= 2) then
		return 0;
	end
	if (nMin > 55) then
		return 0;
	end;
	return 1;
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
