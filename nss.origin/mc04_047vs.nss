//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_047vs.nss_MAIN
{

	

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

	//CP_AllDelete();

	$GameName = "mc04_048vs.nss";

}

scene mc04_047vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_046vs.nss"


//������������

	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm13",0,1000,true);

//	CreateColorSP("�}ɫ100", 20000, "BLACK");
	CreateTextureSP("�}����50", 100, Center, 0, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
//	SetBlur("�}����50", true, 3, 800, 200, false);
	Request("�}����50", Smoothing);
	Shake_Loop("@�}����50","shake01");

	CreateTextureEX("�}��", 1590, center, middle, "cg/st/3d�����˜�_�T��_���Lb.png");
	Request("�}��", Smoothing);
	Rotate("�}��", 0, @0, @0, @50, null,true);
	Zoom("�}��", 0, 300, 300, null, true);
	Move("�}��", 0, @0, @-1000, null, true);
	SetBlur("�}��", true, 2, 200, 100, false);
	Fade("�}��", 0, 1000, null, true);
	Shake_Loop("@�}��","shake02");

	CreateSE("SE01","se���L_����_�z_�ٶ�ʧ��01");
	CreateSE("SE10","se���L_����_��ͻ�M05");

	FadeDelete("�ϱ���", 1000, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}����50", 30000, @0, @-1500, Dxl2, false);
	Move("�}��", 2000, @0, @1000, Dxl2, true);
	FadeF4("�}��", 0, 1000, 60000, 0, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������������۶ϵ���׼������С�
������ͬ������ͼ����ս�ˡ�

������֮ǰ����������
��
����������ϲ���Ҳ����ν��

��������������<RUBY text="������������">ֻҪɱ���ͺ�</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc04/047vs0010a00">
����Űε������𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/047vs0020a01">
���������ã�
���������㡭����


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/047vs0030a00">
���Ǽ����أ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/047vs0040a01">
������ֻ�ܶ�ʱ�䡣
������������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/047vs0050a00">
���á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ƴ��������������棬�����Ļ�����;��ϡ�
����Ҫ�����Ѿ����塣

��������ֻ��ʵ�У�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SE02","se����_���å��ԥå�_������04");
	CreateSE("SE03","se���L_����_��ͻ�M08");

	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("�}��", 500, @5, @20, Dxl2, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 300, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("�}��", 1000, 500, 500, Axl3, false);
	Move("�}��", 1000, @-100, @-600, Axl3, true);


	SetVolume("SE*", 1000, 0, null);
	ClearFadeAll(1000, true);

}

..//������ָ��
//�Υե����롡"mc04_048vs.nss"

