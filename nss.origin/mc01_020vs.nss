//<continuation number="190">

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

scene mc01_020vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mc01_020vs.nss","DelusionIn",true);
	Conquest("nss/mc01_020vs.nss","LensMove",true);
	

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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Request("@��󥺣�", UnLock);
	Request("@��󥺥ץ�����", UnLock);
	Request("��󥺣�", UnLock);
	Request("��󥺥ץ�����", UnLock);
	Delete("@��󥺥ץ�����");
	Delete("��󥺥ץ�����");
	Delete("@��󥺣�");
	Delete("��󥺣�");

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_020vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_019vsaa.nss"
//ǰ�ե����롡"mc01_019vsab.nss"
//ǰ�ե����롡"mc01_019vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//������
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateSE("SEL01a","se���L_����_������02_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateTextureSP("�}����", 100, Center, InBottom, "cg/bg/bg202_�����ݳ�����ɽa_01.jpg");
	CreateTextureSP("�}�ݴ������}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
	SetBlur("�}�ݴ������}", true, 2, 300, 150, false);
	Move("�}�ݴ������}", 0, @-380, @60, null, true);

	MusicStart("SEL01a",1000,1000,0,500,null,true);
	MusicStart("SEL01b",1000,500,0,2000,null,true);
	Shake("�}�ݴ������}", 2160000, 2, 1, 0, 0, 1000, null, false);
	Move("�}�ݴ������}", 2300, @30, @-60, Dxl2, false);
	Fade("�}�ݴ������}", 300, 1000, null, true);

	Delete("�ϱ���");
	FadeDelete("�}ɫ�\", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������֮�����ƿ�˵���ѳɶ��֡�
����˵���ڹؼ���Ҫ����������װ�׶��ҷ���������
�ĵ����ֻҪ�ҷ���δ�����¶���������Ͳ���
��ս�ܡ�

��������ˣ���ȴʮ���鷳��
���ҷ�ȷʵ�н�������ɡ���˵����������������Ϯ
�������µ������Ǹ��˿��º���ǰ�ĵ�����ͬһ
��Ӫ�İɡ�

��ֻҪһ�뵽����¸��н���Ļ��<RUBY text="����">����</RUBY>ȼ��
�������ף����ĵ��������Լ����ġ�


��ά���侲��ʲô����Ҫ����
�����ļ����ܱ������ò���ʧ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 500, 0, null);
	SetBlur("�}�ݴ������}", true, 0, 500, 200, false);


//����ܞ
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}�ݴ������}", 600, 1250, 1250, Axl2, false);
	Move("�}�ݴ������}", 600, @-700, @576, Axl2, true);

	SetBlur("�}����", true, 2, 500, 60, false);
	Move("�}����", 1800, @0, 0, Axl2, false);

	Wait(1400);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("�}����", 100, Center, InTop, "cg/bg/resize/bg002_��a_01.jpg");
	Wait(700);

	Move("�}����", 650, @0, @-100, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���������������ι켣���ٴν���Ӱ�����������Ұ�С�
��
�����������ܺá�������ת�Ի�����׾�ĵ�������������̬
�ƺ��ٻ���Щ��

����������ڳ�������ס���ƣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���M��
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("�}�ݴ������}");

	CreateSE("SEL01a","se���L_����_������02_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	CreateTextureSP("�}����", 100, Center, InTop, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

//������󡸣ãУ�����`���ե饰�ǥ饤���{����
	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ����� ;
	}

	MyLife_Count(0,$�����饤���{����);

	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	CP_IHPChange(0,$����������{����,null,false);

	MyTr_Count(0,440);
	CP_SpeedChange(0,531,null,false);

	CP_PowerChange(0,680,null,false);

	CP_HighChange(0,1800,null,false);
	CP_AziChange(0,251,null,false);
	CP_AltChange(0,-2,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);

	FrameShake();

//������󡸣ãУ����Ǥ��¤��򤤤Ƥ���Τ�΢��˽��¤����롹
	CP_HighChange(60000,1673,null,false);
	Move("�}����", 60000, @0, @-288, null, false);

	MusicStart("SEL01a",1000,1000,0,500,null,true);
	MusicStart("SEL01b",1000,500,0,2000,null,true);

	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��Ҳ������׵Ĳ��ݴ������Ǳƽ��������������
�ľ���ʱ���������������˻�ת��
����ʹ���ڿ�ʼͻ����Ҳ������˳��ȡ�����ơ�

���������ǡ����û��ᣡ
�������н����ع����������˲�λ����ԣ��


{	CreateSE("SE02","se���L_����_������02");
	MusicStart("SE02",0,1000,0,1000,null,false);}
���������ս�̫����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//���ʥ��ե����ȡ��त�ߖ˾����ߤߤäȣ�
//�����΄����äݤ�Ҋ�����������
	CreateSE("SE01","se����_Ѫ_��Ѫ01");
	CreateColorSPmul("�}ɫ��", 17010, "#9900CC");
	CreateTextureSPover("�}�݄���", 17000, Center, Middle, "cg/data/worm_01_00_0.png");
	DrawTransition("�}�݄���", 0, 0, 500, 500, null, "cg/data/zoom_01_00_0.png", true);

	MusicStart("SE01",0,1000,0,500,null,false);
	DelusionIn();

	FadeDelete("�}ɫ��", 600, false);
	DrawDelete("�}�݄���", 600, 100, "worm_01_00_0", true);

//�������ä��˄ݤ������
	MyTr_Count(300,262);
	CP_SpeedChange(2000,337,AxlDxl,false);

	CP_HighChange(60000,896,null,false);
	Move("�}����", 60000, @0, @-576, null, false);

	CP_AltChange(0,-6,null,false);
	CP_AltChangeA();
	CP_RollBarMoveA();

	CP_RollBarMove2(300,10,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������������������������������ָ��ȴ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/mc01/020vs0010a01">
��������������

//��������
<voice name="����" class="��������" src="voice/mc01/020vs0020a01">
���㡢������ʲô!?
��ι�����ڿɲ������ʱ�򡪡���


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/020vs0030a00">
���֡���ָ�������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��<RUBY text="����������">��ָ������</RUBY>��
��
����������Ӧ�ش����仰��ȴ�����˹Źֵ�
��������

����ͷҲ�ǡ�
����ͷ�������촽Ҳ�޷�������

��<RUBY text="����">���</RUBY>�ˡ�
����ָ����ͷ���촽��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc01/020vs0040a00">
���⡪���ѵ��ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��ȫ��ë������
���붼��Ըȥ��Ŀ����������Ժ������ң�
�޷�ͨ������ȥ��������ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090a]
//��������
<voice name="����" class="��������" src="voice/mc01/020vs0050a01">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`����
	CreateSE("SE03","se����_���å��ԥå�_������04");
	MusicStart("SE03",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE03") / 2;

	CreateColorEXover("�}ɫ̽��", 20000, "#66FF66");
	Fade("�}ɫ̽��", $�Еr�g, 1000, null, true);
	DrawDelete("�}ɫ̽��", $�Еr�g, 1000, "slide_02_00_0", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090b]
//��������
<voice name="����" class="��������" src="voice/mc01/020vs0060a01">
������
�������ѵ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������쳣�Ĵ�����̽�����ҵ����ڡ�
���ó��Ľ����ƺ�ӡ֤���������˲���ļ��衣

�����������ǰ��
�������ر�������������в�û�м����ų�ֵ�ͻ��
�����������ǣ������ڵĴ�����ȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("�}�ݺ���", 1100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Move("�}�ݺ���", 0, @-300, @-120, null, true);
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 150, 150, null, true);
	Move("�}�ݺ���", 300, @0, @-30, null, false);
	Fade("�}�ݺ���", 300, 1000, null, true);

	OnSE("se����_���å��ԥå�_��å�����",1000);
	CockPit_LockSet(@-300,@-150);
	CP_LockOnFade(300,"on",false);

	SetFwC("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/020vs0070b33">
���ðѱ�ҧ�����ֱ��жϰ�������
�������������ˣ���ͷ���¡�����!!��

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc01/020vs0080a00">
���㡭����

//��������
<voice name="����" class="����" src="voice/mc01/020vs0090a00">
�����⡪���쵰!!��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/020vs0100a00">
����Ȼ��Ϊ��ʿ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����˸��ɱ��ĸ��С�
���ǹ��󡭡�����ֻ�ǽ����Ĺ���

������ͿĨ�š�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc01/020vs0110a00">
���ö��𡪡�!?��


{	FwC("cg/fw/fw���å������`_ͨ��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/020vs0120b33">
��ѽ��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm08",0,1000,true);

//�����å������`
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ�\", 30000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	CreateTextureSP("�}�ձ���", 100, -512, Middle, "cg/bg/bg204_�����ر���_01.jpg");

	CreateTextureSP("�}�ݺ������}", 17100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}�ݺ������}", Smoothing);
	Zoom("�}�ݺ������}", 0, 100, 100, null, true);

	Cockpit_AllFade0();
	CP_LockOnDelete();

	Request("@���*", UnLock);

	Delete("@��󥺥ץ�����");
	Delete("@���*");
	Delete("�}�ݺ���");
	Delete("�}����");

	DrawDelete("�}ɫ�\", 150, 100, "slide_01_03_1", true);

	CreateSE("SE02","se���L_����_���ϕN01");
	CreateSE("SE02a","se���L_����_��ͻ�M01");
	MusicStart("SE02",600,1000,0,1000,null,false);
	SetBlur("�}�ݺ������}", true, 2, 500, 80, true);
	Zoom("�}�ݺ������}*", 5000, 200, 200, null, false);
	Move("�}�ݺ������}*", 1800, @0, @-80, DxlAuto, true);
	Wait(100);
	Zoom("�}�ݺ������}*", 5000, 280, 280, null, false);

	Wait(800);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Move("�}�ݺ������}*", 200, @0, @40, DxlAuto, false);
	Zoom("�}�ݺ������}*", 200, 1000, 1000, null, true);

	CreatePlainEX("�}��д", 18010);
	CreatePlainEX("�}��д��", 18020);
	Fade("�}��д", 4000, 400, null, false);
	Fade("�}��д��", 4000, 200, null, false);
	Zoom("�}��д", 4000, 1100, 1100, Dxl2, false);
	Zoom("�}��д��", 4000, 1300, 1300, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���з���ħ������Ρ���
�������������������������ħ�ı��Զ�¶�ǵر�¶������

��ֱ�����ڣ������������ᵽ�����ཻ�Ķ�������
�������
����һ�ж��Ѿ�̫���ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="��������" src="voice/mc01/020vs0130a01">
������!!
�����С�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����У�
�������ҡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k���ܤ�ֹ��룯�رܤ���

}

..//������ָ��
//���ܤ�ֹ��롡"mc01_020vsa.nss"
//���رܤ��롡"mc01_020vsb.nss"

//���x�k֫���`��
scene mc01_020vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("�}�ձ���", 100, -512, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	CreateTextureSP("�}�ݺ������}", 17100, -338, -502, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}�ݺ������}", Smoothing);
	Zoom("�}�ݺ������}", 0, 100, 100, null, true);

	Cockpit_AllFade0();
	CP_LockOnDelete();
	Request("@���*", UnLock);
	Delete("@��󥺥ץ�����");
	Delete("@���*");

	Zoom("�}�ݺ������}*", 0, 1000, 1000, null, true);

	CreatePlainEX("�}��д", 18010);
	CreatePlainEX("�}��д��", 18020);
	Fade("�}��д", 0, 400, null, false);
	Fade("�}��д��", 0, 200, null, false);
	Zoom("�}��д", 0, 1100, 1100, Dxl2, false);
	Zoom("�}��д��", 0, 1300, 1300, Dxl2, false);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("��ס","�ر�");
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
//���ܤ�ֹ��롡"mc01_020vsa.nss"
				$GameName = "mc01_020vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���رܤ��롡"mc01_020vsb.nss"
				$GameName = "mc01_020vsb.nss";
		}
	}
}


.//�ץ�����======================================================

..//���΄���
function DelusionIn()
{
	$SYSTEM_effect_lens_curvature = 10000;
	$SYSTEM_effect_lens_distance = 15;

	CreateEffect("��󥺣�", 19000, -88, -312, 1200, 1200, "Lens");
	SetAlias("��󥺣�", "��󥺣�");
	CreateProcess("��󥺥ץ�����", 1000, 0, 0, "LensMove");
	SetAlias("��󥺥ץ�����","��󥺥ץ�����");

	Request("��󥺣�", Lock);
	Request("��󥺥ץ�����", Lock);

	Request("��󥺥ץ�����", Start);
}

..LensMove
function LensMove()
{
	while(1)
	{
		BezierMove("@��󥺣�", 3000, (@0,@0){@5,@-30}{@25,@-30}(@30,@0){@25,@30}{@5,@30}(@0,@0), null, true);
		BezierMove("@��󥺣�", 3000, (@0,@0){@-5,@-30}{@-25,@-30}(@-30,@0){@-25,@30}{@-5,@30}(@0,@0), null, true);
	}
}
