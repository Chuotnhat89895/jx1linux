Include("\\script\\global\\autoexec_head.lua")
--------------------------------------------------------

xiaoyao_parserby = {

	{625,1057,1674,3323,"\\script\\changefeature\\npc\\box.lua","R��ng ch�a ��"},
	{2609,1057,1645,3281, "\\script\\global\\xiaoyao\\npc\\huongchinam.lua", "H��ng Nam Chi"},
	{2613,1057,1771,3062, "\\script\\global\\xiaoyao\\npc\\camdong.lua", "C�m ��ng"},
	{2614,1057,1787,3073, "\\script\\global\\xiaoyao\\npc\\kiemdong.lua", "Ki�m ��ng"},
	{2612,1057,1595,3242, "\\script\\global\\xiaoyao\\npc\\lunglinh.lua", "B�i Lung Linh"},
	{2608,1057,1750,3225, "\\script\\activitysys\\npcdailog.lua", "V�n B�n S�n"},
	{2610,1057,1666,3112, "\\script\\activitysys\\npcdailog.lua", "Li�u Tam Bi�n"},
	{2611,1057,1657,3287, "\\script\\xiaoyao\\npc\\lythaungoc.lua", "L� S�u Ng�c"},
	{1846,1057,1726,3426, "\\script\\xiaoyao\\npc\\thuyenphu.lua", "Thuy�n Phu"},
	
	{2607,53, 1592,3185,"\\script\\global\\xiaoyao\\npc\\detu_xiaoyao.lua","�� T� Ti�u Dao"},
	{2607,20,3575,6221,"\\script\\global\\xiaoyao\\npc\\detu_xiaoyao.lua","�� T� Ti�u Dao"},
	{2607,99,1691,3193,"\\script\\global\\xiaoyao\\npc\\detu_xiaoyao.lua","�� T� Ti�u Dao"},
	{2607,100,1641,3209,"\\script\\global\\xiaoyao\\npc\\detu_xiaoyao.lua","�� T� Ti�u Dao"},
	{2607,101,1703,3125,"\\script\\global\\xiaoyao\\npc\\detu_xiaoyao.lua","�� T� Ti�u Dao"},
	{2607,121,1966,4480,"\\script\\global\\xiaoyao\\npc\\detu_xiaoyao.lua","�� T� Ti�u Dao"},
	{2607,153,1650,3201,"\\script\\global\\xiaoyao\\npc\\detu_xiaoyao.lua","�� T� Ti�u Dao"},
	{2607,174,1589,3236,"\\script\\global\\xiaoyao\\npc\\detu_xiaoyao.lua","�� T� Ti�u Dao"},
}


function add_allnpc_xiaoyao()
	xiaoyao_xiaoyaobynpc(xiaoyao_parserby)
end

function xiaoyao_xiaoyaobynpc(Tab)
	for i = 1 , getn(Tab) do 
		SId = SubWorldID2Idx(Tab[i][2]);
		if (SId >= 0) then
			npcindex = AddNpc(Tab[i][1],1,SId,Tab[i][3]*32,Tab[i][4]*32,1,Tab[i][6]);
			SetNpcScript(npcindex, Tab[i][5]);
		end;
	end	
end

AutoFunctions:Add(add_allnpc_xiaoyao)