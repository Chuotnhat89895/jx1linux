INTERVAL_TIME = 60	

function GetNextTime()
    local hour = tonumber(date("%H"));
    if (hour == 23) then
    	hour = 0;
    else
    	hour = hour + 1;
    end
    return hour, 0;
end

function TaskShedule()
	TaskName("�ua thuy�n r�ng");	
	TaskInterval(INTERVAL_TIME);
	local h, m = GetNextTime();
	TaskTime(h, m);
	OutputMsg("=======================================================")
	OutputMsg("[Start] �ua thuy�n r�ng di�n ra li�n t�c 24h. m�i gi� 1 l�n");
	TaskCountLimit(0);
end

function TaskContent()
	OutputMsg("B�t ��u b�o danh �ua thuy�n r�ng...");
	GlobalExecute("dw LoadScript([[\\settings\\trigger.lua]])");
end
