function TaskShedule()
	TaskName("Tin t�c t� ��ng - th�ng b�o");
	TaskInterval(20);
	-- TaskTime(0, 0);
	TaskCountLimit(0);
	OutputMsg("==========================================================");	
	OutputMsg("[Start] T� ��ng Th�ng B�o");
end

g_strTipMsg = 
	{
		"Trong tr� ch�i khi ��i tho�i v�i V� binh Th�nh m�n c�a c�c th�nh th� v� �� t� ti�p d�n c�c m�n ph�i � c�c T�n Th� th�n �� hi�u ���c c�c h��ng ph�t tri�n k� n�ng c�a t�ng m�n ph�i v� khu v�c luy�n c�ng th�ch h�p.",
		"N�u b�n ph�t hi�n m�nh b� m�t nh�ng k� n�ng �� h�c ���c, h�y h�i s� s� h�c ���c c�c k� n�ng nh� Huy�t Chi�n B�t Ph��ng, V� T�m Tr�m, Thi�n V��ng Chi�n � (Thi�n V��ng Bang) , c�ng v�i T�m Nh�n v� Thi�n La ��a V�ng (���ng M�n) .",
		"M�t b� ph�n ng��i ch�i sau khi ho�n th�nh [Nhi�m v� c�p 90] c�a m�n ph�i ch�a th� nh�n ���c k� n�ng, sau khi [h�i s�] v� [Vi�n Quan tho�i nhi�m] L�m An �� ch�nh s�a l�i [183,182]) ",
		"M�t b� ph�n ng��i ch�i ���ng M�n sau khi h�c [T� ti�n thu�t. B�o V� L� Hoa] g�p t�nh tr�ng kh�ng th� s� d�ng B�o V� L� Hoa, sau khi tr� v� [h�i s�] l�i ��n [Vi�n quan Tho�i Nhi�m] L�m An �� ch�nh s�a l�i [183,182]) .",
		"M�t b� ph�n ng��i ch�i V� �ang g�p t�nh tr�ng b� m�t �i�m k� n�ng, sau khi v� [h�i s�] ��n [Vi�n Quan Tho�i Nhi�m] l�m An �� ch�nh s�a l�i (L�m An [183,182]) ",
		"S� d�ng [Kim Th�o L�] luy�n c�p trong v�ng 1 gi� s� ���c �i�m kinh nghi�m g�p ��i: S� d�ng [B�ch C�u ho�n] trong v�ng 1 gi� s� ���c [t� ��ng ��nh qu�i]. C�ng n�ng c�a 2 lo�i d��c ph�m n�y s� ���c m� v�o ng�y ",
		"[H� th�ng ph�c duy�n] th�ng qua th�i gian ch�i t�ng d�n �� ��i l�y �i�m ph�c duy�n. D�ng �i�m ph�c duy�n ��n [Th�n b� th��ng nh�n Li�u �t] T��ng D��ng �� ��i l�y c�c lo�i v�t ph�m ��c th�.",
		"[H� th�ng ph�c duy�n] ��i tho�i v�i [V� L�m truy�n nh�n] � c�c th�nh th� �� bi�t th�ng tin chi ti�t.",
		--"[Ho�t ��ng Trung Thu] �n b�nh trung thu, ng�m tr�ng s�ng, v�nh th�, gi�i c�u �� ch�-----ho�t ��ng �ang tri�n khai to�n di�n, nhi�u ph�n th��ng �ang ch� ��n b�n! Vui l�ng ��n L� Quan c�c th�nh th� �� h�i th�m chi ti�t.",
	};
	
-- �¹���Ԥ����Ϣ
g_nFutureDate = 20040723;
STR_HEAD_FUTURE = " [Giang h� truy�n r�ng]";
g_strFutureMsg = {};
function TaskContent()
	str = "";
	nFutureCount = getn(g_strFutureMsg);
	nCount = getn(g_strTipMsg) + nFutureCount;
	nIndex = random(1, nCount);
	if (nIndex <= nFutureCount) then
		str = getFutureMsg();
		if (strlen(str) <= 0) then 
			str = getTipMsg();
		end
	else
		str = getTipMsg();
	end
	
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", str));
end

function getTipMsg()

	nCount = getn(g_strTipMsg);
	nIndex = random(1, nCount);

	return g_strTipMsg[nIndex];
end

function getFutureMsg()
	nCurDate = tonumber(date("%Y%m%d"));
	str = "";
	if (g_nFutureDate > nCurDate) then
		nCount = getn(g_strFutureMsg);
		nIndex = random(1, nCount);
		str = STR_HEAD_FUTURE..(g_strFutureMsg[nIndex]);
	end
	
	return str;
end
