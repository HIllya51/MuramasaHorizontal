
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

scene mc01_019vsb.nss_MAIN
{

	CP_AllSet("����");

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

	Cockpit_AllFade0();

	$GameName = "mc01_020vs.nss";

}

scene mc01_019vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_019vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//���¶�
//�������¶�
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	CreateTextureSP("�}����", 100, InRight, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	Move("�}����", 80000, 0, @0, null, false);

	CreateTextureSP("�}�ݴ���", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���Lb.png");
	Shake("�}�ݴ���", 2160000, 2, 1, 0, 0, 1000, null, false);
	Zoom("�}�ݴ���", 0, 5000, 5000, null, true);
	Move("�}�ݴ���", 0, @500, @1152, null, true);
	SetBlur("�}�ݴ���", true, 2, 400, 60, true);

	$SYSTEM_effect_rain_dencity = 16;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("�}������", 19990, Center, Middle, 288, 512, "Rain");
	SetAlias("�}������","�}������");
	Rotate("�}������", 0, @0, @0, @-90, null,true);
	Zoom("�}������", 0, 2000, 2000, null, true);
	Move("�}������", 0, @400, @0, null, true);

/*
	CreateTextureSP("�}�ݴ���", 1000, OutRight, Middle, "cg/st/3d�����˜�_�T��_���Lb.png");
//	Move("�}�ݴ���", 0, @588, @-85, null, true);
	Move("�}�ݴ���", 0, @0, @-85, null, true);
	Shake("�}�ݴ���", 2160000, 2, 1, 0, 0, 1000, null, false);
	Move("�}�ݴ���", 7500, @-800, @0, DxlAuto, false);
*/


	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);

	//Move("�}�ݴ���", 600, @-500, @-1152, null, false);
	BezierMove("�}�ݴ���", 600, (@0,@0){@-1800,@-400}{@-1200,@-800}(@-200,@-1300), null, false);
	Zoom("�}�ݴ���", 600, 1000, 1000, null, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_01_03_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ڼ����������֮ǰ����Ѹ���������ƽ�����ע���
����������
���ٶȶ�ʱ�����һ���ȼ����̶�����䣬��ǰ������
̫�������ľ��롣

{	Move("�}�ݴ���", 2000, @-30, @0, null, false);}
��������ڵ����ս����δ�Ӷ�֮ǰ��������̫���Ͳ�
׽����Ŀ�ꡣ
����Ȼ�ǲ��õ���ʹ�������ؼ���С������ֻҪ������
����������С�Ľ��������̶ֳȵļ�����ȫ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE00","se���L_����_���ϕN01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 150, 1000, null, false);
	Move("�}�ݴ���", 300, @-1500, @0, Dxl2, true);

	Fade("�}ɫ��", 600, 0, null, false);
	DrawDelete("�}ɫ��", 1200, 1000, "slide_05_00_1", false);

	Wait(600);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}������");
	Delete("�}�ݴ���");
	Delete("�}ɫ��");
	Delete("�}����");

//���ؤ��Ϥ�
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftup2(20010,@0, @0,1500);
	SL_leftupfade2(10);

//�������`��
	CreateSE("SE02a","se���L_����_��ꪏ���02");
	MusicStart("SE02a",0,1000,0,850,null,false);

	CreateColorSP("�}ɫ��", 30000, "#FFFFFF");
	Delete("�}ɫ�\");

	CreateTextureSP("�}�ձ���", 100, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_01.jpg");
	CreateTextureSPadd("�}�ձ�����", 110, Center, Middle, "cg/bg/resize/bg201_�����ݳ������нֵ�a_01.jpg");


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

//������󡸣ãУ�����`���ե饰���������{����
	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	CP_IHPChange(0,$����������{����,null,false);

	MyTr_Count(0,439);
	CP_SpeedChange(0,517,null,false);

	CP_PowerChange(0,710,null,false);

	CP_HighChange(0,1728,null,false);
	CP_AziChange(0,94,null,false);
	CP_AltChange(0,1,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);

	FadeDelete("�}�ձ�����", 1500, false);
	Shake("�}�ձ���*", 1000, 0, 30, 0, 0, 1000, Dxl3, false);
	Shake("@CP_Frame*", 1500, 0, 60, 0, 0, 1000, Dxl2, false);
	FadeDelete("�}ɫ��", 1000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc01/019vs0030a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ָ���Ȼ��Ӳ��
���޷����¶����｣����������!?

�����������Ӧ�Ѿ�������������ˡ�
��ֻҪ�����ز�ͣ����һ�����Ч�ɡ����Ҷ�
����ɱ�����˵Ĵ�����˵�������������΢��
���˵�ս�������Ǹ���ȫ�Ĳ��ԡ�

����֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mc01/019vs0040a01">
�������Ϸ�������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc01/019vs0050a00">
���ƺ�������ô��Ϊ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 19000, "#000000");
	Fade("�}ɫ�\", 300, 1000, Dxl2, true);
	Cockpit_AllFade0();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ܶ϶�����ġ����������֡�ֻ�Ż�������<RUBY text="����">�²�</RUBY>
Ǳ��Ķ��֡��������ˡ�
������������ˣ�����ζ�����¶��ϻӵ�ɱ�������
�����ǿ��еġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//������ָ��
//�Υե����롡"mc01_020vs.nss"

}

