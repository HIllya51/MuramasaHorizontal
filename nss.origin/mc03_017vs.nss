//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc03_017vs.nss_MAIN
{

	

	//CP_AllSet("����");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev946_�����֣ӥ��å������`_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc03_017vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_016.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//����L�_ʼ
//�������֣ӥ��å������`
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateTextureSP("�}����", 1000, Center, Middle, "cg/bg/bg001_��e_01.jpg");
	CreateTextureSP("�}�ţ�", 100, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_b.jpg");
	Delete("�ϱ���");
	FadeDelete("�}ɫ�\", 2000, true);

	SoundPlay("@mbgm10",0,1000,true);

	WaitKey(1000);
	
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010a]
��̫�������ߵ����ϡ�
���ܿ�̫���ͻ����ɽ�󣬰����ᵽ���ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010b]
��������ϣ������֮ǰ�ֳ�ʤ����
�������<RUBY text="��������">���ֶ���</RUBY>�ڻ谵�������ж��ţ�
����������������Ҳ�Ѿ��ܳ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����å������`�Ȥ�
//������󡸣ãУ���횶��x�ޤȤ᡹
	CreatePlainSP("�}��д", 20000);

	Cockpit_AllFade2();

	MyLife_Count(0,432);
	CP_IHPChange(0,6,null,false);
	CP_PowerChange(0,300,null,false);

	CP_SpeedChange(0,558,null,false);
	MyTr_Count(0,451);

	CP_HighChange(0,1212,null,false);
	CP_AziChange(0,90,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("�}�ݺ��ձ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");

	Delete("�}�ţ�");
	FadeDelete("�}��д", 500, true);

	CockPit_LockSet(@0,@0);
	CreateTextureEX("�}�����}����", 1000, Center, Middle, "cg/st/3d���å������`_�Tͻ_���Lb.png");
	CP_LockOnMove("@�}�����}����",0,@-100,@-60,null,true);
	Zoom("�}�����}����", 0, 100, 100, null, true);
	Request("�}�����}����", Smoothing);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_LockOnMove("@�}�����}����",300,@0,@-30,null,false);
	Fade("�}�����}����", 300, 1000, null, true);

	CreateSE("SE02","se����_���å��ԥå�_��å�����");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CP_LockOnFade(300,"off",true);

	Wait(300);

	CP_LockOnMove("@�}�����}����",1000,@0,@-100,null,false);
	Wait(800);
	CP_LockOnMove("@�}�����}����",1000,@0,@-30,null,false);
	Wait(200);

	CreateSE("SE02a","se���L_����_���ϕN01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Zoom("�}�����}����", 400, 750, 750, Axl2, false);
	Rotate("�}�����}����", 400, @0, @0, @30, Axl2,false);
	CP_LockOnMove("@�}�����}����",400,@50,@40,Axl2,false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mc03/017vs0010a01">
�����������


{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc03/017vs0020a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ǣ����и���̵����⡣
�����ǵ������������״�������������ŷ�ͬѰ��
<RUBY text="Power">����</RUBY>�ĵ��˳�ʱ�����ġ���<k>
����̫�����ˣ�

������<RUBY text="��·��">����</RUBY>���㣡

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/017vs0030b33">
��ʬ��ʲô�Ĳ�������ˢҪʲô��ɫ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 20000, "#000000");

	CP_LockOnChange(200,false);
	Rotate("�}�����}����", 400, @0, @0, @10, Axl2,false);
	Zoom("�}�����}����", 400, 1500, 1500, Axl2, false);
	CP_LockOnMove("@�}�����}����",400,@50,@80,Axl2,false);

	Wait(300);

	Fade("�}ɫ�\", 150, 1000, null, true);
	Delete("�}�����}����*");
	CP_LockOnDelete();

//�������`�󥽩`
//���ܤ��롣�Ǥ��X��ʳ�餦�������`��
	CreateSE("SE01a","se���L_����_�����`�󥽩`02_L");
	MusicStart("SE01a",0,1000,0,1000,null,true);

	CreateTextureSPadd("�}������", 20120, Center, Middle, "cg/ef/ef044_��b.png");
	SetVertex("�}������", 526, 287);
	Move("�}������", 0, @270, @280, null, true);
	Zoom("�}������", 0, 3000, 3000, null, true);

	CreateTextureSP("�}��", 20100, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	Zoom("�}��", 0, 1200, 1200, null, true);
	Request("�}��", Smoothing);

	Fade("�}������", 200, 0, null, false);
	Move("�}������", 200, -294, -285, null, false);
	Zoom("�}������", 200, 1000, 1000, null, false);
	Rotate("�}������", 200, @0, @0, @36000, null,false);
	Shake("�}������", 200, 40, 10, 0, 0, 500, Dxl2, false);

	Shake("�}��", 200, 100, 0, 0, 0, 1000, null, true);

	CreateColorSP("�}ɫ��", 21000, "#FFFFFF");

	Delete("�}��*");
	Delete("�}ɫ�\*");

	Wait(12);

	CreateTextureSP("�}�ݺ��ձ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	CreatePlainEXadd("�}��д", 1000);
	Fade("�}��д", 0, 500, null, true);

	FadeDelete("�}��д", 1500, false);
	Shake("�}��д", 1200, 0, 40, 0, 0, 500, null, false);
	Shake("@CP_Frame", 1700, 20, 20, 0, 0, 1000, null, false);

	FadeDelete("�}ɫ��", 200, true);

	SetVolume("SE*", 1600, 0, null);

	CreateSE("SE02","se���L_����_�z��������");
	MusicStart("SE02",0,1000,0,850,null,false);

	MyLife_Count(300,360);
	CP_IHPChange(300,5,null,false);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc03/017vs0040a00">
�������ɶ�
��û�㿪��!?��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/017vs0050a01">
�����װ������!!
��Ϊʲô��������û��ֱ�ӻ��У���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ֽźܳ������ǹ���Ǧ��
��ʵ����������˵ģ������������ĸ��ְɡ�


���������ɷ�ŭ���д�Ұ�͹���<RUBY text="��Ӧ">ծ��</RUBY>��
��<RUBY text="Breath">����</RUBY>��<RUBY text="Burn">ȼ��</RUBY>��<RUBY text="Blood">Ѫ��</RUBY>������Ϊ���߲������ӵ�
<RUBY text="����">�������</RUBY>ȫ����û��ҡ�

���ҵ�ս���������ڴ�������״̬��
��
����Եģ����˺�֮ǰһ����<RUBY text="FullSpeed��And��FullSwing">ȫ��ͻ����ȫ������</RUBY>��

����֮ǰ��ͬ��������װ��
��<RUBY text="ChainSaw">��ת�⵶</RUBY>�����Ǳ������������ӻ��ĵ��ߣ�
���ƺ��Ǽ���������ս���ĸ���������ʹ��Ҳ�ܳ�ַ�
�������ܡ�

������صļ粿װ��Ҳ����ֽһ���п������ֱ��˵�
<RUBY text="StageSet">��̨����</RUBY>һ�������Ҳ�����޷���Ц�ˡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc03/017vs0060a00">
����ôǿ���ж���������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/017vs0070a01">
�������ǲ����ͻ�<RUBY text="����">����</RUBY>����
������ֱ�����е���������ǲ�Ҫȥ���Ƕ���
�����Ƚ���������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/017vs0080a00">
�������ӵ������ĸ�ͷ������ʧ���ˡ���Ȼ��
ֻ���º�������
������������ô���գ��Ҹо������Ǹ���ͷ��
�����׶Ը�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/017vs0090a01">
����Űɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ݺ��ձ���ǰ", 2000, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");

//�����ؤ��ƌ���
	CreateTextureEX("�}�ݺ��ձ���", 1100, Center, -960, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	CreateTextureSP("�}�ݿ����،���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	SetBlur("�}�ݿ����،���", true, 3, 500, 60, false);
	PlainSurface("�}�ݿ����،���",1000,2000);

	FadeDelete("�}�ݺ��ձ���ǰ", 300, false);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_ProcessDelete("��`��");
	CP_ProcessDelete("�ٶ�");
	CP_ProcessDelete("�߶�");
	CP_ProcessDelete("����");

	CP_AziChange(3000,270,DxlAuto,false);
	Move("�}�ݿ����،���", 3000, 0, @0, AxlDxl, false);
	CP_AltChange(600,45,null,false);
	CP_RollBarMove2(600,-90,null,false);
	RotateSurface(600,90,DxlAxl,false);

	Wait(600);

	CreateSE("SE01a","se���L_����_�ռ�����01");
	MusicStart("SE01a",2000,1000,0,1000,null,false);

	Wait(1800);

	CreateSE("SE01b","se���L_����_���ϕN01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Wait(200);

	CP_AltChange(600,0,null,false);
	CP_RollBarMove2(600,0,DxlAuto,false);
	RotateSurface(600,0,DxlAuto,false);

	Wait(300);

	SetVolume("SE*", 2000, 0, null);
	Move("�}�ݺ��ձ���", 300, @0, @40, DxlAuto, false);
	Fade("�}�ݺ��ձ���", 300, 1000, DxlAuto, true);

	DeleteSurface();

	CockPit_LockSet(@0,@0);
	CreateTextureEX("�}�����}����", 2000, Center, Middle, "cg/st/3d���å������`_�Tͻ_���Lb.png");
	CP_LockOnMove("@�}�����}����",0,@100,@-60,null,true);
	Zoom("�}�����}����", 0, 100, 100, null, true);
	Request("�}�����}����", Smoothing);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_LockOnMove("@�}�����}����",300,@0,@-30,null,false);
	Fade("�}�����}����", 300, 1000, null, true);

	CreateSE("SE02","se����_���å��ԥå�_��å�����");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CP_LockOnFade(300,"off",true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������Ҫ��˵��
���Ҵ�������״̬�������˱�֮ǰ��Σ�ա�

��������һ�������ܲ�ס��
��ֻҪ�����һ�����Ҿͻ�ʧȥ����ս����������

���Լ����µ�������ֻ�����Լ��Ĳ�����������
����һ�غϣ��Լ���һ�غϣ����¾��Ǿ����������ķ�
ˮ�롣


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������������
	CP_LockOnMove("@�}�����}����",1000,@0,@-100,null,false);
	Wait(800);
	CP_LockOnMove("@�}�����}����",1000,@0,@-30,null,false);
	Wait(200);

	CreateSE("SE02a","se���L_����_���ϕN01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Rotate("�}�����}����", 400, @0, @0, @-20, Axl2,false);
	Zoom("�}�����}����", 400, 300, 300, Axl2, false);
	CP_LockOnMove("@�}�����}����",400,@-50,@40,Axl2,true);

	CreateColorEX("�}ɫ�\", 19900, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����������һ��ս���ɡ�
�����ڣ������ֱ����ս�����һ�ɥ����

�����Ѿ����������ˣ������ڵ�����״̬�Կ�ǿ���Ĺ�
�������β�������ս���ء�
������Ҫ���ؿ�������������

����ǰȥһ��ʤ��������������ģ�����˵��
��
������������������ֻҪ����֮�󣬴�ž�û�н�����
�ĵ�����ˡ�

�������Լ��жϴ����ʱ��һ�����Ѿ���������·��
�����ԡ���������һ˲�䣬һ��Ҫ��ϸ������������


�����ȣ�����ͷ���������˱���Ҫȷ�ϵ����
���Ҽ�̵ذ�˳�����˴�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}ɫ�\", null);

	Delete("�}�ݺ���*");
	Cockpit_AllFade0();
	CP_LockOnDelete();

	CreateTextureSP("�}��", 19000, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");

	FadeDelete("�}ɫ�\", 1000, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mc03/017vs0100a00">
�����������𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/017vs0110a01">
������ʹ����������ɱ��Ϊ���ⲻ�Ǳ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/017vs0120a00">
������Ϊ���ﻹ��<RUBY text="����">����</RUBY>�������𣿡�



{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/017vs0130a01">
����������ء�
����������������ƺ����������͡���������
����Ϯ���ǽ����رܵĻ��أ�Ӧ�ò���̫Ƶ��
��ʹ�á���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/017vs0140a00">
�������г�����ĵص㻹�ڸ����𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/017vs0150a01">
����Ϊս��ʱ�ƶ���λ�ã�������Щ���롣
�����򼸺�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���á�
������޶ȸ��ʵ����鶼���ˡ�Ҳûʱ����������ˡ�


��������ս�ƻ��ɡ�
�����ȣ���һ�غϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k������룯����

}

..//������ָ��
//������롡"mc03_017vsa.nss"
//��������"mc03_017vsb.nss"

//���x�k֫���`��
scene mc03_017vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm10",0,1000,true);

	CreateTextureSP("�}��", 5000, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("����","����");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
//������롡"mc03_017vsa.nss"
				$GameName = "mc03_017vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//��������"mc03_017vsb.nss"
				$GameName = "mc03_017vsb.nss";
		}
	}
}

