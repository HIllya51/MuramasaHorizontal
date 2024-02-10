//<continuation number="860">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_029vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md01_029vs.nss","VernierAction",true);
	Conquest("nss/md01_029vs.nss","VernierSet",true);
	Conquest("nss/md01_029vs.nss","VernierAction2",true);
	Conquest("nss/md01_029vs.nss","VernierSet2",true);
	

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
	#bg096_��ᦌm�����ҿ�_01a=true;
	#ev215_���Ф˷�Ū��������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_030.nss";

}

scene md01_029vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_028.nss"

//�������֣��P��
//��������һ̫���������`��
//���w���x���
	PrintBG("�ϱ���", 30000);

	CreateSE("SE01","se���L_����_�z_���04");
	CreateSE("SE01b","se���L_�n��_�nͻ01");

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(400);
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm08",0,1000,true);

	CreateColorSP("�}ɫ�\��", 10, "#000000");
	CreateColorEXadd("�}ɫ��", 10000, "#FFFFFF");

	CreateTextureSP("�}�݄���", 1000, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	CreateTextureEX("�}�݄��r", 1010, Center, Middle, "cg/ef/ef038_�������.jpg");
	Fade("�}�݄��r", 0, 500, null, true);

	CreateTextureSPover("�}��������", 4000, Center, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureSPadd("�}����", 4000, Center, Middle, "cg/ef/ef044_��c.png");

	Delete("�ϱ���");

	Fade("�}ɫ��", 300, 1000, Axl2, false);
	Zoom("�}��������", 200, 3000, 3000, null, false);
	Zoom("�}����", 200, 1500, 1500, Dxl3, false);
	Rotate("�}����", 200, @0, @0, @3600, null,false);

	Wait(170);

	Fade("�}����", 300, 0, null, false);
	Fade("�}��������", 300, 0, null, false);

	WaitAction("�}ɫ��", null);

	Delete("�}����*");
	Delete("�}�݄�*");

	CreateCamera("��", 0, 0, 750);
	SetAlias("��","��");

	MoveCamera("��", 0, @500, @0, @0, AxlDxl, false);

	CreateTextureSP("��/�}�ݱ���", 0, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");
	SetShade("��/�}�ݱ���", MEDIUM);
	Zoom("��/�}�ݱ���", 0, 2000, 2000, null, true);

	CreateTextureSP("��/�}�����}��", 250, Center, InBottom, "cg/st/3d����_����_�i��.png");
	SetVertex("��/�}�����}��", center, bottom);
	Zoom("��/�}�����}��", 0, 750, 750, null, true);

	Request("��/*", Smoothing);

	CreateSE("SE02","se����_����_���S02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MoveCamera("��", 600, @-750, @0, @150, AxlDxl, false);

	FadeDelete("�}ɫ��", 400, true);
	WaitAction("��", null);

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0010a05">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 10000);

	CreateCamera("��", 0, 0, 1000);
	SetAlias("��","��");
	MoveCamera("��", 0, @-500, @0, @0, AxlDxl, false);

	CreateTextureSP("��/�}�ݱ���", 0, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");
	SetShade("��/�}�ݱ���", MEDIUM);
	Zoom("��/�}�ݱ���", 0, 2000, 2000, null, true);

	CreateTextureSP("��/�}�����}��", 250, Center, InBottom, "cg/st/3d�����˜�_����_�i��.png");
	SetVertex("��/�}�����}��", center, bottom);
	Zoom("��/�}�����}��", 0, 750, 750, null, true);

	Request("��/*", Smoothing);

	CreateSE("SE03","se����_����_���S01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MoveCamera("��", 600, @750, @0, @-250, AxlDxl, false);

	FadeDelete("�}��д", 400, true);
	WaitAction("��", null);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0000]
//��������
<voice name="����" class="����" src="voice/md01/029vs0020a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����˳��λӵ��ļ��ҽ��档
�������ϣ��ڿ��бų��𻨣�
��ײ�ĳ������˵ı���Ϯ����

�����ҡ�
�������������ƾ����С�

������ں����������ͬʱ������Ҳ©�������ı�Ϣ��


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateMask("��", 6000, 1024, 0, "cg/mask/ci����å���_05_01.png", false);
	SetAlias("��","��");

	CreateTextureSP("��/�}�ݱ���", 6100, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");
	Zoom("��/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("��/�}�ݱ���", MEDIUM);

	CreateTextureSP("��/�}�����}��", 6100, -695, -923, "cg/st/resize/3d����_����_�i��_ll.png");
	Request("��/�}�����}��", Smoothing);
	Rotate("��/�}�����}��", 0, @0, @180, @0, null,true);

	Move("��", 300, 0, @0, Dxl2, false);

	SetFwC("cg/fw/fw�o��_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0030a05">
������ȥ��ͦ�ʹ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0040a00">
���ܵõ����µİ�����������������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0050a05">
����ëС�ӡ�
�䲻֪������δ��������������ֲ�����
��Ӧ��ҲӦ������һ�������ɡ���

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0060a05">
�����һ�����Ͳ������������ļ�Ȯ��
����һ���ˡ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0070a00">
����ϧ������������������Ļ�������
�Ͳ�Ӧ���������ѡ���̾�֮·�ˡ���

{	FwC("cg/fw/fw�o��_��Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0080a05">
���ϻ���˵����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 10000);

	Delete("��*");
	Delete("��*");

	CreateCamera("��", 0, 200, 2000);
	SetAlias("��","��");

	CreateTextureSP("��/�}��������", 0, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	Rotate("��/�}��������", 0, @0, @0, @-25, null,true);
	Zoom("��/�}��������", 0, 3000, 3000, null, true);
	SetBlur("��/�}��������", true, 3, 500, 60, false);

	CreateTextureSP("��/�}�����}��", 500, Center, InBottom, "cg/st/3d����_����_���L2.png");
	Request("��/�}�����}��", Smoothing);
	SetVertex("��/�}�����}��", center, bottom);
	Zoom("��/�}�����}��", 0, 500, 500, null, true);
	Move("��/�}�����}��", 0, @200, @0, null, true);

	CreateSE("SE01","se����_����_���S01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("��/�}�����}��", 600, @-200, @0, Axl2, false);
	MoveCamera("��", 600, @-130, @-100, @-1000, AxlDxl, false);

	DrawDelete("�ϱ���", 150, 1000, "slide_08_00_0", false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������ŭ��˻����ɱ������
������ʽ��������������������������
Ȼ���������ҷ�������
ȴ�洦�ɼ�<RUBY text="����">����</RUBY>��

���⽫˧֮���������þ�ɳ����֤���ɡ�
�����Ӧ���ƽ����ף�����ȴ����һ˿�ٶۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����", 7000, Center, InBottom, "cg/bg/resize/bg096_��ᦌm�����ҿ�_01al.jpg");
	Move("�}����", 2000, @0, 0, DxlAuto, false);
	Fade("�}����", 2000, 900, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0042]
��Ҫӭս����ļ��񹥻��������̵�Ψ�е������ѡ�
����������״�ĵ��¿ռ䣬����������һ��ѧУ��
��Ⱥ͸߶ȣ�����������˵��
��Ϊʩչ�������ľ������أ���ȫ������

��������������ײ��ǽ��ĳ�̬��
Ψ��վ�ȵ���һս��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����", 600, false);

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0090a05">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���P���϶�
//��仯
	CreateSE("SE01a","se����_����_���S02");
	CreateSE("SE01b","se���L_����_������02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("��/�}�����}��", 300, 0, null, false);
	Move("��/�}�����}��", 300, @60, @0, Axl2, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md01/029vs0100a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͻ
//���������ܤ�
	SL_centerin2(19010,@0, @0,1500);
	CreateColorSP("�}ɫ�\", 19000, "#000000");
	CreateSE("SE02","se���L_����_Ұ̫�����02");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_centerinfade2(10);

	Delete("��/");

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");
	CreateTextureSP("�}�����}����", 1100, Center, InBottom, "cg/st/3d�����˜�_����_�i��.png");
	Request("�}�����}����", Smoothing);
	SetVertex("�}�����}����", center, bottom);
	Zoom("�}�����}����", 0, 900, 900, null, true);

	CreateSE("SE02a","se����_����_���S01");
	MusicStart("SE02a",0,1000,0,1500,null,false);
	Zoom("�}�����}����", 300, 1000, 1000, Dxl3, false);
	Move("�}�����}����", 300, @250, @0, Dxl3, false);
	Delete("�}ɫ�\");

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0110a05">
���ꡪ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����Ȼ��������
����װ���Ϸ����¿���
ȴһ�½��ջ���ߵ�̫����ֱ�̳���

������Լ���Ӧ��΢��һ�㣬
�㱻���ƺ����˰ɡ�
�����ֹ�Ȼ������졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md01/029vs0120a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ݳ����ʤ�ǰ�Υ�����ץȤ������äݤ�Ю�ࡹ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�������õ����֮����һ������
�ƶ�������ʱ�ر���ǣ�ơ�
ɲ�Ǽ䣬��ͬ����̾����֮�°�е������
�����Ǵ�ǰ���Լ�������޷��رܡ�

������Ķ����쳣��

��װ���뼡����ϡ�
���˿�����û��Щ΢��Υ�͸У�
����������ͬ���ĸо���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateMask("��", 200, 0, 0, "cg/data/slide_07_00_0.png", false);
	CreateTextureEX("��/�}��", 4000, Center, Middle, "cg/ev/ev213_�����ȴ����νY�F_b.jpg");
	Zoom("��/�}��", 0, 1200, 1200, null, true);
	Request("��/�}��", Smoothing);

	Move("��/�}��", 0, @0, @-40, null, false);
	Move("��/�}��", 3000, @0, @80, DxlAuto, false);
	Fade("��/�}��", 1000, 850, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101]
���������ʽ�嵶��Ľ����

����������������ϳ�Ϊ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("��/�}��", 1000, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md01/029vs0130a01">
����Ԥ��㣬�з��Ľ��е�ȷ�Ǻ��˲���
������û�г������󡣡�

//��������
<voice name="����" class="��������" src="voice/md01/029vs0140a01">
������<RUBY text="����">����</RUBY>�Ļ�����Ӯ����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0150a00">
���϶�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("��");

//�����á�
//���������P��
//��������һ�W
	CreatePlainSP("�}��д", 10000);
	CreateColorSP("�}ɫ�\", 5000, "#000000");

	Delete("�}�����}*");
	Delete("��");

	CreateTextureSP("�}����", 100, InLeft, -480, "cg/bg/resize/bg096_��ᦌm�����ҿ�_01al.jpg");
	CreateTextureEX("�}�����}", 1010, Center, InBottom, "cg/st/3d����_����_���L.png");
	Move("�}�����}", 0, @-310, @0, null, true);

	CreateSE("SE01","se����_����_�᤺����01");

	DrawDelete("�}��д", 150, 100, "slide_01_03_1", true);
	MusicStart("SE01",0,1000,0,750,null,false);
	Fade("�}�����}", 200, 1000, null, false);
	Move("�}�����}", 250, @60, @0, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_03_1", true);

	WaitAction("@�}�����}", null);

	SetFwC("cg/fw/fw�o��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120a]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0160a05">
������С��!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 10000);

	CreateMask("�}��", 6000, 0, 0, "cg/mask/ci����å���_02_00.png", false);
	SetAlias("�}��","�}��");
	CreateTextureSP("�}��/�}�ݱ���", 6000, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");
	CreateTextureSP("�}��/�}�����}", 6100, 150, -80, "cg/st/3d�����˜�_����_���L.png");
	Request("�}��/�}�����}", Smoothing);
	Zoom("�}��/�}�����}", 0, 1500, 1500, null, true);
	SetShade("�}��/�}�ݱ���", MEDIUM);

	DrawDelete("�}��д", 150, 100, "zoom_01_00_1", true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120b]
//��������
<voice name="����" class="����" src="voice/md01/029vs0170a00">
��ʧ����!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������Ϥ��������`��
	PrintGO("�ϱ���", 30000);

	CreateSE("SE01","se���L_����_�z_���04");
	CreateSE("SE01b","se���L_�n��_�nͻ01");

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(400);
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ�\��", 10, "#000000");
	CreateColorEXadd("�}ɫ��", 10000, "#FFFFFF");

	CreateTextureSP("�}�݄���", 1000, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	CreateTextureEX("�}�݄��r", 1010, Center, Middle, "cg/ef/ef038_�������.jpg");
	Fade("�}�݄��r", 0, 500, null, true);

	CreateTextureSPover("�}��������", 4000, Center, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureSPadd("�}����", 4000, Center, Middle, "cg/ef/ef044_��c.png");

	Delete("�ϱ���");

	Fade("�}ɫ��", 300, 1000, Axl2, false);
	Zoom("�}��������", 200, 3000, 3000, null, false);
	Zoom("�}����", 200, 1500, 1500, Dxl3, false);
	Rotate("�}����", 200, @0, @0, @3600, null,false);

	Wait(170);

	Fade("�}����", 300, 0, null, false);
	Fade("�}��������", 300, 0, null, false);

	WaitAction("�}ɫ��", null);

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");

	FadeDelete("�}ɫ��", 400, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�������Ĺ�����������뽣�滥����ײ��
��
���������ⶼ����Ԥ��֮�У�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 10000);
	Delete("�}����*");
	Delete("�}�݄�*");
	FadeDelete("�}��д", 600, false);

	SetFwC("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0180a05">
����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateTextureSP("�}��", 4000, 0, InBottom, "cg/ev/resize/ev905_����늴œĵ�_al.jpg");
	Move("�}��", 300, @0, -100, null, false);
	Fade("�}��", 300, 1000, null, false);

	Wait(100);

	Move("�}��", 10000, @0, -100, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����������̫������������ͷ������Ȧ������
�������ԶԳƵĻ����ٶ�Ϯ����

����Ұ������ս�񷨣�ľ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����һ�W
//�������`��
//��ʳ��ä��P��
	CreateSE("SE05a","se���L_����_�z_���01");
	MusicStart("SE05a",0,1000,0,700,null,false);
	CreateTextureSPadd("�}����", 13100, -130, -170, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	CreateTextureSP("�}��", 13000, -130, -170, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);

	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	Wait(200);

	CreateSE("SE05b","se���L_�Ɖ�_���k04");
	CreateSE("SE05c","se���L_����_�z��������03");
	MusicStart("SE05b",0,1000,0,1000,null,false);
	MusicStart("SE05c",0,1000,0,800,null,false);

	CreateColorSP("�}ɫ��", 20000, "#FFFFFF");

	Delete("�}��*");

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");

//�������Ҫ����3d����_����_��xb���ݩ`��ͬ������x�L�ݤʤ���
	CreateTextureSP("�}�����}��", 1010, Center, InBottom, "cg/st/3d����_����_��x.png");
	Request("�}�����}��", Smoothing);
	SetVertex("�}�����}��", center, bottom);
	Zoom("�}�����}��", 0, 1000, 1000, null, true);

	Move("�}�����}��", 0, @-100, @0, null, true);

	Zoom("�}�����}��", 700, 900, 900, Dxl3, false);
	Shake("�}�����}��", 1000, 4, 0, 0, 0, 1000, Dxl3, false);
	Move("�}�����}��", 700, @-150, @0, Dxl3, false);


	FadeDelete("�}ɫ��", 400, true);

	SetFwC("cg/fw/fw�o��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0190a05">
���ꡭ���쵰!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����򱻿�������ĵ��ۣ�
������Ԫ˧һ�����ݵ�ŭ��

���ұ�����׼����ȥ��������
��Ѹ��ת���ÿ�����񲿷�������һ��������
ȷʵ�˲���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="��������" src="voice/md01/029vs0200a01">
���Ǽ���ټ�һ�����ܻ��ơ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0210a00">
�����������������ǵóѵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 10000);

	CreateCamera("��", 0, 0, 1000);
	SetAlias("��","��");

	CreateTextureSP("��/�}�����}����", 750, Center, InBottom, "cg/st/3d�����˜�_����_���L.png");
	SetVertex("��/�}�����}����", center, bottom);
	Zoom("��/�}�����}����", 0, 500, 500, null, true);
	Move("��/�}�����}����", 0, @300, @0, null, true);

	CreateTextureSP("��/�}����", 500, Center, Middle, "cg/bg/resize/bg096_��ᦌm�����ҿ�_01al.jpg");

	Request("��/*", Smoothing);

	MoveCamera("��", 2000, @200, @100, 650, AxlDxl, false);

	FadeDelete("�}��д", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����µ����յ����ƣ������š�
���о����Լ��������֮�⡣

������˫�����Ƿ�ŭ��ȴ��������Զ�ľ��롣
��ս�����������ҽ���ת���ɽ����Ƚ������ӡ�

��������������ͻ����
���Լ���������µ�����Ӧ������
�Ϳ����������벻����ʧ�ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
	CreatePlainSP("�}��д", 5000);

	CreateCamera("��", 0, 0, 850);
	SetAlias("��","��");

	//MoveCamera("��", 4000, @-50, @10, @300, AxlDxl, false);

	CreateTextureSP("��/�}�ݱ���", 150, Center, Middle, "cg/bg/resize/bg096_��ᦌm�����ҿ�_01al.jpg");
	Move("��/�}�ݱ���", 0, @200, @-100, null, true);


	CreateTextureSP("��/�}�����}��", 250, Center, InBottom, "cg/st/3d����_����_���L3.png");
	SetVertex("��/�}�����}��", center, bottom);
	Zoom("��/�}�����}��", 0, 750, 750, null, true);

	Request("��/*", Smoothing);

	Delete("�}��*");
	FadeDelete("�}��д", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������γ�����

���������Է����ڵȴ������ȹ��ļ���
������˼���������飬
���Ҳ���ᵥ����������ȥ��
���ȴ���һ����������Ѱ�ҹ���������

�����ң����ɲ��ܹ�ƾ̤ʵ����ս���������
���־�ս�ǳ�Σ�ա�

������һֱδ�أ������ϴ�����Ļ��ʿ��
Ҳ����쵽�쳣��̬�ķ�����
��������һ�����߰ɡ�

�����һ�����ҵ�����Ҳ���ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/md01/029vs0220a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���ؿڵ����͸������������
�����굽���¡���

�������Ǹ��������ߡ�
��һ�ι�ʧ����������

����������һ���յ�֮���ɡ�
�������Ϲ����ã������޷��Ի�Է�����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϵ������`��
	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("��/�}ɫ��", 249, "#FFFFFF");

	Fade("��/�}ɫ��", 0, 400, null, true);
	DrawTransition("��/�}ɫ��", 100, 0, 200, 100, null, "cg/data/circle_13_00_0.png", true);

	VernierAction();
	Shake("��/�}�����}��", 2160000, 0, 2, 0, 0, 1000, null, false);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1500,null,true);
	MusicStart("SEL01b",2000,750,0,1800,null,true);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="��������" src="voice/md01/029vs0230a01">
����!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������©��һ�ġ�
������Ԥ���ĺ�����

�������ƽ�����
������������˷����ƽ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/md01/029vs0240a00">
����Ȼ��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���������������!?
������˾��޵Ŀռ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�o��_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0250a05">
����������ˡ�����

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0260a00">
����������

{	FwR("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0270a05">
��ս�������ӡ�
�����˴���������ʬ������

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0280a05">
�����˶��ĵġ��������ǹ�ζ������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��
	SetVolume("SE*", 150, 0, null);
	CreateSE("SE00","se���L_����_�z_�ϵ�������01");
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	MusicStart("SE01",0,1000,0,500,null,false);
	SetFrequency("SE01", 3000, 1500, Axl2);

	CreateColorSPadd("�}ɫ��", 10000, "#FFFFFF");
	Wait(12);

	Delete("��/�}�����}��*");
	Delete("��/�}ɫ*");
	Delete("�ץ���*");

	MoveCamera("��", 400, @0, @-200, 600, AxlDxl, false);

	Fade("�}ɫ��", 400, 0, null, false);
	DrawTransition("�}ɫ��", 200, 1000, 0, 100, null, "cg/data/slide_06_00_1.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
������������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/md01/029vs0290a00">
�����Ǻ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
���ǰܸ��˽���ô��
������ô�붼����ɱ��Ϊ����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
//�������`��
	CreateColorSP("�}ɫ�\", 19000, "#000000");

	Wait(10);

	CreateSE("SE01","se���L_����_Ұ̫�����02");
	SL_rightdown2(19000,@30, @0,1500);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdownfade2(10);

	CreateSE("SE02a","se���L_�n��_�nͻ01");
	CreateSE("SE02b","se���L_����_��ꪏ���02");

	CreateColorSP("�}ɫ��", 19100, "#FFFFFF");

	Delete("�}ɫ�\");
	Delete("��");

	CreateCamera("��", -700, 0, 1150);
	SetAlias("��","��");

	MoveCamera("��", 300, @0, @0, 1200, AxlDxl, false);

	CreateTextureSP("��/�}����", 0, Center, -450, "cg/bg/resize/bg096_��ᦌm�����ҿ�_01al.jpg");
	Move("��/�}����", 0, @-200, @0, null, true);

	CreateSE("SE03","se���L_����_��ͻ�M02");
	CreateTextureSP("��/�}�����}��", 510, Center, InBottom, "cg/st/3d����_�T��_���L.png");
	SetVertex("��/�}�����}��", center, bottom);
	Zoom("��/�}�����}��", 0, 500, 500, null, true);
	SetBlur("��/�}�����}��", true, 2, 500, 60, true);
	Move("��/�}�����}��", 0, @-450, @60, null, false);

	CreateTextureSP("��/�}�����}", 500, Center, InBottom, "cg/st/3d�����˜�_����_�i��.png");
	Move("��/�}�����}", 0, @-650, @-130, null, true);
	SetVertex("��/�}�����}", center, bottom);
	Zoom("��/�}�����}", 0, 500, 500, null, true);

	Request("��/*", Smoothing);

	CreateTextureSPadd("��/�}����", 505, Center, Middle, "cg/ef/ef044_��c.png");
	Move("��/�}����", 0, @-660, @0, null, true);
	Zoom("��/�}����", 0, 300, 300, null, true);

	Shake("��/�}�����}", 1000, 2, 0, 0, 0, 1000, null, false);

	$�����ƄӾ��x=ImageHorizon("��/�}�����}��")+512;
	Move("��/�}�����}��", 80000, @$�����ƄӾ��x, @0, null, false);
	MoveCamera("��", 160000, 150, -120, 550, Dxl2, false);
	Move("��/�}����", 160000, -100, @0, null, false);

	Rotate("��/�}����", 300, @0, @0, @3600, Dxl3,false);
	Zoom("��/�}����", 300, 600, 600, Dxl3, false);
	Fade("��/�}����", 300, 0, null, false);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	MusicStart("SE02b",0,1000,0,1000,null,false);

	FadeDelete("�}ɫ��", 150, true);

	Wait(1000);

	MusicStart("SE03",0,1000,0,1300,null,false);
	Move("��/�}����", 200, -340, @0, Dxl2, false);
	Move("��/�}�����}��", 200, @$�����ƄӾ��x, @20, null, false);
	Move("��/�}����", 200, @460, @0, Dxl2, false);
	Move("��/�}�����}", 200, @460, @0, Dxl2, false);
	MoveCamera("��", 200, 100, -120, 550, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310a]
���������Ӱ����ʧ��
����ͬһ˲��Ϯ��һ������ǿ��ס��
��׼ȷ��׼���ӵĵ���������ë���Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("��д", 10000);

	Delete("�}*");
	Delete("��");
	Delete("��*");

	CreateColorSPadd("�}ɫ�Щ`�˥���", 2010, "#FFFFFF");
	CreateColorSPadd("�}ɫ�Щ`�˥���", 2000, "#3366CC");

	CreateColorSP("�}ɫ�\", 100, "#000000");

	CreateTextureSP("�}�����}��", 1000, Center, Middle, "cg/st/3d����_�Tͻ_���L2.png");
	Zoom("�}�����}��", 0, 3000, 3000, null, true);

	CreateTextureSP("�}�ݱ���", 100, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");
	SetBlur("�}�ݱ���", true, 3, 500, 60, false);

	$SYSTEM_effect_rain_dencity = 16;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("�}��������", 2010, Center, InTop, 512, 288, "Rain");
	SetAlias("�}��������","�}��������");
	SetVertex("�}��������", center, top);
	Rotate("�}��������", 0, @80, @0, @0, null,true);
	Zoom("�}��������", 0, 4000, 4000, null, true);
	DrawTransition("�}��������", 0, 0, 400, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateEffect("�}��������", 2000, Center, InBottom, 512, 288, "Rain");
	SetAlias("�}��������","�}��������");
	SetVertex("�}��������", center, bottom);
	Rotate("�}��������", 0, @-80, @0, @0, null,true);
	Zoom("�}��������", 0, 4000, 4000, null, true);
	DrawTransition("�}��������", 0, 0, 400, 100, null, "cg/data/slide_02_01_1.png", true);

	Shake("�}�����}��", 2160000, 1, 2, 0, 0, 1000, null, false);

	SetVolume("@mbgm*", 2000, 0, null);

	CreateSE("SE04","se���L_����_�z_�ϵ�������01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Move("�}�ݱ���", 400, @0, 576, AxlDxl, false);
	Zoom("�}�����}��", 400, 0, 0, Dxl1, false);
	DrawDelete("�}ɫ�Щ`�˥���", 200, 1000, "circle_01_00_0", false);
	DrawDelete("�}ɫ�Щ`�˥���", 250, 1000, "circle_03_00_0", false);

	Fade("�}������*", 1600, 0, null, false);

	FadeDelete("��д", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310b]
��������һ������
��������ײ��ǽ�ڣ���ֱ���Ծ��Ĺ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitFade("�}������*", null);

//���£ǣ�
//���P�С���ܞ
//���ڤ���ä��٤��u��
//�����T�������������ܞ������`�뤷���Tͻ����
//������ؿ�������������������Ф�����ǡ�
	CreateWindow("�}��", 19000, 0, 72, 1024, 432, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateColorSP("�}��/�}��ɫ", 19010, "#993300");
	CreateTextureSPmul("�}��/�}�ݱ���", 19020, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");

	CreateSE("SE06","se���L_����_��ͻ�M02");

	CreateTextureSP("�}��/�}�����}��", 19100, OutLeft, Middle, "cg/st/3d����_�T��_���L.png");
	Request("�}��/�}�����}��", Smoothing);
	Zoom("�}��/�}�����}��", 0, 750, 750, null, true);
	SetBlur("�}��/�}�����}��", true, 3, 500, 50, true);
	Move("�}��/�}�����}��", 0, @0, @100, null, true);

//��������ݳ������б����ز��������ؤǻ�ܞ�����뤿������Ĥ򤺤餹��
	SetVertex("�}��/�}�����}��", 600, 650);

	Move("�}��/�}�����}��", 400, 2000, -400, null, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, false);

	MusicStart("SE06",0,1000,0,1500,null,false);
	Rotate("�}��/�}�����}��", 300, @0, @0, @120, Dxl2,false);

	WaitZoom("�}��", null);

	Wait(500);

	CreateSE("SE06a","se���L_�Ɖ�_����02");
	MusicStart("SE06a",0,1000,0,1000,null,false);

	CreatePlainSP("�}��д", 10000);
	CreateTextureSP("�}�����}��", 1000, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}�����}��", Smoothing);
	Rotate("�}�����}��", 0, @0, @0, @180, null,true);
	Zoom("�}�����}��", 0, 0, 0, null, true);

	Delete("�}��");

	Fade("�}������*", 0, 1000, null, false);
	Zoom("�}�����}��", 6000, 100, 100, DxlAuto, false);

	CreateSE("SE07","se���L_����_�z_�ϵ�������01");
	MusicStart("SE07",0,500,0,1000,null,false);

	FadeDelete("�}��д", 2000, false);

	SoundPlay("@mbgm10",0,1000,true);

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/md01/029vs0300a00">
��ʲô!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}�����}��", 30000, 150, 150, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���������ŵĳ���������ǰ��

������ײ��ǽ�ڵĵ��ɲ�Ǽ��ۻء�
�������õ���Ч������������������ơ���

��Ȼ��˫�ŵ�̤ǽ�ڡ�
���ٴγ������Ϯ������!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="��������" src="voice/md01/029vs0310a01">
������Ц�İ�!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 10000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	SL_leftup2(10010,@0, @0,1500);

	CreateColorEXadd("�}ɫ�Щ`�˥���", 910, "#FFFFFF");
	CreateColorEXadd("�}ɫ�Щ`�˥���", 900, "#3366CC");

//��һ�W
	CreateSE("SE01a","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Fade("�}ɫ�Щ`�˥�*", 0, 1000, null, false);
	DrawTransition("�}ɫ�Щ`�˥���", 0, 0, 30, 200, null, "cg/data/circle_01_00_0.png", true);
	DrawTransition("�}ɫ�Щ`�˥���", 0, 0, 60, 100, null, "cg/data/circle_03_00_0.png", true);

	Wait(16);

	Fade("�}ɫ�Щ`�˥�*", 300, 0, null, false);
	DrawTransition("�}ɫ�Щ`�˥���", 300, 30, 0, 400, null, "cg/data/circle_01_00_0.png", false);
	DrawTransition("�}ɫ�Щ`�˥���", 300, 60, 0, 400, null, "cg/data/circle_03_00_0.png", false);

	Zoom("�}�����}��", 300, 2000, 2000, Axl2, false);

	Wait(270);

	Fade("�}ɫ�\", 100, 1000, null, true);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftupfade2(10);

	Wait(12);

//���X��ʳ��ä�
	PrintGO("�ϱ���", 10000);

	Wait(12);

	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	CreateSE("SE03","se���L_����_�z��������");
	CreateSE("SE03b","se���L_����_�z_�����w��01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Delete("�ϱ���");
	WaitKey(10);
	OnBG(100,"bg096_��ᦌm�����ҿ�_01a.jpg");
	FadeBG(0,true);
	FadeDelete("�}��ܞ", 300, false);
	CreatePlainSP("�}��д", 4999);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl3, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
����ȫ�������ϣ�Ҫ�ܿ��ǲ����ܵġ�
�������ӹ��ؼס�

������ü��֮ʱ�����ϰ���
��������������ǳ�ˡ�
����ȫû�з�������Ͼ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����T�ޤ�
//���X�������`��
	PrintGO("�ϱ���", 10000);

	Wait(12);

	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	CreateSE("SE03","se���L_����_�z��������");
	CreateSE("SE03b","se���L_����_�z_�����w��01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Delete("�ϱ���");
	WaitKey(10);
	OnBG(100,"bg096_��ᦌm�����ҿ�_01a.jpg");
	FadeBG(0,true);
	FadeDelete("�}��ܞ", 300, false);
	CreatePlainSP("�}��д", 4999);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl3, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��������ϣ�����ֻ���Σ�����ʵ�����ǡ�
���з�����ʵ�ּ����쳣
�����ϳ���������˶���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣����Х��`����
	CreateTextureEX("�}�ݣţ�", 5100, -545, -524, "cg/ev/resize/ev215_���Ф˷�Ū��������l3.jpg");
	Zoom("�}�ݣţ�", 0, 1300, 1300, null, true);
	CreateSE("SE01","se���L_����_��ͻ�M02");

	CreateTextureEX("�}�ݣţ֣�", 5200, Center, -832, "cg/ev/resize/ev215_���Ф˷�Ū��������l2.jpg");
	Zoom("�}�ݣţ֣�", 0, 1300, 1300, null, true);
	CreateSE("SE01a","se���L_����_��ͻ�M02");

	CreateTextureEX("�}�ݣţ֣�", 5300, -678, -202, "cg/ev/resize/ev215_���Ф˷�Ū��������l.jpg");
	Zoom("�}�ݣţ֣�", 0, 1300, 1300, null, true);
	CreateSE("SE01b","se���L_����_�z_�ϵ�������01");

	SetBlur("�}�ݣţ�*", true, 4, 500, 30, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�ݣţ�", 300, -1022, @0, null, false);
	Zoom("�}�ݣţ�", 300, 1000, 1000, Dxl1, false);
	Fade("�}�ݣţ�", 300, 1000, null, false);

	Wait(270);

	MusicStart("SE01a",0,1000,0,1200,null,false);
	Move("�}�ݣţ֣�", 300, @0, -450, null, false);
	Zoom("�}�ݣţ֣�", 300, 1000, 1000, Dxl1, false);
	Fade("�}�ݣţ֣�", 300, 1000, null, false);

	Wait(270);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Zoom("�}�ݣţ֣�", 300, 1000, 1000, Dxl1, false);
	Fade("�}�ݣţ֣�", 300, 1000, null, true);

	Delete("�}�ݣţ֣�");
	Delete("�}�ݣţ֣�");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/md01/029vs0320a00">
��������������̬����������!?��

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0330a05">
�����껹���ζ�ɵ�ʱ��
����ڴ�½ս����
����������ʯ����Ժ��ӭ���о�����

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0340a05">
���������ʱ���ͳ��ı��찡��
����ëС�ӣ�����ô��ǿҲ��ͽ�͵ģ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ�M��һ�W
//������
	PrintGO("�ϱ���", 10000);

	Wait(12);

	CreateColorSPadd("�}��ܞ", 5000, "#FFFFFF");
	CreateSE("SE03","se���L_����_�z��������02");
	CreateSE("SE03b","se���L_����_�z_�����w��01");
	CreateSE("SE03c","se���L_����_��ͻ�M01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Delete("�ϱ���");
	WaitKey(10);
	OnBG(100,"bg096_��ᦌm�����ҿ�_01a.jpg");
	FadeBG(0,true);
	MusicStart("SE03c",0,1000,0,1000,null,false);
	FadeDelete("�}��ܞ", 150, false);
	DrawTransition("�}��ܞ", 150, 1000, 0, 100, Dxl2, "cg/data/slide_07_00_1.png", true);
	CreatePlainSP("�}��д", 4999);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl3, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/md01/029vs0350a00">
���ǡ��Ǹ��󽫾�����
����ʵ�ǳ�ɫ��ħ���ų���İɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/029vs0360a01">
���Ǹô���˵����ʱ���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݣţ�", 5100, -545, -524, "cg/ev/resize/ev215_���Ф˷�Ū��������l3.jpg");
	Zoom("�}�ݣţ�", 0, 1300, 1300, null, true);
	CreateSE("SE01","se���L_����_��ͻ�M02");

	CreateTextureEX("�}�ݣţ֣�", 5200, Center, -832, "cg/ev/resize/ev215_���Ф˷�Ū��������l2.jpg");
	Zoom("�}�ݣţ֣�", 0, 1300, 1300, null, true);
	CreateSE("SE01a","se���L_����_��ͻ�M02");

	CreateTextureEX("�}�ݣţ֣�", 5300, -678, -202, "cg/ev/resize/ev215_���Ф˷�Ū��������l.jpg");
	Zoom("�}�ݣţ֣�", 0, 1300, 1300, null, true);
	CreateSE("SE01b","se���L_����_�z_�ϵ�������01");

	SetBlur("�}�ݣţ�*", true, 4, 500, 30, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�ݣţ�", 300, -1022, @0, null, false);
	Zoom("�}�ݣţ�", 300, 1000, 1000, Dxl1, false);
	Fade("�}�ݣţ�", 300, 1000, null, false);

	Wait(270);

	MusicStart("SE01a",0,1000,0,1200,null,false);
	Move("�}�ݣţ֣�", 300, @0, -450, null, false);
	Zoom("�}�ݣţ֣�", 300, 1000, 1000, Dxl1, false);
	Fade("�}�ݣţ֣�", 300, 1000, null, false);

	Wait(270);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Zoom("�}�ݣţ֣�", 300, 1000, 1000, Dxl1, false);
	Fade("�}�ݣţ֣�", 300, 1000, null, true);

	Delete("�}�ݣţ֣�");
	Delete("�}�ݣţ֣�");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
��ʵ�������Զ��

������������л��ǻ������ߣ��ٶȲ��̫���ˡ�
����Ϊ����Ψһ���ŵ㣬��������ռ������Ϊ��
����ת�䣬��Ϊ�з���Խ����ļ��ܶ������Ч��

�������ȥ��������Ϊֻ�ܱ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܿ��
//����ܞ�u��������
	CreatePlainSP("�}��д", 10000);

	Delete("�}��*");
	Delete("�}�ţ�*");

	CreateColorSP("�}ɫ�\", 100, "#000000");
	CreateTextureSP("�}�����}��", 1000, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}�����}��", Smoothing);
	Rotate("�}�����}��", 0, @0, @0, @180, null,true);
	Zoom("�}�����}��", 0, 200, 200, null, true);

	Fade("�}������*", 0, 1000, null, false);
	Zoom("�}�����}��", 10000, 800, 800, DxlAuto, false);

	CreateSE("SE07","se���L_����_���ϕN01");
	MusicStart("SE07",0,500,0,1000,null,false);

	FadeDelete("�}��д", 200, false);

	CreateColorEX("�}ɫ�\��", 10000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	SL_leftup2(10010,@0, @0,1500);

	CreateColorEXadd("�}ɫ�Щ`�˥���", 910, "#FFFFFF");
	CreateColorEXadd("�}ɫ�Щ`�˥���", 900, "#3366CC");

	Wait(300);

//��һ�W
	CreateSE("SE01a","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Fade("�}ɫ�Щ`�˥�*", 0, 1000, null, false);
	DrawTransition("�}ɫ�Щ`�˥���", 0, 0, 30, 200, null, "cg/data/circle_01_00_0.png", true);
	DrawTransition("�}ɫ�Щ`�˥���", 0, 0, 60, 100, null, "cg/data/circle_03_00_0.png", true);

	Wait(16);

	Fade("�}ɫ�Щ`�˥�*", 300, 0, null, false);
	DrawTransition("�}ɫ�Щ`�˥���", 300, 30, 0, 400, null, "cg/data/circle_01_00_0.png", false);
	DrawTransition("�}ɫ�Щ`�˥���", 300, 60, 0, 400, null, "cg/data/circle_03_00_0.png", false);

	Zoom("�}�����}��", 300, 2000, 2000, Axl2, false);

	Wait(270);

	Fade("�}ɫ�\��", 100, 1000, null, true);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftupfade2(10);

	Wait(12);

	PrintGO("�ϱ���", 10000);

	Wait(12);

	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	CreateSE("SE03","se���L_����_�z��������");
	CreateSE("SE03b","se���L_����_�z_�����w��01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Delete("�ϱ���");
	WaitKey(10);
	OnBG(100,"bg096_��ᦌm�����ҿ�_01a.jpg");
	FadeBG(0,true);
	FadeDelete("�}��ܞ", 300, false);
	CreatePlainSP("�}��д", 4999);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl3, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
�����ǵ������ˡ�
��������ǿ�������������������������
�������Ͷ�����һֱ������

������Ķ�������Ѹ�٣���������
Ӧ�Ե��ж���ȫ�޷����ϡ�
��������ӭ�����޷�ʵ�С�

�����������汻���ҹ�����
�ܱ�Ҳֻ��ʱ������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/md01/029vs0370a00">
����ô�����죿��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
��Ҫǿ�г�����
�����ǣ���¶������������ʤ���͵���Ϊֹ��

��������Ҳ������еĻ������ǲ���������²ߡ�
�����޷��ﵽ��˼��������ճ�����
��ֻ������η��е���ʿ���ȡ��Ӿʽ���С�

���������У�������ڸ��㡣
������Ϊ����׹�䣬����֮ʱ
�ض���ȡˮƽ���ж�����������ˣ�
�����뿪���棬�����ԼҲ���ɴ���ʧ��

�������ĸ�ѡ�񶼺ܲ�����
�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="��������" src="voice/md01/029vs0380a01">
��������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0390a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
//��������ݳ�������狼���Τ��˱ܡ�
//���ե��`�ɥ�����
//���ե��`�ɥ���
	CreateColorEX("�}ɫ�\", 10000, "#000000");
	Fade("�}ɫ�\", 600, 1000, null, true);

	WaitKey(1000);

*/

//���P�Џ��u
//���������X��ʳ�餦
	CreateColorSP("�}��ܞ", 11000, "#FFFFFF");
	CreateSE("SE04","se���L_����_�z��������");
	CreateSE("SE04b","se���L_����_�z_�����w��01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04b",0,1000,0,1000,null,false);

	Delete("�}ɫ�\");

	WaitKey(10);

	CreatePlainSP("�}��д", 4999);

	FadeDelete("�}��ܞ", 300, false);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl3, true);

	Delete("�}��д");

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0400a05">
�����ǲ������ĵļһ
��ʹ��㽻���Դ����������øɴ�㣡��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0410a00">
��������

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0420a05">
������ϲ�ñ���һ��һ������Ƭ�Ļ���
�����ꡣ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܿ
//�������Ҫ����3d����_�T��2_���L�������w�ӥ��󥰥�Ȥ���������������Ҋ�Ƥ����L���ե����������m����
	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateTextureSPadd("�}����", 3100, -600, -300, "cg/ev/resize/ev215_���Ф˷�Ū��������l.jpg");
	CreateTextureSP("�}��", 3000, -600, -300, "cg/ev/resize/ev215_���Ф˷�Ū��������l.jpg");
	Zoom("�}����", 0, 1000, 1000, null, false);
	Zoom("�}��", 0, 750, 750, Dxl2, true);

	Zoom("�}����", 200, 750, 750, Dxl2, false);
	Request("�}��*", Smoothing);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, false);

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0430a05">
������������

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0440a05">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 15000, "#000000");

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");

	StC(1000, @0, @0,"cg/st/3d�����˜�_����_�i��.png");
	FadeStC(0,true);

	CreateSE("SE010","se����_����_���S03");
	MusicStart("SE010",0,1000,0,1200,null,false);

	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_03_1", true);

	Wait(500);

	CreateSE("SE01","se����_�z_װ��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 10000, "#FFFFFF");

	StC(1000, @0, @0,"cg/st/st����_���L_˽��.png");
	FadeStC(0,true);

	Wait(200);

	FadeDelete("�}ɫ��", 1000, true);

	SetFwR("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0450a05">
��������
�����������𣿣�

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0460a05">
��������
����ͼıЩʲô����

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0470a05">
��Ҫ��ô�죩

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0480a05">
��Ҫ����ֹͣ�����𣿣�

{	FwR("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0490a05">
����������

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0500a05">
����Ӧ����Ŀ�İɣ���

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0510a05">
����ʩ�ɼƽ������ص��棬����������ƣ�

{	FwR("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0520a05">
����������ĵ�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���P��ͻ�M
	PrintGO("�ϱ���", 25000);

	CreateTextureSP("�}�ݱ���", 100, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	CreateColorSP("�}ɫ����װ", 90, "#660000");

	CreateTextureSP("�}�����}��", 1000, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	Zoom("�}�����}��", 0, 600, 600, null, true);

	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}�����}��", 350, 1000, 1000, Dxl2, false);
	DrawDelete("�ϱ���", 150, 100, "circle_01_00_1", true);

	SetFwR("cg/fw/fw�o��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470a]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0530a05">
����˷�ǳ������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}��", 19000, 0, 168, 1024, 240, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateColorSP("�}��/�}��ɫ", 19010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 19020, Center, Middle, "cg/ef/ef034_����AȾ.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 19100, -382, -300, "cg/st/resize/st����_���L_˽��l.png");
	Request("�}��/�}�����}װ��", Smoothing);
	Zoom("�}��/�}�����}װ��", 0, 1500, 1500, null, true);
	Move("�}��/�}�����}װ��", 0, @120, @0, null, true);
	SetBlur("�}��/�}�����}װ��", true, 3, 500, 60, true);

	Move("�}��/�}�����}װ��", 300, @-120, @0, Dxl2, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470b]
//��������
<voice name="����" class="����" src="voice/md01/029vs0540a00">
���ϵ��ˡ����죡��

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0550a05">
��!?��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��֩��ξW
	CreateSE("SE01","se����_����_֩������¤�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ��", 10000, "#FFFFFF");
	CreateTextureSPadd("�}������", 6020, Center, Middle, "cg/ef/ef035_֩��W���@.jpg");
	CreateTextureSP("�}����", 6010, Center, Middle, "cg/ef/ef035_֩��W���@.jpg");
	CreateTextureSPadd("�}������", 6000, Center, Middle, "cg/ef/ef035_֩��W���@.jpg");

	SetVertex("�}����*", 800, 175);
	Request("�}����*", Smoothing);

	Delete("�}��");
	Wait(12);
	Delete("�}ɫ��");

	Zoom("�}����*", 200, 1500, 1500, Dxl2, false);
	Shake("�}������", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}������", 200, true);
	FadeDelete("�}����", 1000, false);

	SetFwR("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0560a05">
��ʲ����������

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/029vs0570a01">
����ӭ����<RUBY text="����������">֩��ĳ�Ѩ</RUBY>��
��������û����һ˿��ԥ��
ȡʤ��һ�������㰡����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���P�С��W�����Ò줫�ä�����
	CreatePlainEX("�}��д", 5000);
	SetBlur("�}��д", true, 3, 500, 200, false);

	CreateSE("SE02","se���L_����_�z��������03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Zoom("�}��д", 200, 1250, 1250, null, false);
	FadeFR2("�}��д",0,1000,400,0,0,60,Dxl2, true);

	CreatePlainSP("�}��д�r", 10000);
	Delete("�}��д");
	Delete("�}ɫ*");
	Delete("�}��*");

	CreateTextureEX("�}������", 110, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");
	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");

	Fade("�}������", 0, 500, null, true);
	Shake("�}������", 400, 0, 40, 0, 0, 1000, null, false);
	Delete("�}��д�r");

	CreateSE("SE03a","se���L_�n��_�zܞ��02");
	CreateSE("SE03b","se���L_�Ɖ�_����01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
��<RUBY text="֩��">����</RUBY>���ߣ�
��û�и���װ�׵�ǿ�ȡ�
�������ԶԲ����ŵĵ�������װ��������ˣ�
�㹻�����ϻص��档

����Ȼ������������ʼ��ۡ�
�𺦳̶�Ҳ�����޷���ԭ��
�������ܴ����ɥʧ��״̬ȴ����ʵ��
����������ķ����ɹ��ˡ�

��ץס��������ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}������");

	CreateSE("SE01","se����_����_�᤺����01");
	StR(1000, @120, @0,"cg/st/st����_���L_˽��.png");

	MusicStart("SE01",0,1000,0,1250,null,false);
	Move("@StR*", 300, @-120, @0, Dxl1, false);
	FadeStR(300,true);

	Wait(200);

//��װ�ס�����
	CreateSE("SE01","se����_�z_װ��06");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSPadd("�}ɫ��", 10000, "#FFFFFF");

	StR(1000, @0, @0,"cg/st/3d�����˜�_����_�i��.png");
	FadeStR(0,true);

	Wait(200);

	FadeDelete("�}ɫ��", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
���ٶ�װ�ס�
�����������Ծ��
�����������𾪵ļ�ǿ��־��
�ѿ���վ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("@StR*", 200, @-200, @0, Axl2, false);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,850,null,false);

	CreateColorSP("�}�\Ļ", 19000, "#000000");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("�}����", 3100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 40, 0, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 250, -615, @0, Dxl2, false);
	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	FadeDelete("�}����", 200, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="����" src="voice/md01/029vs0580a00">
����Ǹ�ˣ���

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0590a05">
����!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؤ��¤�
//�������������
	CreateSE("SE01a","se���L_����_Ұ̫�����01");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	CreateTextureEXadd("�}����", 3100, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	Zoom("�}����", 0, 10000, 10000, null, false);
	Fade("�}����", 0, 450, null, true);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	FadeStA(0,true);
	Delete("�}��*");

	CreateSE("SE01","se���L_����_���̤���01");
	MusicStart("SE01",0,1000,0,700,null,false);

	CreatePlainEX("�}��д", 2000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 300, 0, 20, 0, 0, 1000, null, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
�����е��ǡ������棡
�����ŵ��������Է�ȴ����˵��⡣

��������������������Ӵ󽫲������Ǳ���̬��
����Ц������Ľ����Ƕ�����ִ��е�ս����
����Ӧһ����ɱ�������������϶������
ʤ���Ŀ����Ѿ���Խ��ɱ�⡣ ֻ����ô���ˡ�

����ô�ֲ������˰���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��׷��
	CreateSE("SE01","se���L_����_�z_̤���z��01");
	StR(1000, @180, @0,"cg/st/3d�����˜�_����_���L.png");

	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("@StR*", 300, @-120, @0, Dxl2, false);
	FadeStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
��������ᵽ�������ʵĸо����Ų�û��ֹͣ��
��׷�����ܰ��ĵ��
��������վ���˲�����һ����

�����ٶȣ��������򡪡�<k>ʵ��ȴ�Ǻ���ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0600a05">
����!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����S��
	CreateSE("SE01a","se���L_����_Ұ̫�����01");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	CreateTextureEXadd("�}����", 3100, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	Zoom("�}����", 0, 10000, 10000, null, false);
	Fade("�}����", 0, 450, null, true);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	FadeStA(0,true);

//�������`��
	CreateSE("SE05b","se���L_�Ɖ�_���k04");
	CreateSE("SE05c","se���L_����_�z��������03");
	MusicStart("SE05b",0,1000,0,1000,null,false);
	MusicStart("SE05c",0,1000,0,800,null,false);

	CreateColorSP("�}ɫ��", 20000, "#FFFFFF");

	Delete("�}��*");

//�������Ҫ����3d����_����_��xb���ݩ`��ͬ������x�L�ݤʤ���
	CreateTextureSP("�}�����}��", 1010, Center, InBottom, "cg/st/3d����_����_��x.png");
	Request("�}�����}��", Smoothing);
	SetVertex("�}�����}��", center, bottom);
	Zoom("�}�����}��", 0, 1100, 1100, null, true);

	Move("�}�����}��", 0, @-100, @0, null, true);

	Zoom("�}�����}��", 700, 1000, 1000, Dxl3, false);
	Shake("�}�����}��", 1000, 4, 0, 0, 0, 1000, Dxl3, false);
	Move("�}�����}��", 700, @-150, @0, Dxl3, false);

	FadeDelete("�}ɫ��", 400, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
�������ؼ׵ĵ��⡣
������ϸ΢�Ľ�������Լ��׺���Ͽա� 

�����ǡ����п���ǳ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`���w�Ӥ����ä��P��
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 10010, "#FFFFFF");
	CreateColorEXadd("�}ɫ��", 10010, "#3333FF");
	Fade("�}ɫ��", 0, 800, null, true);

	Wait(200);
	Delete("�}�����}��*");

	FadeDelete("�}ɫ*", 400, false);
	DrawTransition("�}ɫ��", 200, 1000, 0, 100, Dxl1, "cg/data/slide_08_00_1.png", false);
	DrawTransition("�}ɫ��", 200, 1000, 0, 100, Dxl2, "cg/data/slide_08_00_1.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
������˲�����·ɡ�
����ʶ���޷���ȫ�ܿ���˲�䣬
�ý����Ľŵŵض�ȥ��

���������ﶼһ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
	CreatePlainSP("�}��д", 10000);

	Delete("�}����*");

	CreateCamera("��", 512, 144, 1000);
	SetAlias("��","��");

	CreateTextureSP("��/�}�ݱ���", 0, Center, Middle, "cg/bg/resize/bg096_��ᦌm�����ҿ�_01al.jpg");

	CreateTextureSP("��/�}�����}��", 250, Center, Middle, "cg/st/3d����_����_���L.png");
	SetVertex("��/�}�����}��", center, bottom);
	Zoom("��/�}�����}��", 0, 600, 600, null, true);
	Move("��/�}�����}��", 0, @-700, @20, null, true);

	Request("��/*", Smoothing);

	MoveCamera("��", 4000, -512, @0, @0, Dxl1, false);

	FadeDelete("�}��д", 500, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
������������
{	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
������������յ����ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��������
<voice name="����" class="����" src="voice/md01/029vs0610a00">
�������ӵ����𣿣�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
�������׽ס���Ļ��ᡣ
�������������Σ�ա������һ��ᱻ���Է�����

������ʹ��˽ᣬҲû�취�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("��", null);

	CreateTextureSP("��/�}�����}����", 250, Center, Middle, "cg/st/3d�����˜�_����_���L.png");
	SetVertex("��/�}�����}����", center, bottom);
	Zoom("��/�}�����}����", 0, 700, 700, null, true);
	Move("��/�}�����}����", 0, @760, @-30, null, true);

	MoveCamera("��", 4000, 512, @0, @0, Dxl1, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��������
<voice name="����" class="��������" src="voice/md01/029vs0620a01">
��û��ϵ���������ڸı䡣
�����ǳ������Ƿ����˳�硣��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0630a00">
��ֻҪע�ⲻҪ��ǰˤ���ͺ��˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
����Ȼ����Ҳ�����ˣ�
��Ŀǰ�з������˸������ء�
��ֻҪ��������⣬���ɽ�����Ϊ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("��", null);

//�����ꤸ�ꡣ�]���Ϥ�
//��Ѻ�������������P��
	CreateSE("SE01","se����_����_�z�i��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("��/�}�����}����", 600, @-60, @0, DxlAuto, true);

	Wait(400);

	MoveCamera("��", 4000, -512, @0, @0, Dxl1, true);

	Wait(400);

	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("��/�}�����}��", 600, @-60, @0, DxlAuto, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
��ǰ�����Ҳ����ƶ������������ʱ����
�����Է�Ҳ��ͬС�ɣ���һһ����⡣

��������ս�����鷽��Է��Ƚ�
�����Ĺ�ϵ��ʼ��ûʲô��չ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0640a05">
������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0650a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
������ز����ҿɲ�ϣ������ʱ�����꣬
�о���Ԯ�Ľ����
��Ӧ�������ܵ�һ���ľ���һ����������
����䣬����������㡣

�����������㣬�ҵ�ʤ�㲢��С��
��ֻ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
//��������
<voice name="����" class="����" src="voice/md01/029vs0660a00">
��������
���ǽ��е�<RUBY text="����">����</RUBY>�����ܵ�ʲô�̶ȣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/029vs0670a01">
�����Ҳ��ಮ�ٵ�װ�ס�������Ļ����ԡ�
�������������Ϊ����ô����Ļ���
�Ǿ����̫���ˡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0680a00">
������ʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/029vs0690a01">
���������дﲻ������ʱ����Ҳ�����Ϲ�֮������
��֪��˭�ú��ּ������������֪���ĹŴ��Ų���
�������ʲô�ء���

//��������
<voice name="����" class="��������" src="voice/md01/029vs0700a01">
������޶�Ҳ�ÿ������塣
����֪���ľ�������ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0710a00">
���ǰ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
�����塣
�����߼�ս�����ܹ���֮���Ҫ��
���������Ʒ�Ԥ���������

�����Ǳ���������ĵ�����Ⱦ������������
��������������̽ʱ����

��һ��̤�����ʤ��֮ʱ���з��ܿ���
��ȴ��Է�������ӭ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
//��������
<voice name="����" class="��������" src="voice/md01/029vs0720a01">
�����������ȷ����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
���������ԣ�������ͬ�ֶ������֡�
�����������������巢��������

��������Է�����Ԥ�㣬�������������֮�ߡ�
���䲻��ˮ��㲻���ݣ������������˵����壬
����ĩ·�ˡ�

���ܹ��������־ͺ��ˡ���
��
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���P�С��R
	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

	CreateColorSP("�}ɫ�\��", 15000, "#000000");
	CreateTextureSP("�}�����}�R", 15100, Center, InTop, "cg/ev/resize/ev214_�����o�Ϥ�����l.jpg");
	SetTone("�}�����}�R", Monochrome);

	Move("�}�����}�R", 6000, @0, -576, DxlAuto, false);
	FadeDelete("�}ɫ�\", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
����֪�Ӻ�ʱ��֤��Դ��ԴԶ������ʷ��
�������ӵ������С�
�����ųͰ������������ͬҰ�ް��
����֮�࣬���ָ��������š�

��������Щ�������ؿ��죬
Ҫ�������������Ҳ���ǲ����ܡ�
��ֻ�ǣ������������޵�֪ʶ�ͽ��ȵ�
ʱ����̽����Ҳ�����뵽ʲô��

����Ȼ�䵶�Եķ���ȷʵ���������ʵ����
�����������ĸ����еĴ�˵��һ���ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

	Delete("�}�����}�R*");
	Delete("�}ɫ�\��");
	Delete("��");

//�����ꤸ�ꡣ�]���Ϥ�
	PrintGO("�ϱ���", 19000);
	CreateColorSP("�}ɫ�\", 10000, "#000000");

	CreateTextureSP("�}�±���", 100, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");

	CreateWindow("�}����", 5000, 48, 0, 340, 576, false);
	SetAlias("�}����","�}����");
	Zoom("�}����", 0, 0, 1000, null, true);
	CreateTextureSP("�}����/�}��������", 5010, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	CreateTextureSPmul("�}����/�}�ݱ���", 5020, InLeft, Middle, "cg/bg/resize/bg096_��ᦌm�����ҿ�_01al.jpg");

	CreateTextureSP("�}����/�}�����}װ��", 5100, Center, InBottom, "cg/st/3d����_����_���L.png");
	Move("�}����/�}�����}װ��", 0, @-280, @4, null, true);//���ߩ`ע�⣺��λ��
	Zoom("�}����", 0, 1000, 1000, Dxl2, true);


	CreateWindow("�}����", 5000, 636, 0, 340, 576, false);
	SetAlias("�}����","�}����");
	Zoom("�}����", 0, 0, 1000, null, true);
	CreateTextureSP("�}����/�}��������", 5010, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	CreateTextureSPmul("�}����/�}�ݱ���", 5020, InRight, Middle, "cg/bg/resize/bg096_��ᦌm�����ҿ�_01al.jpg");

	CreateTextureSP("�}����/�}�����}װ��", 5100, Center, InBottom, "cg/st/3d�����˜�_����_���L.png");
	Move("�}����/�}�����}װ��", 0, @340, @0, null, true);//���ߩ`ע�⣺��λ��
	Zoom("�}����", 0, 1000, 1000, Dxl2, true);

	Delete("�ϱ���*");
	FadeDelete("�}ɫ�\", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
��˫����˫�Ų����ƶ���
����������ȫû�����̡�

����˵�мɼ��ꡭ��
��Ҳ������ôһֱ������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//��������
<voice name="����" class="����" src="voice/md01/029vs0730a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������{������`�륬��ǰ
	CreateTextureEX("�}����/�}��", 6100, -690, -360, "cg/ev/resize/ev902_����늴Œi����`�륬��_al.jpg");
	Zoom("�}����/�}��", 0, 750, 750, null, true);
	Request("�}����/�}��", Smoothing);

	Move("�}����/�}��", 0, @0, @150, null, true);

	CreateSE("SE01","se���L_����_������03");
	CreateSE("SE01a","se�M��_냇��_�i��01");
	MusicStart("SE01",0,1000,0,800,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("�}����/�}��", 6000, -20, -220, DxlAuto, false);
	Fade("�}����/�}��", 1000, 1000, null, true);

	SoundPlay("@mbgm12",0,1000,true);

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0740a05">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
��ע�⵽��߰ε��ƶ��Ķ�����
����������ע������
�������ǲ������Σ�ա�

������������
����Ҫ������ԥ��

�����޷�������ֵ�ǰ���£�
���������ٳ��²�����
����֮����������˵����жϳ�����Σ�ա�
���߾�ȫ���ӵ�֮ʱ���١�

������������̫֮��������Űε���

�������Ƿ�ǳ�Ĳ��ԡ�
��ʤ��������һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
//��������
<voice name="����" class="����" src="voice/md01/029vs0750a00">
��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0760a05">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
����������������ʱ����
��äĿ����ֻ���Ϊ�з�����������Ʒ��
������ʱ�����ڶԷ����ֵ�ɲ�ǣ�
�ֻ��ߣ���֮��ֵ�������˲�䣿

��ĳ������һ�������١�

�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϵ���֤��`��
	CreateSE("SE01","se���L_����_�z_�ϵ�������01");

	CreateColorEXadd("�}����/�}ɫ�ϵ����", 5090, "#FFFFFF");
	CreateColorEXadd("�}����/�}ɫ�ϵ�����", 5080, "#0033FF");

	DrawTransition("�}����/�}ɫ�ϵ����", 0, 0, 120, 300, null, "cg/data/circle_11_01_0.png", true);
	DrawTransition("�}����/�}ɫ�ϵ�����", 0, 0, 140, 300, null, "cg/data/circle_11_01_0.png", true);

	MusicStart("SE01",0,1000,0,600,null,false);
	SetFrequency("SE01", 2000, 1000, null);
	VernierAction2();
	Shake("�}����/�}�����}װ��", 2160000, 0, 2, 0, 0, 1000, null, false);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//��������
<voice name="����" class="����" src="voice/md01/029vs0770a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
�������ƽ���!?
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
//��������
<voice name="����" class="��������" src="voice/md01/029vs0780a01">
����Ҫ�ٴ��������Ĺ�����!?��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0790a00">
�������ܣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
���������״����ˣ������ӽ��ٻ���
����������ƽ�������Ҳ�޷��ɡ�

�������ڴ�ʲô����!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�o��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0800a05">
���!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���P�С����S
	CreateColorSPadd("�}����/�}ɫ��", 6100, "#FFFFFF");
	CreateColorSPadd("�}����/�}ɫ��", 6090, "#0033FF");

	Delete("�ץ������å��ꣲ");
	Delete("�}����/�}�����}װ��");
	Delete("�}����/�}ɫ�ϵ���*");

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(200);

	DrawTransition("�}����/�}ɫ��", 200, 1000, 0, 300, Dxl2, "cg/data/slide_07_00_1.png", false);
	DrawTransition("�}����/�}ɫ��", 200, 1000, 0, 300, null, "cg/data/slide_07_00_1.png", true);

//���Ӥ�
	PrintGO("�ϱ���", 10000);
	CreateColorEXadd("�}ɫ�ϵ����", 9100, "#FFFFFF");
	CreateColorEXadd("�}ɫ�ϵ�����", 9100, "#0033FF");

	CreateColorSP("�}ɫ�\", 100, "#000000");
	CreateSE("SE01c","se���L_����_��ͻ�M02");

	CreateTextureSP("�}�����}��", 1000, Center, Middle, "cg/st/3d����_�Tͻ_���L2.png");
	Zoom("�}�����}��", 0, 2000, 2000, null, true);

	MusicStart("SE01c",0,1000,0,1000,null,false);

	Delete("�ϱ���");

	Zoom("�}�����}��", 60000, 0, 0, null, false);

	Wait(200);

	CreateSE("SE02","se���L_����_�z_�ϵ�������01");
	MusicStart("SE02",0,1000,0,1500,null,false);

	Fade("�}ɫ�ϵ���*", 0, 800, null, true);

	Wait(12);

	DrawDelete("�}ɫ�ϵ����", 200, 1000, "circle_01_00_0", false);
	DrawDelete("�}ɫ�ϵ�����", 250, 1000, "circle_03_00_0", false);

	Zoom("�}�����}��", 600, 0, 0, Dxl1, false);


	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
//��������
<voice name="����" class="����" src="voice/md01/029vs0810a00">
������ʲ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 10000);
	Delete("�}ɫ*");
	Delete("�}��*");

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg096_��ᦌm�����ҿ�_01a.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
��ת����ȥ����<k>
��
{	FadeDelete("�}��д", 1000, false);}
��������������������Ҫ���ܣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
//��������
<voice name="����" class="����" src="voice/md01/029vs0820a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/029vs0830a01">
������������!?��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/029vs0840a00">
����Ϳ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
������<RUBY text="����">�Լ�</RUBY>�󺰣�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������׷��
	StR(1000, @120, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	CreateSE("SE01","se����_����_�z�i��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-120, @0, Dxl1, false);
	FadeStR(300,true);

	CreateSE("SE01a","se���L_����_��ͻ�M01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ�Щ`�˥���", 4010, "#FFFFFF");
	CreateColorSPadd("�}ɫ�Щ`�˥���", 4000, "#3366CC");

	Wait(12);

	DeleteStA(0,true);

	DrawTransition("�}ɫ�Щ`�˥���", 300, 30, 0, 400, null, "cg/data/slide_08_00_1.png", false);
	DrawTransition("�}ɫ�Щ`�˥���", 300, 60, 0, 400, null, "cg/data/slide_08_00_1.png", false);

	Wait(360);

	CreatePlainSP("�}��д", 10000);
	Delete("�}ɫ*");

//���P���Ӥ�
	CreateColorSP("�}ɫ�����\", 1100, "#000000");
	DrawTransition("�}ɫ�����\", 0, 0, 100, 1000, null, "cg/data/slide_05_00_1.png", true);

	CreateTextureSP("�}������", 1000, 0, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
	CreateTextureSP("�}������", 1000, 0, Middle, "cg/bg/bg038_���`���å����a_03.jpg");

	CreateSCR1("@�}������","@�}������",600,-4000,@0);

	FadeDelete("�}��д", 400, true);

	CreateTextureSP("�}�����}��", 2000, OutLeft, Middle, "cg/st/3d����_�T��_���L.png");
	Move("�}�����}��", 0, @0, @-120, null, true);
	Request("�}�����}��", Smoothing);
	Zoom("�}�����}��", 0, 800, 800, null, true);
	Shake("�}�����}��", 2160000, 0, 2, 0, 0, 1000, null, false);

	CreateSE("SE02","se���L_����_��ͻ�M01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("�}�����}��", 1000, @2200, @0, null, false);

	Wait(600);

	Move("�}�����}��", 10000, @100, @0, null, false);

	SetFwC("cg/fw/fw�o��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/029vs0850a05">
��̫���ˣ�С�ӣ�
������ս�����޷�����ս������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02a","se���L_����_���ϕN01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Move("�}�����}��", 600, @2200, @0, Dxl2, true);

	Wait(1000);

	CreateTextureSP("�}�����}��", 2000, OutLeft, Middle, "cg/st/3d�����˜�_�T��_ͨ��2.png");
	Move("�}�����}��", 0, @0, @60, null, true);
	Request("�}�����}��", Smoothing);
	Zoom("�}�����}��", 0, 1100, 1100, null, true);
	Shake("�}�����}��", 2160000, 0, 2, 0, 0, 1000, null, false);

	CreateSE("SE02","se���L_����_��ͻ�M02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("�}�����}��", 1000, @1200, @0, null, false);

	Wait(600);

	Move("�}�����}��", 10000, @100, @0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
����Ц�ڶ�������
���Դ��Ҳ���һ˿��Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
//��������
<voice name="����" class="����" src="voice/md01/029vs0860a00">
��ʲôʱ�򡪡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
��ʲôʱ��
��ʲôʱ��

��<RUBY text="������������������">�����Ѿ�����������</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);



}

..//������ָ��
//�Υե����롡"md01_030.nss"



.//�ץ�����======================================================

..//���å��ꥢ���ɥ��
function VernierAction()
{
	CreateProcess("�ץ������å���", 1000, 0, 0, "VernierSet");
	Request("�ץ������å���", Start);

}

..VernierSet
function VernierSet()
{
	begin:
	while(1)
	{
	Fade("@��/�}ɫ��", 1, 600, null, true);
	//DrawTransition("@��/�}ɫ��", 20, 100, 200, 100, null, "cg/data/circle_13_00_0.png", true);

	Fade("@��/�}ɫ��", 0, 100, null, true);
	//DrawTransition("@��/�}ɫ��", 20, 200, 100, 100, null, "cg/data/circle_13_00_1.png", true);
	}
}


..//���å��ꥢ���ɥ�󥰣�
function VernierAction2()
{
	CreateProcess("�ץ������å��ꣲ", 1000, 0, 0, "VernierSet2");
	Request("�ץ������å��ꣲ", Start);

}

..VernierSet2
function VernierSet2()
{
	begin:
	while(1)
	{
	Fade("@�}����/�}ɫ�ϵ����", 1, 800, null, false);
	Fade("@�}����/�}ɫ�ϵ�����", 1, 600, null, true);
	//DrawTransition("@��/�}ɫ��", 20, 100, 200, 100, null, "cg/data/circle_13_00_0.png", true);

	Fade("@�}����/�}ɫ�ϵ���*", 0, 100, null, true);
	//DrawTransition("@��/�}ɫ��", 20, 200, 100, 100, null, "cg/data/circle_13_00_1.png", true);
	}
}