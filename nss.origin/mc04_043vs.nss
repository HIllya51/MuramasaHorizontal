//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_043vs.nss_MAIN
{

	
//���å��ԥå��ãӣ��
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

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc04_043vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mc04_042vs.nss"


//������������
	PrintBG("�ϱ���", 30000);

	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Wait(1000);

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	CreateTextureSP("�}����50", 100, Center, -1400, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Request("�}����50", Smoothing);

	Delete("�ϱ���");


	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	CP_SpeedChangeA();
	FrameShake();

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(0,272,null,false);
	CP_IHPChange(0,3,null,false);

	CP_LockOnFade(0,"off",false);
	CP_EnemyFade(0,10,220,300);
	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);

	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se���L_����_��ͻ�M01",1000);

	DrawDelete("�\Ļ��", 200, 100, "slide_02_01_1", false);
	Move("�}����50", 1000, @0, @-100, Dxl2, true);

	SoundPlay("@mbgm13",0,1000,true);

	BGMoveAuto("@�}����50",1);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������Ц��������
������Ť�����������������ϲ�ø�����

�������������졣
���Ǹ���ʿ��ɱ������֮���Ƿ�Ҳ����ͬ����
������Ц��

�������š�
��ϲ���š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mc04/043vs0010a01">
��������
�����Ϸ�һ����ȡ�����


{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc04/043vs0020a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 4000, 1100, null);


	CreateTextureEX("�}����100", 1500, 0, -2500, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Zoom("�}����100", 0, 1000, 1000, null, true);
	Move("�}����100", 0, @0, -1500, null, true);
	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3d�Х���_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 50, 50, null, true);
	SetBlur("�}��", true, 1, 300, 100, false);
	Move("@�}��", 0, @0, @-50, null, true);

	CreateSurfaceEX("�}Suf",1000,2000,"�}����100");

	OnSE("se���L_����_��ͻ�M03",1000);

	CP_HighChange(1000,421,null,false);
//	CP_SpeedChange(1000,540,null,false);
	CP_AziChange(1000,-22,Axl1,false);

	Fade("�}����100", 0, 1000, null, true);
	Fade("�}Suf", 300, 1000, null, false);
	Rotate("�}Suf", 1500, @0, @0, @-180, AxlDxl,false);
	Move("�}����100", 1500, @0, -4000, AxlDxl, false);
	Move("@�}����50", 500, @0, @-200, Axl2, false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	CP_RollBarMove2(1000,180,AxlDxl,true);
	CP_RollBarMove("@�}����50",0,0,null,true);


	Move("@�}����50", 0, -512, -388, null, true);
	Fade("�}Suf", 300, 0, null, false);
	Move("@�}����50", 300, -512, -158, Dxl2, true);
	Move("@�}��", 0, @0, @-50, Dxl2, false);
	Fade("@�}��", 300, 1000, null, false);
	Move("@�}����50", 300, -512, -188, AxlDxl, true);

	BGMoveAuto("@�}����50",1);

	Delete("�}����100");
	Delete("�}Suf");

	SetVolume("SE10", 3000, 300, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����������������ڳ�����������̬�ơ�
�����岢�����ء���������˵<RUBY text="����">û��</RUBY>������
�·��ؿ����¶���ʧ��һ�㡣

������˵����ʵ���������
����ͨ��������ת�������อȫ����ȥ����


����˲Ż�������
�����е�һ�ж�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х����u�ġ������`��
	CreateColorEXadd("�}ɫ100", 18500, "WHITE");
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev949_�Х�������.jpg");
	SetBlur("�}����100", true, 1, 500, 70, false);

	Move("@�}��", 400, @0, @50, Axl3, false);
	Zoom("@�}��", 400, 1500, 1500, Axl3, false);

	Wait(200);

	Fade("�}����100", 200, 1000, null, false);
	Zoom("�}����100", 500, 1100, 1100, Dxl2, true);
	Move("�}����100", 500, @2000, @500, Axl3, false);
	Zoom("�}����100", 500, 5000, 5000, Axl2, false);
	Wait(350);
	Fade("�}ɫ100", 100, 1000, null, true);

	Delete("�}����100");

	OnSE("se���L_����_�z��������02",1000);
	SetFrequency("SE10", 2000, 900, null);

	Delete("@�}��");

	BGMoveDelete();
	MyLife_Count(2000,152);
	MyTr_Count(2000,132);
	CP_HighChange(2000,386,Dxl1,false);
	CP_SpeedChange(2000,391,Dxl1,false);

	Wait(300);

	FadeDelete("�}ɫ100", 1000, false);
	Shake("�}����50", 3000, 30, 15, 0, 0, 1000, Dxl2, false);
	Move("�}����50", 2000, @0, -1200, Dxl2, true);

	BGMoveAuto("@�}����50",1);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����ʶ����Զȥ��
��
�����ٴθ��ϡ�

���ղ�һ����׼����ͷ����
��ͷ��û������������ǽ��ҡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0030a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ⲻ����������
��
����������Ĺ����ܸо���Щ<RUBY text="����">̫��</RUBY>��

����Ȼ�����������ɻ�Ӱ����������ʵ��һ��ʼ
��֪������������˻��Ǹо�����̫����
����ֱ���������е���ʽ��

������ϷŪ��
��������ô���׾ͽ��������ҵ��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0040a00">
�����ԡ����ɣ�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��ֱ�����Է񶨡�
���Ǹ���ʿ����������<RUBY text="������">������</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х���
	SetVolume("SE10", 1000, 1, null);


	CreateTextureEX("�}����200", 18020, Center, Middle, "cg/ev/ev205_ʸ��Ĥ��ŤĥХ���_a.jpg");
	CreateTextureEX("�}����300", 18030, Center, Middle, "cg/ev/ev205_ʸ��Ĥ��ŤĥХ���_b.jpg");

	Fade("�}����200", 500, 1000, null, true);
	BGMoveDelete();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������ɱ���Ǵ���ġ�
��һ��׷���ҵ��������ڴ˹����и��ܻ�ϲ��

�����⡢��һ��ɱ��Ը����
������Ҫɱ�ͺ�����ԥ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦�Υ��륨�åȣ��ؤͤ�
	Fade("�}����300", 500, 100, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������������ȫ����ͻȻ��
��
����ʲô���Ժ����ص�������

�������ӡ��
������һ������ȫ��ͬ�ġ���<k><RUBY text="����">Ӧ��</RUBY>
��ȫ�޹ص�ӡ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/mc04/043vs0050a01">
������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 1000, 300, null);
	FadeDelete("�}����200", 300, false);
	FadeDelete("�}����300", 300, false);
	Move("�}����50", 500, @0, -900, Dxl3, true);

	BGMoveAuto("@�}����50",1);

//���F�g�͎�

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0060a00">
��������������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/043vs0070a01">
���벻Ҫ���������顣��


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/043vs0080a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����ͷ���ܵ������Ӱ����
���������ļ��������ϻ���ʵ���ң���˲��֮ǰ��
�뷨�����Ժ�

���������ǣ��ղš�
��������Ҫ������ĳЩ�������о��������Ҷ��Լ�Ϊ��Ҫ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/mc04/043vs0090a01">
��<RUBY text="����">��Щ</RUBY>���Ƕ���ģ�
�������ɣ�ר��˼�����ڵ�ս��������

//��������
<voice name="����" class="��������" src="voice/mc04/043vs0100a01">
�����ˣ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/043vs0110a00">
��!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ޤ�һ�ġ����`��
	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3d�Х���_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 50, 50, null, true);
	SetBlur("�}��", true, 1, 300, 100, false);
	Move("@�}��", 0, @0, @-50, null, true);

	CreateColorEXadd("�}ɫ100", 18500, "WHITE");

	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("@�}��", 200, 1000, null, false);
	Move("@�}��", 500, @0, @-50, Dxl2, true);
	Move("@�}��", 400, @0, @50, Axl3, false);
	Zoom("@�}��", 400, 1500, 1500, Axl3, false);

	Wait(300);
	Fade("�}ɫ100", 0, 1000, null, true);

	OnSE("se���L_�Ɖ�_�z03",1000);
	SetFrequency("SE10", 2000, 800, null);

	Delete("@�}��");
	BGMoveDelete();
	FadeDelete("�}ɫ100", 500, false);
	Shake("�}����50", 3000, 30, 15, 0, 0, 1000, Dxl2, false);
	Move("�}����50", 2000, @0, -1200, Dxl2, true);

	BGMoveAuto("@�}����50",1);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������ֻ���ü����������浲��Ҫ���Ķ�����
���һ�������˳��س������ֱ����衣

����̬��
���������Լ��ǡ����û�б��������ţ�
����Ҳ�ֵܵ��ú�һЩ��

��Ϊ�Լ��е����裬�ҿ�ʼ���������������ơ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ʙC��
	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 4000, 1100, null);


	CreateTextureEX("�}����100", 1500, 0, -2500, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Zoom("�}����100", 0, 1000, 1000, null, true);
	Move("�}����100", 0, @0, -1500, null, true);
	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3d�Х���_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 50, 50, null, true);
	SetBlur("�}��", true, 1, 300, 100, false);
	Move("@�}��", 0, @0, @-50, null, true);

	CreateSurfaceEX("�}Suf",1000,2000,"�}����100");

	OnSE("se���L_����_��ͻ�M03",1000);

	CP_HighChange(1000,-150,null,false);
	CP_SpeedChange(1000,540,null,false);
	CP_AziChange(1000,189,Axl1,false);

	Fade("�}����100", 0, 1000, null, true);
	Fade("�}Suf", 300, 1000, null, false);
	Rotate("�}Suf", 1500, @0, @0, @180, AxlDxl,false);
	Move("�}����100", 2000, @0, -4000, AxlDxl, false);
	Move("@�}����50", 500, @0, @-200, Axl2, false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	CP_RollBarMove2(1000,180,AxlDxl,true);
	CP_RollBarMove("@�}����50",0,0,null,true);
	Zoom("@�}����50", 0, 1100, 1100, null, true);


	Move("@�}����50", 0, -512, -388, null, true);
	Fade("�}Suf", 300, 0, null, false);
	Move("@�}����50", 300, -512, -158, Dxl2, true);
	Move("@�}��", 0, @0, @-50, Dxl2, false);
	Fade("@�}��", 300, 1000, null, false);
	Move("@�}����50", 300, -512, -188, AxlDxl, true);

	BGMoveAuto("@�}����50",1);

	Delete("�}����100");
	Delete("�}Suf");

	SetVolume("SE10", 3000, 300, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���������Ǹղŵ�һ�����������Ի��Ƽ�����������
����һ������Ҳû��ʲô����˼�顣
����ȴֻ�ܵ��˳����

����ԭ�򣬾��ǡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0120a00">
����������Ҳ��С��������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/043vs0130a01">
�����������ǵġ�
������ĸ������ƺܴ󡣡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�����в������ҵ��Ʋ⡣
��ȷʵ�����ֽ�������������ħ������������Ӧ����
�ǲ����ܳ����ġ�

�����Ǵ����֮���û�м���ʹ�ã�����ʯ��
��׼��ʱ�����⻹��������ԭ����
����Ȼ��ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0140a00">
��Ҫ�����Ļ�������ֻ�г���������
���Է����Ǵ�����״̬�ָ�������ս����
���޷��ֲ��ˡ���


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/043vs0150a01">
����ֹ��ˣ������
��ʹ��һ���Ǹ�����Ҳ˵��������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/043vs0160a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����³�����ǻ������ζ��
���þ������ı��ӳ����ʹ�������塣

�����������Ƚ���
������������ᣬ���۶��Ҳ���������Ӱ�졣
�����ټ��������˺��ˡ�

������̫������Ӧ���ơ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������϶�
//���Х���
	OnSE("se���L_����_��ͻ�M01",1000);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Move("@�}��", 400, @0, @50, Dxl3, false);
	Zoom("@�}��", 400, 500, 500, Dxl3, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��û�п���������ҷ�����������Ӧ��
��û���κμ��������͵ؾ�ֱϮ����

����ȷ��ʤ���Ѷ��ı�����
��
����ô�������������Լ��Ĵ��󡭡���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 1000, 1, null);

//�������϶Ρ�����
	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Delete("�}��");
	Cockpit_AllFade0();
	BGMoveDelete();

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	Request("�}����50", Smoothing);

	CreateWindow("�}�ף�", 150, Center, 144, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}������100", 100, Center, middle, "cg/bg/bg001_��a_01.jpg");
	CreateTextureEX("�}�ף�/�}�ӣԣ�", 500, Center, 0, "cg/st/3d�����˜�_�T��_���La.png");
	CreateTextureEX("�}�ף�/�}�ӣԣ̣�", 500, Center, 0, "cg/st/3d�����˜�_�T��_���Ld.png");
	SetBlur("�}�ף�/�}�ӣԣ̣�", true, 1, 300, 100, false);
	Request("�}�ף�*", Smoothing);
	Move("�}�ף�/�}�ӣԣ�", 0, @190, @0, null, true);
	Move("�}�ף�/�}�ӣԣ̣�", 0, @100, @0, null, true);

	OnSE("se���L_����_��ͻ�M01",1000);


	Fade("�}�ף�/�}�ӣԣ�", 300, 1000, null, false);
	Move("�}�ף�/�}�ӣԣ�*", 500, @-190, -450, Dxl2, false);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	Wait(500);

	OnSE("se���L_����_������01",1000);

	Fade("�}�ף�/�}�ӣԣ̣�", 200, 1000, null, false);
	FadeDelete("�}�ף�/�}�ӣԣ�", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���Ӵ���˲�䡣
���ı�̫�����ơ�

���ɾٵ�������Ϊƽ������ࡣ
��ʹ�ô�ͻ�ļ��ơ�

�����˵Ľ��ܾ�û��Ӧ���ҷ��仯�Ķ�����
��������Ҳ�Ѿ�̫�٣�

��ƾ��һ����ȡ���ֳ��룬��ת���ƣ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͻ
	OnSE("se���L_����_��ͻ�M02",1000);

	Move("�}�ף�/�}�ӣԣ̣�", 300, @-1500, @0, Axl3, true);
	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}����50", 100, Center, -400, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Request("�}����50", Smoothing);
	Zoom("�}����50", 0, 1100, 1100, null, true);
	Cockpit_AllFade2();

	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3d�Х���_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 500, 500, null, true);
	SetBlur("�}��", true, 1, 300, 100, false);
	Move("@�}��", 0, @0, @-50, null, true);

	SetVolume("SE10", 1000, 300, null);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("@�}��", 200, 1000, null, false);
	Zoom("@�}��", 500, 550, 550, Dxl2, false);
	Move("@�}��", 500, @0, @-50, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��������޼��ɵ�ֱ������������������
������Ҫ���в������ѡ�

��������һ����ʱ�����٣��ű��ֳ����������Ļ���
���Ǽ򵥡�
���ܶ���֮�ȸ��Է�һ������Ϊ������������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//���Х����ر�
	SetVolume("SE10", 300, 1, null);
	SetVolume("@mbgm*", 300, 0, null);

	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev004_����֦������_b.jpg");
	Request("�}����100", Smoothing);
	SetBlur("�}����100", true, 1, 300, 100, false);

	OnSE("se���L_�Х���_�ܩ`���󘋤�01",1000);
	EffectZoomadd(19000, 500, 100, "cg/ev/ev004_����֦������_b.jpg", false);
	Fade("�}����100", 100, 1000, null, true);

	Wait(500);

	SL_centerout(@0, @0,1000);


	FadeDelete("�}����100", 500, true);


	OnSE("se���L_�Х���_�ܩ`���󘋤�02",1000);
	Zoom("@�}����", 300, 1200, 1200, Axl3, false);
	Move("@�}��", 200, @1500, @50, Axl3, false);
	Zoom("@�}��", 200, 1500, 1500, Axl3, true);

	SL_centeroutfade2(10);
	FadeDelete("@�}��", 100, true);

	Wait(300);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0170a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����ǰ�̳���̫�������â����
��û�д����κζ�����������ա�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0180a00">
�����������𡪡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
������
�����ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0190a00">
������͸�ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��<RUBY text="����������">����͸һ��</RUBY>��
����һ��ʼ��һֱ��

������һ��ë����<RUBY text="����">����</RUBY>Ҳ�Ӳ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0200a00">
������׽ס�ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
������
��
���Ҵ�������ѱ�������
��һ�ж������ա�

������˫ͫ�ס�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
//�����Ĥ����`�󡣏���
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev004_����֦������_b.jpg");
	Request("�}����100", Smoothing);
	SetBlur("�}����100", true, 1, 300, 100, false);

//�����ߣ������`���ؤ��Τ������ز�
	CreateTextureEX("�}����50�ܤ���", 100, Center, 0, "cg/bg/resize/bg202_�����ݳ�����ɽ_01ex.jpg");
//	SetShade("�}����50�ܤ���", MEDIUM);

	OnSE("se���L_�Х���_�ܩ`���󘋤�01",1000);
	EffectZoomadd(19000, 500, 100, "cg/ev/ev004_����֦������_b.jpg", false);
	Fade("�}����100", 100, 1000, null, true);

	Wait(500);

	FadeDelete("�}����100", 500, true);


	CreateColorEXadd("�}ɫ100", 18500, "WHITE");
	Fade("�}ɫ100", 0, 1000, null, true);
	BGMoveDelete();


	OnSE("se���L_����_�z��������03",1000);
	SetFrequency("SE10", 10000, 500, AxlDxl);

	SetVolume("SE10", 1000, 500, null);
	FadeDelete("�}ɫ100", 500, false);
	Shake("�}����50", 3000, 30, 15, 0, 0, 1000, Dxl2, false);
	Move("�}����5*", 2000, @0, -1200, Dxl2, true);



	CreateColorEX("�}ɫ100", 18500, "BLACK");

//���ե��`�ɥ�����
	SetVolume("SE10", 1000, 1, null);
	FadeF4("�}����50�ܤ���", 2000, 1000, 2000, 0, 0, Axl3, false);
	FadeF4("�}����50", 2000, 1000, 2000, 0, 0, Axl3, false);
	Fade("�}ɫ100", 2000, 1000, null, true);

	Wait(200);

//���̥�������
//���ե��`�ɥ���

	SetVolume("SE10", 2000, 300, null);
	FadeF4("�}����50�ܤ���", 4000, 500, 60000, 0, 0, Dxl2, false);
	FadeF4("�}����50", 1000, 1000, 60000, 0, 0, Dxl2, false);
	Fade("�}ɫ100", 1000, 300, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
����ʶ�ٴα��ٳ�û��
���ٶȸ��ϡ��������³���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	SetVolume("SE10", 1000, 1, null);
	FadeF4("�}����50�ܤ���", 2000, 1000, 2000, 0, 0, Axl3, false);
	FadeF4("�}����50", 2000, 1000, 2000, 0, 0, Axl3, false);
	Fade("�}ɫ100", 2000, 1000, null, true);

	Wait(500);

//���ե��`�ɥ���
	SetVolume("SE10", 2000, 300, null);
	FadeF4("�}����50�ܤ���", 4000, 500, 60000, 0, 0, Dxl2, false);
	FadeF4("�}����50", 1000, 1000, 60000, 0, 0, Dxl2, false);
	Fade("�}ɫ100", 1000, 300, null, true);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0210a00">
���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
���о��������ں��ҡ�
��������΢���������塣

����û��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	SetVolume("SE10", 1000, 1, null);
	FadeF4("�}����50�ܤ���", 2000, 1000, 2000, 0, 0, Axl3, false);
	FadeF4("�}����50", 2000, 1000, 2000, 0, 0, Axl3, false);
	Fade("�}ɫ100", 2000, 1000, null, true);

	Wait(500);


//���ե��`�ɥ���
	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 4000, 1000, null);
	Fade("�}ɫ100", 2000, 0, null, false);
	Move("�}����5*", 2000, @0, -400, AxlDxl, false);
	Fade("�}����50�ܤ���", 2500, 0, null, true);



//�����T�ӽ�����å�����
	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3d�Х���_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 100, 100, null, true);
	SetBlur("�}��", true, 1, 200, 50, false);

	CockPit_LockSet(@0,@0);
	CreateSE("SE��å�����","se����_���å��ԥå�_������02");

//	SetFrequency("SE10", 1000, 800, null);
	SetVolume("SE10", 1000, 300, null);

	CP_LockOnMove("@�}��",0,@-200,@-50,null,true);


//�����ߣ���å�����
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
	CP_LockOnMove("@�}��",800,@200,@50,Dxl2,false);
	Zoom("�}��", 5000, 200, 200, Dxl1, false);
	Fade("@�}��", 600, 1000, null, false);

	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,420,300);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
������������ʶ��ɢʱ�������ʱ���ƺ��Ѿ���ȥ
��������ʮ���롣
����׷�ĵ����Ѿ����Ｋ�����롣

���ɾ�����ˡ�����ʶ�����ٴ������ĵط���û��
����
��������������Ϊֹ����ǿ����Ƿ�µ�ծȨ��
ȫ���ڿ����ų��ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0220a00">
�����У�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
����һ�γ��ߵĻ����Ͳ�����������
���������Ļ��ᶼû�С�

��������������
��
���������ԣ���������������ߣ����ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	SetVolume("SE10", 3000, 0, null);
	Fade("�}����50�ܤ���", 2000, 1000, null, false);
	Fade("�}ɫ100", 2000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�����У�
������������Ƭ����Լ���û��

��վ������������ս������

��
����������������������Ϊ�Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0230a00">
������Ϊ�Σ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
�����ĸ��ֳ����������ʡ�
����ʶ����ɢ������������ʲô��Ҫ��������

��ս�������ɡ���
�����ػع�������ʱ���Ѿ����������С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0240a00">
����ɲ��У�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
��ʧȥ<RUBY text="����">����</RUBY>���޷��ٶȷ���

������������
�����ɡ�����ʲô��

�������ڣ���Ϊ�ζ�ս?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k���ؤ뤿�ᣯ��������

}

..//������ָ��
//���ؤ뤿�ᡡ"mc04_043vsa.nss"
//���������ᡡ"mc04_043vsb.nss"

//���x�k֫���`��
scene mc04_043vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	Cockpit_AllFade0();

	CreateColorSP("�}ɫ100", 18500, "BLACK");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("Ϊ���ػ�","Ϊ��ɱ¾");
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
//���ؤ뤿�ᡡ"mc04_043vsa.nss"
				$GameName = "mc04_043vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���������ᡡ"mc04_043vsb.nss"
				$GameName = "mc04_043vsb.nss";
		}
	}
}


