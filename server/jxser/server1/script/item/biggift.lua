--�´������
--Suyu 2004.1.12

--function main(sel)
--	--װ����10��������Ѥ������һ��
--	p=random(1,100);
--	if(p<=10)then
--		AddItem(6,1,15,1,0,0,0)
--	end;
--
 	--��ʯ��50�������ͱ�ʯһ�ţ�
--	p=random(1,100);
--	if(p<=50)then
--		AddEventItem((238+mod(p,3)))
--	end;
--
 	--�������ֵ100000�ĺ��һ����
--	AddItem(6,1,13,1,0,0,0);

 	--�̻���2���̻���
--	AddItem(6,0,11,1,0,0,0);
--	AddItem(6,0,11,1,0,0,0); 
--	return 0
--end

Include("\\script\\changefeature\\feature_man.lua")

function main()
	dofile("script/item/biggift.lua")
	switch_check_feature()
	return 1
end

function switch_check_feature()
	local szTitle = "Xin ch�o! ��i hi�p mu�n ki�m ngo�i trang g�?"
	local tbOpt =
	{
		"Ng�a/#choose_check_feature(4)",
		"V� Kh�/#choose_check_feature(3)",
		"Ao gi�p/#choose_check_feature(2)",
		"M�/#choose_check_feature(1)",
		"M�t n�/#choose_check_feature(0)",
		"Nh�n bao l� x�/nhanlixi",
		"Tho�t/no",
	}
	Say(szTitle, getn(tbOpt), tbOpt)
end


function nhanlixi()
	AddItem(6,1,13,1,0,0,0)
	AddItem(6,1,14,1,0,0,0)
	Msg2Player("�� nh�n 2 bao l� x�.")
end

function choose_check_feature(num)
	SetTaskTemp(168, num)
end