Include("\\script\\misc\\rank\\rank.lua")

function TaskShedule()
	TaskName( "Save Equip Rank At Monday 3:00" );
	TaskInterval( 1440 );
	TaskTime( 3, 00 );
	TaskCountLimit( 0 );
	OutputMsg("==========================================================");
	OutputMsg( "[Start] Update v� Save danh s�ch Rank (gi� tr� ��) v�o th� 2 L�c 3:00" );
end

function TaskContent()
	local nCurWeekDay = tonumber(date("%w"));
	if (nCurWeekDay == 1) then
		OutputMsg( "[Start] Update v� Save danh s�ch Rank (gi� tr� ��)" );
		tbRankClass:SortAndSave("FUNC_RANK_EQUIPVALUE");
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end