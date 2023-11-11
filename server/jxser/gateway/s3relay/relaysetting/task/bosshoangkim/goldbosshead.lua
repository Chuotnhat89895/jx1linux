
function GameSvrConnected(dwGameSvrIP)
bFind , key1, mapid = GetFirstRecordFromSDB("GoldBoss",Sid, 0, 1, 0);
if (bFind == 1) then 
	if (IsMapOnGameSvr(mapid, dwGameSvrIP ) == 1) then 
		bResult , npctid, npclevel, npcstate = GetCustomDataFromSDB("GoldBoss", Sid, mapid, "iii");		
		if (bResult == 1) then 
			success = SaveCustomDataToSDBOw("GoldBoss", Sid, mapid, "iii", npctid, npclevel, 0);
			NotifySDBRChanged1Svr(dwGameSvrIP, "GoldBoss", Sid ,mapid ,1);		
			msg = format("Ph��ng �n Qu�i Ho�ng Kim %d, ph�t hi�n GameSvr %d kh�i ��ng k�t n�i v�i Relay, xu�t hi�n qu�i v�t, khu v�c %d, ID Npc%d,   ��ng c�p Npc%d.", Sid, dwGameSvrIP, mapid, npctid, npclevel);
			OutputMsg(msg);
		else
			success = ClearRecordOnShareDB("GoldBoss",Sid, 0,1,0);		
		end;
	else
		OutputMsg("M�y ch� kh�i ��ng l�i kh�ng t�n t�i Boss d��i ��y:"..Sid);
	end
end

end;

function GameSvrReady(dwGameSvrIP)
end

function TaskShedule()
	TaskName("Boss Ho�ng kim"..Sid)
	TaskInterval(Interval)
	TaskCountLimit(Count)
	if (StartHour ~= -1 and StartMin ~= -1) then 
		TaskTime(StartHour, StartMin);
	end;
	success = ClearRecordOnShareDB("GoldBoss",Sid, 0,1,0);
	OutputMsg("X�a d� li�u qu�i v�t Ho�ng kim trong database"..Sid);
end

function TaskContent()
	bFind , key1, key2 = GetFirstRecordFromSDB("GoldBoss",Sid, 0, 1, 0);
	if (bFind == 1) then
		OutputMsg("T�m th�y d� li�u qu�i v�t Ho�ng kim rong database".. Sid..","..key2.."D� li�u ph��ng �n");
		bResult , npctid, npclevel, npcstate = GetCustomDataFromSDB("GoldBoss", Sid, key2, "iii");
		msg =	format("D� li�u %d trong ph��ng �n qu�i v�t Ho�ng kim l� Npc: %d, ��ng c�p:%d, Tr�ng th�i: %d", Sid, npctid, npclevel, npcstate);
		OutputMsg(msg);
		if (bResult == 1) then 
			if (npctid == 0 and npcstate == 0 and npclevel == 0) or (npctid ~= 0 and npclevel ~=0 and npcstate == 0) then 
				create, mapid, npcid, npclevel = NewBoss();
				if (create == 1) then 
					msg = format("Qu�i v�t Ho�ng kim %d trong ph��ng �n kh�ng c� ho�c �� ch�t, s�p xu�t hi�n qu�i v�t ho�ng kim m�i, s� h�nh m�u Npc l� %d, ��ng c�p Npc %d.   ", Sid, mapid, npcid, npclevel);
					OutputMsg(msg);
					success = SaveCustomDataToSDBOw("GoldBoss",Sid, mapid, "iii", npcid, npclevel, 0);
					NotifySDBRecordChanged("GoldBoss", Sid ,mapid ,1);
				end
			end
		end
	else
		create, mapid, npcid, npclevel = NewBoss();
		msg = format("Qu�i v�t Ho�ng kim %d trong ph��ng �n kh�ng t�n t�i, s�p xu�t hi�n qu�i v�t ho�ng kim m�i, s� h�nh m�u Npc l� %d, ��ng c�p Npc %d   ", Sid, mapid, npcid, npclevel);
		OutputMsg(msg);
		success = SaveCustomDataToSDBOw("GoldBoss",Sid, mapid, "iii", npcid, npclevel, 0);
		NotifySDBRecordChanged("GoldBoss", Sid ,mapid ,1);
	end
end

