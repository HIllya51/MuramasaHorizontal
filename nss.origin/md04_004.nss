//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_004.nss_MAIN
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
	#ev805_�����}����`�����Σ�_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_005.nss";

}

scene md04_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_003.nss"


//���`�}
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg013_�`�}���a_03.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);
	SoundPlay("@mbgm34", 0, 1000, true);
	Wait(500);

	SetNwC("cg/fw/nw�Oҕ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�Oҕ����
<voice name="����㣯�Oҕ��" class="������Ů��" src="voice/md04/0040010e037">
����̨ɽ���������з��ձ�����
��������������ӽ�����

//������㣯�Oҕ����
<voice name="����㣯�Oҕ��" class="������Ů��" src="voice/md04/0040020e037">
���Է����뿪Ȱ����޷�Ӧ��
�������ʵ���ָʾ����

//������㣯�Oҕ����
<voice name="����㣯�Oҕ��" class="������Ů��" src="voice/md04/0040030e037">
���ɲ����ƶ��Ƿ��н���
��������ձ���ָʾ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ͽ�
//��Ļ���o�T��ʮ�T�ۤ�

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	OnBG(100, "bg001_��a_03.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");
	OnSE("se���L_����_��ͻ�M01", 1000);

	CreateTextureSP("������EX01", 110, @-1700, @-400, "cg/st/3d�ũ�ʽ�o�T��_�T��_ͨ��.png");
	Zoom("������EX01", 0, 500, 500, null, true);
	SetBlur("������EX01", true, 1, 500, 100, false);

	CreateTextureSP("������EX02", 110, @-1700, @-600, "cg/st/3d�ũ�ʽ�o�T��_�T��_ͨ��.png");
	Zoom("������EX02", 0, 500, 500, null, true);
	SetBlur("������EX02", true, 1, 500, 100, false);

	Move("������EX01", 800, @3000, @0, null, true);
	Move("������EX02", 800, @3000, @0, null, true);


	Delete("������EX*");

	CreateSE("ͣ��", "se���L_����_���д��C_L");
	CreateSE("SE����", "se���L_����_��ͻ�M05");
	OnSE("se���L_����_��ͻ�M02", 1000);

	MusicStart("SE����", 2000, 400, 0, 1100, null,true);
	MusicStart("ͣ��", 2000, 1000, 0, 1000, null,true);

	CreateTextureSP("��������L", 200, @-1700, @-400, "cg/st/3d�ũ�ʽ�o�T��_�T��_ͨ��.png");
	SetBlur("��������L", true, 1, 500, 100, false);

	CreateTextureSP("������01", 110, @-1700, @-400, "cg/st/3d�ũ�ʽ�o�T��_�T��_ͨ��.png");
	Zoom("������01", 0, 500, 500, null, false);
	SetBlur("������01", true, 1, 500, 100, false);


	Move("@��������L", 800, @1400, @0, Dxl2, true);

	$��`�ץ�`�֥ʥå����� = "@��������L";
	$��`�ץ�`�֥����ࣲ = 20000;
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����", Start);


	Move("������01", 600, @1830, @0, Dxl2, true);
	Move("������01", 500, @-30, @0, AxlDxl, true);

	$��`�ץ�`�֥ʥå��� = "@������01";
	$��`�ץ�`�֥����� = 10000;
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����", Start);


	SetNwC("cg/fw/nw����ꠣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯����ꠣ���
<voice name="����㣯����ꠣ�" class="����������" src="voice/md04/0040040e256">
���ӳ����Ƕ����ӷ��򣡡�

{	NwC("cg/fw/nw������L.png");}
//������㣯������L��
<voice name="����㣯������L" class="����������" src="voice/md04/0040050e258">
�������Ǹ��𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������w��Ş������`���`�׼���

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	SetVolume("ͣ��", 1000, 0, null);

	Delete("@������*");
	Delete("�ץ���*");

	CreateTextureSP("�}����100", 2000, @0, @0, "cg/ev/ev805_�����}����`�����Σ�_a.jpg");
	Request("�}����100", Smoothing);
	SetBlur("�}����100", true, 1, 500, 100, false);

	CreateTextureSP("�}����200", 2000, @0, @0, "cg/ev/ev805_�����}����`�����Σ�_a.jpg");
	SetShade("�}����200", HEAVY);
	Zoom("�}����100", 0, 2000, 2000, null, true);
	Zoom("�}����200", 0, 2000, 2000, null, true);

	SetVolume("SE����", 4000, 100, null);
	CreateSE("SE����2", "se���L_����_��ͻ�M05");
	MusicStart("SE����2",1000,1000,0,100,null,true);


$��`�ץ�`�֥ʥå����� = "@�}����*";
$��`�ץ�`�֥����ࣲ = 30000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	CloudZoomStartB(700,1000,1000,800,900);
	CloudZoomVertex(0,1024,600,null,true);

	DrawDelete("�\Ļ��", 300, 100, "slide_02_01_1", false);
	Zoom("�}����*", 2000, 1700, 1700, null, true);
	SetVolume("SE����2", 3000, 400, null);
	Fade("�}����200", 2000, 0, Axl3, false);

	Zoom("�}����*", 2000, 1050, 1050, AxlDxl, true);
	Delete("�}����200");


	SetNwC("cg/fw/nw����ꠣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯����ꠣ���
<voice name="����㣯����ꠣ�" class="����������" src="voice/md04/0040060e256">
��������<RUBY text="�ǣ����������">����Ҫ��</RUBY>��!!��

{	NwC("cg/fw/nw����ꠣ�.png");}
//������㣯����ꠣ¡�
<voice name="����㣯����ꠣ�" class="����������" src="voice/md04/0040070e257">
���⡢������������ķ��н��𡭡���

{	NwC("cg/fw/nw������L.png");}
//������㣯������L��
<voice name="����㣯������L" class="����������" src="voice/md04/0040080e258">
�����ʣǣȣѣ���������ġ�
�����׼�����������ޡ���

{	NwC("cg/fw/nw����ꠣ�.png");}
//������㣯����ꠣ¡�
<voice name="����㣯����ꠣ�" class="����������" src="voice/md04/0040090e257">
����ô�죬�ӳ�!?��

{	NwC("cg/fw/nw������L.png");}
//������㣯������L��
<voice name="����㣯������L" class="����������" src="voice/md04/0040100e258">
������ֻ����Щ�𣿡�

{	NwC("cg/fw/nw����ꠣ�.png");}
//������㣯����ꠣ���
<voice name="����㣯����ꠣ�" class="����������" src="voice/md04/0040110e256">
���ǣ�ֻ��һ�ҡ�
������û�б�ķ�Ӧ����

//������㣯����ꠣ���
<voice name="����㣯����ꠣ�" class="����������" src="voice/md04/0040120e256">
�������ҵ��ǲ���Ϊ�Ǽһ�����û����һȺ
���������

{	NwC("cg/fw/nw������L.png");}
//������㣯������L��
<voice name="����㣯������L" class="����������" src="voice/md04/0040130e258">
������ս��̫³ç�ˡ�
�����ǣ����������ֶ����ӽ������ֳǡ���

//������㣯������L��
<voice name="����㣯������L" class="����������" src="voice/md04/0040140e258">
�����������λ�ս����ֹ�Է�ǰ����
������Ԯ����֮ǰ��������ʱ�䣡��

{	NwC("cg/fw/nw����ꠣ�.png");}
//������㣯����ꠣ¡�
<voice name="����㣯����ꠣ�" class="����������" src="voice/md04/0040150e257">
���˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ�M���褦�Ȥ���
//���Ϥ������u�����T�ĉ�

	OnSE("se���L_����_������01", 1000);

	CreateTextureSP("��������L", 199, @-200, @-400, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");
	CreateTextureSP("������01", 109, @100, @-400, "cg/st/3d�ũ�ʽ�o�T��_�T��_���Lb.png");
	Zoom("������01", 0, 500, 500, null, true);
	Request("������*", Smoothing);


	FadeDelete("�}����*",500,false);

	OnSE("se���L_�|��_������01", 1000);
	Move("������01", 1500, @-50, @30, Dxl2, false);
	Move("��������L", 1500, @-100, @50, Dxl2, false);
	Wait(1000);
	OnSE("se���L_����_��ͻ�M02", 1000);

	CreateColorSPadd("�}�ե�", 150, "#FFFFFF");
	DrawDelete("�}�ե�", 300, 100, "slide_07_00_1", true);

	Delete("�}�ե�");

	OnSE("se���L_�Ɖ�_�z03", 1000);
	OnSE("se���L_�Ɖ�_�z01", 1000);
	CreateTextureEX("�ɤ��`��", 15000, @0, @0, "cg/ef/ef022_��������ɢ�A.jpg");
	EffectZoomDXadd(10000, 1500, 100, "#FFFFFF", "cg/ef/ef022_��������ɢ�A.jpg", false);

	Fade("�ɤ��`��", 100, 1000, null, false);
	Shake("�ɤ��`��", 1000000, 2, 1, 0, 0, 1000, DxlAuto, false);
	Zoom("�ɤ��`��", 1000, 2000, 2000, Dxl2, true);

	Delete("��������L");
	Delete("������01");

	FadeDelete("�ɤ��`��", 500, false);

	SetNwC("cg/fw/nw������L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯������L��
<voice name="����㣯������L" class="����������" src="voice/md04/0040160e258">
����������ʲô!?��

{	NwC("cg/fw/nw����ꠣ�.png");}
//������㣯����ꠣ���
<voice name="����㣯����ꠣ�" class="����������" src="voice/md04/0040170e256">
���⡭����һ﾿�����Ķ�ð������!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������T�����
//�����T����`�����åס��ӣԣ�����

	OnSE("se���L_����_��ͻ�M02", 1000);


	StC(1000, @1500, @200, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	SetBlur("@StC*", true, 1, 500, 100, false);
	FadeStC(300, false);
	Move("@StC*", 150, @-2700, @0, null, true);

	OnSE("se���L_����_��ͻ�M02", 1000);

	StR(1100, @1500, @200, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	SetBlur("@StR*", true, 1, 500, 100, false);
	FadeStR(300, false);
	Zoom("@StR*", 0, 500, 500, null, false);
	Move("@StR*", 150, @-3000, @0, null, true);



	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSPadd("�Ф���", 17000, "#990000");
	CreateColorSPadd("�Ф���", 16000, "#ffffcc");
	CreateColorSPadd("�Ф���", 15000, "#FFFFFF");
	DrawTransition("�Ф���", 0, 1000, 400, 300, null, "cg/data/circle_09_00_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 510, 200, null, "cg/data/circle_09_00_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 520, 100, null, "cg/data/circle_09_00_0.png", true);
	FadeDelete("�Ф�*", 300, false);
	Wait(50);


	CreateSE("SE02","se���L_�n��_�zɢ�A");
	MusicStart("SE02",0,900,0,1000,null,false);
	CreateColorSPadd("�ФФ���", 17000, "#990000");
	CreateColorSPadd("�ФФ���", 16000, "#ffffcc");
	CreateColorSPadd("�ФФ���", 15000, "#FFFFFF");
	DrawTransition("�ФФ���", 20, 1000, 170, 300, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("�ФФ���", 20, 1000, 180, 200, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("�ФФ���", 20, 1000, 190, 100, null, "cg/data/circle_12_01_1.png", true);
	FadeDelete("�ФФ�*", 300, false);


	Waitkey(500);
	OnSE("se���L_����_��ͻ�M03", 1000);

	Move("@StC*", 1500, @1200, @0, Dxl2, true);


	SetNwR("cg/fw/nw������L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯������L��
<voice name="����㣯������L" class="����������" src="voice/md04/0040180e258">
����һ���ɶ����ǡ�����

//������㣯������L��
<voice name="����㣯������L" class="����������" src="voice/md04/0040190e258">
�����������!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��ȫ��

	Move("@StC*", 800, @50, @0, Dxl1, true);
	OnSE("se���L_����_��ͻ�M02", 1000);
	Move("@StC*", 150, @-2700, @20, Axl2, false);

	Wait(100);
	CreateColorSPadd("�}�ե�", 6000, "#FFFFFF");
	DrawDelete("�}�ե�", 600, 100, "slide_05_00_1", true);

	OnSE("se���L_�Ɖ�_���k05", 1000);
	CreateTextureEX("�ɤ��`��", 15000, @0, @0, "cg/ef/ef022_��������ɢ�A.jpg");
	Fade("�ɤ��`��", 0, 1000, null, true);

	CreatePlainEX("�}��д", 15000);
	Request("�}��д", AddRender);

	Fade("�}��д", 200, 1000, null, false);
	Zoom("�}��д", 0, 1000, 1000, null, true);

	Shake("�}��д", 1000000, 2, 3, 0, 0, 1000, DxlAuto, false);
	Zoom("�}��д", 3000, 2000, 2000, Dxl2, false);

	Wait(2000);
	ClearWaitAll(2000, 1500);

}

..//������ָ��
//�Υե����롡"md04_005.nss"