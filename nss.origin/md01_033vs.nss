//<continuation number="470">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_033vs.nss_MAIN
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

	$GameName = "md01_034vs.nss";

}

scene md01_033vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"md01_032.nss"



//�������֣��y�Ǻš��Q�ţ��꣩
//��Ҫ��һ�����ΛQ�ť��`����٬F��
//���y�ǺŤ�ʧ�����Ǥˌ����ƴ�����ȫ���`�륬��
//�����ɩ`��
//�������`���ͥ륮�`�Μu

	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateTextureSP("�}�ţ�", 18000, Center, Middle, "cg/ev/ev156_�y�ǺŤȤΛQ��Ӣ�۾�.jpg");
	Zoom("�}�ţ�", 0, 2000, 2000, null, true);

	SetBlur("�}�ţ�", true, 3, 500, 50, false);
	Move("�}�ţ�", 0, 500, @-200, null, true);

	Delete("�ϱ���");

	CreateSE("SE01","se����_늓�_���01");
	OnSE("se����_늓�_���02",1000);
	MusicStart("SE01",2000,500,0,1000,null,true);

	Zoom("�}�ţ�", 2000, 1800, 1800, null, false);
	Move("�}�ţ�", 2000, 400, -160, null, false);
	Fade("�}��ܞ", 2000, 0, null, true);

	OnSE("se����_늓�_���01",1000);
	Fade("�}��ܞ", 100, 500, null, true);
	FadeDelete("�}��ܞ", 500, false);
	Zoom("�}�ţ�", 500, 1000, 1000, Axl2, false);
	Move("�}�ţ�", 500, 0, 0, Axl2, true);

	CreateSE("SE01","se���L_����_���04");
	CreateSE("SE01a","se���L_����_Ұ̫�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1250,null,false);
	CreateTextureSPadd("�}����", 18100, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_d.jpg");
	CreateTextureSP("�}��", 18050, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_d.jpg");
	Rotate("�}��*", 0, @0, @180, @0, null,true);
	Zoom("�}��", 0, 1100, 1100, null, true);
	Request("�}��*", Smoothing);

	Fade("�}��*", 0, 1000, null, true);
	Zoom("�}����", 200, 1200, 1200, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	WaitKey(500);

	DrawDelete("�}��", 150, 100, "circle_01_00_1", true);

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//���ɤ��`�󡣤֤Ĥ��ä���
	CreateSE("SE01","se���L_�n��_�nͻ01");
	CreateSE("SE02","se���L_�n��_���Ľ��e02");
	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	CreatePlainSPadd("�}��д", 19990);
	SetBlur("�}��д", true, 3, 500, 30, false);

	MusicStart("SE01",0,1000,0,750,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 200, 1150, 1150, null, false);
	Fade("�}ɫ��", 200, 1000, null, true);

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 20000, "#FFFFFF");
	CreateColorSP("�}��ܞ", 15000, "#000000");
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);


	Wait(1000);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md01/033vs0010a01">
���ɹ��ˡ���������!?��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/033vs0020a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`����װ��
//������
	OnSE("se����_�z_װ��04",1000);
	CreateSE("SEͣ��", "se���L_����_������02_L");
	CreateSE("SE�ನ", "se����_늓�_���01");

	CloudZoomSet(2500);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	Request("�}����100", Smoothing);
	Zoom("�}����100", 0, 1100, 1100, null, true);

	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@0,@0,null,true);

$��`�ץ�`�֥ʥå����� = "@�}����100";
$��`�ץ�`�֥����ࣲ = 5000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����", Start);
	Shake("�}����100", 1000000, 1, 5, 0, 0, 500, null, false);

	MusicStart("SEͣ��", 3000, 700, 0, 1000, null,true);
	MusicStart("SE�ನ", 3000, 400, 0, 1000, null,true);
	FadeDelete("�}��ܞ", 1500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��Ӧ�ô����ˡ�

�����Ǻŵı�ɱ����<RUBY text="����׹��С����">��ֱ���µ��߼�</RUBY>����
������������õ�Űε�����֮��ս������ʤ�ˡ�

���ֺ�֮�
������ȷʵ������һ����

����������Ϊֹһ�ζ�δ�ܴ���������ɫ֮Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������ޤäƤ椯
	Shake("�}����100", 5000, 1, 5, 0, 0, 500, Dxl1, false);
	SetVolume("SE�ನ", 5000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������������ɢ����ջָ�ƽ�ȡ�
��Ŀ���ܼ��ĵط�ȴ������Ӱ��

��ȫ�����Ǻŵ���Ӱ��

���������������ˡ�


����

���ң����ڡ���<k>

�������ˣ�

�����ڣ�<k>��������

���ⲻ�ò�ȥ<k>�����¡�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	CreateColorEX("�}ɫ100", 15000, "BLACK");
	SetVolume("SEͣ��", 1000, 1, null);
	Fade("�}ɫ100", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��
��������������Ͱ������ˣ�������
�������������Ǹ�Լ�������벻Ҫ���ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEͣ��", 3000, 500, null);
	FadeDelete("�}ɫ100", 1000, true);

//������
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md01/033vs0030a00">
�������ꡭ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/033vs0040a01">
������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ɤ��`��
//�������w��
	Delete("�ץ�����");
	SetVolume("SEͣ��", 3000, 0, null);

	CreateTextureEX("�}����100", 100, Center, -50, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	CreateTextureEX("�}����200", 10000, Center, Middle, "cg/ef/ef045_���ѩ`��.jpg");
	SetBlur("�}����200", true, 3, 500, 100, false);
	CreateTextureEX("�}��������", 100, Center, -250, "cg/st/3d�����˜�_�T��_ͨ��4a.png");
	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 500, 500, null, true);
	Rotate("�}��������", 0, @0, @0, @180, null,true);
	SetBlur("�}��������", true, 1, 500, 100, false);


	OnSE("se���L_����_�z_�����w��02",1000);

	Zoom("�}����200", 500, 1500, 1500, Dxl2, false);
	Fade("�}����200", 200, 1000, null, false);
	EffectZoomadd(15000, 500, 500, "cg/ef/ef045_���ѩ`��.jpg", false);
	Wait(300);

	Fade("�}����100", 0, 1000, null, true);
	Shake("�}����100", 10000000, 1, 1, 0, 0, 1000, Dxl1, false);
	Move("�}����100", 2000, @0, -1200, Dxl1, false);
	Rotate("�}��������", 2000, @0, @0, @10, null,false);
	Shake("�}��������", 10000000, 1, 1, 0, 0, 1000, Dxl1, false);
	Move("�}��������", 2000, @0, -200, Dxl1, false);
	Fade("�}��������", 0, 1000, null, true);
	FadeDelete("�}����200", 500, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������������ʲ��<k>

��ʲô��

��������<k>
�����������ģ�<k>

��������˭��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���£ǣͣ�
//���y�Ǻ����R

	CreateTextureEX("�}����500", 3000, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	Request("�}����500", Smoothing);
	Zoom("�}����500", 0, 1100, 1100, null, true);

	CreateTextureEX("�}�����y", 3000, Center, Middle, "cg/st/resize/3d�y�Ǻ�_����_ͨ��l.png");
	Move("�}�����y", 0, @100, @0, null, true);

	Fade("�}����500", 1000, 1000, null, true);


	Move("�}�����y", 3000, @0, @200, null, false);
	Fade("�}�����y", 1000, 1000, null, true);
	Delete("�}��������");
	Delete("�}����100");
	CloudZoomDelete(500,false);

	SoundPlay("@mbgm02",0,1000,true);

	Wait(2500);

	SetFwC("cg/fw/fw��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0050a14">
����Ư������

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0060a14">
����Ư��������
�����������԰�������!!��

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0070a14">
������û�뵽���ܵ���������ز�����
���Ҷ��Լ���ʧ���жϵ�Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}�����y", 1000, @0, @350, AxlDxl, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ڡ�
�������ڡ�

��ȫ���������е����ϣ�ʹ�����������

����������������Ȼ���ڡ����ֱ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	Move("�}�����y", 500, @-100, @0, Axl1, false);
	FadeDelete("�}�����y", 500, true);

	CreateTextureEX("�}�����y", 3000, -670, Middle, "cg/st/3d�y�Ǻ�_����_���Lb2.png");
	Request("�}�����y", Smoothing);
	Zoom("�}�����y", 0, 150, 150, null, true);
	Move("�}�����y", 0, @100, @0, null, true);
	SetBlur("�}�����y", true, 1, 500, 100, false);
	CreateTextureEX("�}��������", 3001, 50, -250, "cg/st/3d�����˜�_�T��_ͨ��4a.png");
	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 800, 800, null, true);
//	SetBlur("�}��������", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(500,@-400,@0,null,false);

	CreateSE("SEͣ��", "se���L_����_������02_L");

$��`�ץ�`�֥ʥå��� = "@�}��������";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@�}�����y";
$��`�ץ�`�֥����ࣲ = 15000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	MusicStart("SEͣ��",2000,500,0,1000,null,true);

	Fade("�}�����y", 1000, 1000, null, false);
	Fade("�}��������", 1000, 1000, null, true);


	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md01/033vs0080a00">
����Ч��!?��

{	FwR("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0090a14">
����˵ʲô�أ�
����������Ч������ֱ����<RUBY text="������">ˬ���</RUBY>һ������

//���⡿
<voice name="��" class="��" src="voice/md01/033vs0100a14">
�����ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����Ǻ�ָ���Լ����ؿڡ�
��װ�׵ı��棬����һ������ǳǳ���ѷ졣

�����������ܡ�
�����������У��������������˳̶�!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0110a14">
�����ǵ�һ�Ρ�����
����ĳ������ϱ����ƣ�װ�׸����˺ۣ���

{	FwR("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0120a14">
�����ָо�������

{	FwR("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0130a14">
��ʹ��
��ɳɳ������
��ս�����ߵĸо�����

{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0140a14">
����������������˺���
�������ս���𣿡�

{	FwR("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0150a14">
��������໥������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����г�ϲ�õ����Ǻš�
������ϸ΢���˺ۡ����������޵����ˡ���
������������ȥ������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/md01/033vs0160a01">
�����������������ϡ���
��������һֱչ������ս����!?
����Ϊֹ�����𣡡�

{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/033vs0170a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�������ı�������ȫ�������ҵ��ľ���

������˵�ĳ������ϣ��ʹ�����ʹ�õĴ������ϡ���
��������װ�ǵ�ͬ�ġ�
���ܹ�ʹ����һ����ȫ��ֵ�þ��ȡ�

�����ǡ�
�������ᵽ����չ������ͬʱս������

�������Ĵ���������Ҫ������������
�����������չ��֮ʱ�������Լ�������������
����ʣ�޼��ˡ�

��Ϊ�ˣ�ͨ���������Ͻ������ܵ����﹥����
���������һ˲��չ����

�����ǳ����ſ������ڵ��˵�ͻϮ��Ȼ��Ӧ����
����Եģ���������ܽ���󽵵͡�
��ͨ����������̸����ս�������Ľ��͡�������
����Ҳ�޷��ú�ά�֡�

��<RUBY text="������">����˵</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md01/033vs0180a00">
�����Ǻ���֮ǰ����
����û�г�ַ����������𡭡�����

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/033vs0190a01">
����Ҫ����Ц�ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���ڶ��ƵĽ��д����У����ܵ�����֮�ʵľ�����
�Ⲣ���Ҹ��ԵĴ����

��ج�Ρ�
��ج��Ҳ���и��ȡ���!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0200a14">
�������ڵ��������ˣ�������
�������ڵĵط�����

//���⡿
<voice name="��" class="��" src="voice/md01/033vs0210a14">
������Ϊ���֣���ʹ���⳽�����Ͼ�̫��������ˡ�
�����ڿ�ʼֻ��ӭս�ɣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������`���ե��`��ɽ���äݤ�
//�����y�Ǻţ���ǰ�����y�Ǻţ�����ᣩ�Ȥ�ɫ�Ϥ���
//���٤��䤨�룿���x���Ȥ������ߤη�������Ҋ����褦��
	CreateTextureEXadd("�}�����y��", 3000, -670, Middle, "cg/st/3d�y�Ǻ�_����_���Lb2.png");
	Request("�}�����y��", Smoothing);
	Zoom("�}�����y��", 0, 150, 150, null, true);
	Move("�}�����y��", 0, @100, @0, null, true);

	OnSE("se����_���ͥ륮�`�ŗ�",1000);
	Fade("�}�����y��", 0, 1000, null, true);
	Zoom("�}�����y��", 2000, 200, 200, Dxl2, false);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef003_�����Ƅ�.jpg", true);

	FadeDelete("�}�����y��", 2000, false);
	Wait(500);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���������Ͻ������!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0220a14">
���������������Ǻţ�
��������ν�������Ѿ�����Ҫ�ˣ���

//���⡿
<voice name="��" class="��" src="voice/md01/033vs0230a14">
��Ʒ���ɣ�
�����ܰɣ�
��������Ŷ������!!��

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/033vs0240a00">
��������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�����y��", 3000, Center, Middle, "cg/st/3d�y�Ǻ�_����_���Lb2.png");
	Zoom("�}�����y��", 0, 500, 500, null, true);
	Move("�}�����y��", 0, @0, @-90, null, true);
	CreateColorEX("�}ɫ100", 15000, "WHITE");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����������������
��ս��֮ǰ���������ʹ�Եײ�������˵Ҳ��
�����еĳ��衣

�����Ǻ������˷������ݣ�
�����ڸ���һ���Ļ�����������׹�䣡

��������һ�ε��¡�
����һ�Σ���������������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("SE*", 100, 0, null);

//������퓥���å�������
//������ʳ��äƤ����`�󡣤֤äȤ�

	OnSE("se���L_����_��ͻ�M01",1000);
	Fade("�}�����y", 0, 0, null, true);

	Fade("�}�����y��", 50, 1000, null, false);
	Shake("�}�����y��", 250, 10, 2, 0, 0, 1000, Dxl2, false);
	Fade("�}ɫ100", 200, 1000, Axl2, true);

	OnSE("se���L_�Ɖ�_�z03",1000);
	CreateSE("SEͣ��", "se���L_����_������02_L");
	Wait(100);
	Delete("�ץ���*");
	Delete("�}����*");

	CreateTextureEX("�}����������`�룱", 3100, 0, @0, "cg/bg/bg204_�����ر���_01.jpg");
	CreateTextureEX("�}����������`�룲", 3100, 0, @0, "cg/bg/bg204_�����ر���c_01.jpg");

	CreateTextureSP("�}��������", 3101, -150, -250, "cg/st/3d�����˜�_�T��_ͨ��4a.png");
	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 800, 800, null, true);
	Rotate("�}��������", 0, @0, @0, @180, null,true);
	SetBlur("�}��������", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@1000,@0,null,false);

	CreateSCR1("@�}����������`�룱","@�}����������`�룲",300,-4000,@0);
	Shake("�}��������", 10000000, 1, 2, 0, 0, 1000, null, false);
	Move("�}��������", 10000, @100, @0, Dxl1, false);


	MusicStart("SEͣ��",2000,1000,0,1300,null,true);
	FadeDelete("�}ɫ100", 1000, true);

	Wait(1000);

	SetFwR("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/md01/033vs0250a00">
������������

{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/033vs0260a00">
����������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 15000, "WHITE");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��<RUBY text="��������">��������</RUBY>��

�����񱻷紵һ�㣬�ڿ������С�

������Ϊʲô��

���Ҳ�û�С���<k>�ܵ��κι�������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������퓥���å�������
//���ޤ������`��
	SetVolume("SEͣ��", 100, 1, null);

	OnSE("se���L_����_��ͻ�M01",1000);
	Fade("�}ɫ100", 100, 1000, Axl2, true);

	OnSE("se���L_����_�z��������03",1000);

	Wait(100);
	Delete("�ץ���*");
	Delete("�}����*");
	SCR1stop();

	CreateTextureSP("�}����������`�룱", 3100, -4000, @0, "cg/bg/bg204_�����ر���_01.jpg");
	CreateTextureSP("�}����������`�룲", 3100, -4000, @0, "cg/bg/bg204_�����ر���c_01.jpg");

	CreateTextureSP("�}��������", 3101, -150, -250, "cg/st/3d�����˜�_�T��_ͨ��2.png");
	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 800, 800, null, true);
	Rotate("�}��������", 0, @0, @0, @180, null,true);
	SetBlur("�}��������", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-2000,@0,null,false);

	CreateSCR1("@�}����������`�룱","@�}����������`�룲",300,0,@0);
	Shake("�}��������", 10000000, 1, 2, 0, 0, 1000, null, false);
	Move("�}��������", 10000, @-100, @0, Dxl1, false);


	SetVolume("SEͣ��", 2000, 1000, null);
	FadeDelete("�}ɫ100", 1000, true);

	Wait(1000);

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/md01/033vs0270a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 15000, "WHITE");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������ʲô��

������ʲô���ˣ�

��Ϊ���һᱻ����������

��ʲô��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������å�������
//���ޤ������`��
	SetVolume("SEͣ��", 100, 1, null);
	OnSE("se���L_����_��ͻ�M01",1000);
	Fade("�}ɫ100", 100, 1000, Axl2, true);

	OnSE("se���L_����_�z��������02",1000);

	Wait(100);
	Delete("�ץ���*");
	Delete("�}����*");
	SCR1stop();

	CreateTextureSP("�}����������`�룱", 3100, Center, -4000, "cg/bg/resize/bg204_�����ر���_01tl.jpg");
	CreateTextureSP("�}����������`�룲", 3100, Center, -4000, "cg/bg/resize/bg204_�����ر���_01tl.jpg");
	Rotate("�}����������`�룲", 0, @0, @180, @0, null,true);


	CreateTextureSP("�}��������", 3101, -150, -250, "cg/st/3d�����˜�_�T��_ͨ��4a.png");
	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 800, 800, null, true);
	Rotate("�}��������", 0, @0, @0, @110, null,true);
	SetBlur("�}��������", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@0,@-1000,null,false);

	CreateSCR1("@�}����������`�룱","@�}����������`�룲",300,@0,0);
	Shake("�}��������", 10000000, 1, 2, 0, 0, 1000, null, false);
	Move("�}��������", 10000, @0, @-100, Dxl1, false);


	SetVolume("SEͣ��", 2000, 1000, null);
	FadeDelete("�}ɫ100", 1000, true);

	Wait(1000);

	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/md01/033vs0280a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
������������ʲô��

�����ǡ�������ʲô��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="��������" src="voice/md01/033vs0290a01">
���񡭡���������
�������ġ���

{	FwR("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md01/033vs0300a00">
������������

//��������
<voice name="����" class="����" src="voice/md01/033vs0310a00">
�������ܵ������������𣿡�

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/033vs0320a01">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�������

�����Ǻ������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEͣ��", 2000, 1, null);

//���y�Ǻš����о�ֹ
	CreateTextureEX("�}����1000", 4000, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	CreateTextureEX("�}�����y��", 4000, Center, Middle, "cg/st/3d�y�Ǻ�_����_���Lb2.png");
	Request("�}�����y��", Smoothing);
	SetBlur("�}�����y��", true, 2, 500, 100, false);

	Fade("�}����1000", 1000, 1000, null, true);

	Wait(1000);
	Move("�}�����y��", 1000, @0, @-100, Dxl2, false);
	Zoom("�}�����y��", 1000, 500, 500, Dxl2, false);
	Fade("�}�����y��", 1000, 1000, null, true);
	Wait(500);

	Delete("�}��������");
	SCR1stop();

	SoundPlay("@mbgm01",0,1000,true);


	CloudZoomDelete(0,true);


	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/md01/033vs0330a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�����Ǻų����ˡ�<k>

��<RUBY text="����������">��ֹ�ڿ���</RUBY>��

�����������壬���������ƶ����ӿ��е��䡣
�����ǿ�������Ķ��ɡ�

���ܹ�����ڶ���֮�ϵĽ���һ������������࣬
�Լ������ܵķ���ս�����ѡ�
��������Ҳ��Ҫ���Ѽ����������
�ſ���ά�ּ���ʱ���������

�����������°㡣
�������ֱ�������˲�����̨�㡣 

����Ȼ��<RUBY text="������">վ����</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0340a14">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
�������Ǹо��������ӵ�Ŀ�⣬
�ǳ�Խ�������ɫ���峯���Ͷ��΢Ц��
������ô���š�

������չ�����һֻ�֡���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������̤
//�����L�ӣ����ä��ĤĄӤ������ꤷ�Ƥ���äݤ���
	CreateTextureSP("�}����������`�룱", 3100, 0, @0, "cg/bg/bg204_�����ر���_01.jpg");
	CreateTextureSP("�}����������`�룲", 3100, 0, @0, "cg/bg/bg204_�����ر���c_01.jpg");

	CreateTextureSP("�}�����y1", 3101, -1050, -250, "cg/st/3d�y�Ǻ�_�T��_ͨ��2.png");
	Request("�}�����y1", Smoothing);
	Zoom("�}�����y1", 0, 1500, 1500, null, true);
	SetBlur("�}�����y1", true, 1, 500, 100, false);

	CreateTextureEX("�}�����y2", 3101, -1300, -400, "cg/st/3d�y�Ǻ�_����_���Lb2.png");
	Request("�}�����y2", Smoothing);
	Zoom("�}�����y2", 0, 800, 800, null, true);
	SetBlur("�}�����y2", true, 1, 500, 100, false);

	CreateTextureEX("�}�����y3", 3101, -1150, -250, "cg/st/3d�y�Ǻ�_����_���Lb3.png");
	Request("�}�����y3", Smoothing);
//	Zoom("�}�����y3", 0, 500, 500, null, true);
	SetBlur("�}�����y3", true, 1, 500, 100, false);

	CreateTextureEX("�}�����y4", 3101, -1250, -400, "cg/st/3d�y�Ǻ�_����_���Lb.png");
	Request("�}�����y4", Smoothing);
	Zoom("�}�����y4", 0, 800, 800, null, true);
	SetBlur("�}�����y4", true, 1, 500, 100, false);

	CreateTextureEX("�}�����y5", 3101, -850, -100, "cg/st/3d�y�Ǻ�_�T��_ͨ��.png");
	Request("�}�����y5", Smoothing);
	Zoom("�}�����y5", 0, 900, 900, null, true);
	SetBlur("�}�����y5", true, 1, 500, 100, false);

	OnSE("se���L_����_��ͻ�M08",1000);

	CreateSCR1("@�}����������`�룱","@�}����������`�룲",20000,-1000,@0);
	Move("�}�����y", 10000, @100, @0, Dxl1, false);

	Move("�}�����y��", 500, @100, @0, Axl1, false);
	FadeDelete("�}����1000", 500, false);
	FadeDelete("�}�����y��", 500, true);

	Zoom("�}�����y1", 3000, 800, 800, Dxl1, false);
	Move("�}�����y*", 1000, @800, @50, Dxl2, true);

	Fade("�}�����y1", 500, 0, null, false);
	Fade("�}�����y2", 500, 1000, null, false);
	Move("�}�����y*", 500, @150, @-50, AxlDxl, true);

	Fade("�}�����y2", 500, 0, null, false);
	Fade("�}�����y3", 500, 1000, null, false);
	Move("�}�����y*", 600, @150, @-20, AxlDxl, true);

	Fade("�}�����y3", 500, 0, null, false);
	Fade("�}�����y4", 500, 1000, null, false);
	Move("�}�����y*", 400, @150, @50, AxlDxl, true);

	Fade("�}�����y4", 500, 0, null, false);
	Fade("�}�����y5", 500, 1000, null, false);
	Move("�}�����y*", 1000, @650, @-50, Axl2, false);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
�����پ硺���Ҽ�����ż��
���ڶ�Ļ���ɿ������须

�������۾�����ţ���¡�����걱½���ݰ档

����������������Ϊ��ԭ���Ծ���У�
ʹ���ϡ�������Լ����ٽ���������棬
�������趯����ǰ�� 

��̤����յ���̨֮�ϡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/md01/033vs0350a00">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
�����˵������������ȵĻ���
�һ������㷵����ʵ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����1000", 4000, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	CreateTextureEX("�}�����y��", 4000, Center, Middle, "cg/st/3d�y�Ǻ�_����_���Lb2.png");
	Zoom("�}�����y��", 0, 500, 500, null, true);
	Move("�}�����y��", 0, @-100, @-100, null, true);
	Request("�}�����y��", Smoothing);
	SetBlur("�}�����y��", true, 2, 500, 100, false);

	Fade("�}����1000", 500, 1000, null, true);

	OnSE("se���L_����_��ͻ�M07",1000);
	Move("�}�����y��", 1000, @100, @0, Dxl2, false);
	Fade("�}�����y��", 1000, 1000, null, true);

	SetFwR("cg/fw/fw��_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0360a14">
�������������������������

//���⡿
<voice name="��" class="��" src="voice/md01/033vs0370a14">
����֮Ϊ������<RUBY text="����">����</RUBY>����
������ͨ���е�ԭ���е㲻ͬӴ����

{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/033vs0380a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
�����ߵķ��У���ŷ������Ȧ��һ�㱻�����κ���
������Դ���������е��κ���

������ȷʵ�����Ǻ��������Ѳ����ٳ�֮Ϊ���С�
��һ��Ҳ����ơ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//���⡿
<voice name="��" class="��" src="voice/md01/033vs0390a14">
��������֧��Ķ����𡪡���������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ100", 15000, "WHITE");

	CreateTextureEX("�}�����y����", 4000, Center, Middle, "cg/st/3d�y�Ǻ�_�Tͻ_ͨ��.png");
	Zoom("�}�����y����", 0, 500, 500, null, true);
	Move("�}�����y����", 0, @0, @0, null, true);
	Request("�}�����y����", Smoothing);
	SetBlur("�}�����y����", true, 1, 500, 10, false);

//�������`��
	OnSE("se���L_����_��ͻ�M02",1000);
	FadeDelete("�}�����y��", 100, false);
	Fade("�}�����y����", 50, 1000, null, false);
	Fade("�}ɫ100", 100, 1000, Axl3, false);
	Zoom("�}�����y����", 100, 2000, 2000, Axl2, true);

	OnSE("se���L_����_�z��������03",1000);

	Wait(1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
��ʲôҲ�޷�������

��ʲôҲ�޷���⡣

���������������£�

�����������ǺŵĹ����ٶ�������˵��ȷʵ��
ѹ���Ե�ʤ����
�����ǣ������޷���Ӧ���ڹ�����˲������
�������Ŀ����Ի����еġ�

�����˽�����α������ġ�

�����������ȴ���ܡ�

��ʲôʱ�򡢴�������������ģ�
����ʹ<RUBY text="����">�º�</RUBY>����Ҳ��ȫ�޷���⡣

��������������������ô����������!!

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	CreateTextureEX("�}����100", 10000, Center, -50, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	CreateTextureEX("�}����200", 11000, Center, Middle, "cg/ef/ef045_���ѩ`��.jpg");
	SetBlur("�}����200", true, 3, 500, 100, false);
	CreateTextureEX("�}��������", 10000, Center, -250, "cg/st/3d�����˜�_�T��_ͨ��2.png");
	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 1000, 1000, null, true);
	Rotate("�}��������", 0, @0, @0, @180, null,true);
	SetBlur("�}��������", true, 1, 500, 100, false);


	OnSE("se���L_����_�z_�����w��02",1000);

	Zoom("�}����200", 500, 1500, 1500, Dxl2, false);
	Fade("�}����200", 200, 1000, null, false);
	EffectZoomadd(15000, 500, 500, "cg/ef/ef045_���ѩ`��.jpg", false);
	Wait(300);

	Fade("�}����100", 0, 1000, null, true);
	Delete("�}ɫ100");
	Shake("�}����100", 10000000, 1, 1, 0, 0, 1000, Dxl1, false);
	Move("�}����100", 2000, @0, -1200, Dxl1, false);
	Rotate("�}��������", 2000, @0, @0, @10, null,false);
	Zoom("�}��������", 2000, 500, 500, Dxl1, false);
	Shake("�}��������", 10000000, 1, 1, 0, 0, 1000, Dxl1, false);
	Move("�}��������", 2000, @0, -200, Dxl1, false);
	Fade("�}��������", 0, 1000, null, true);
	FadeDelete("�}����200", 500, true);

	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="����" src="voice/md01/033vs0400a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
���������Ǵ���ͬһ���ط���
�����뷽�ţ������ڸ�������Щ��

����˵�ѡ�

�������Ͳ���һ���ط���

��<RUBY text="����������">�������</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	CreateTextureEX("�}�����y��", 10000, Center, Middle, "cg/st/3d�y�Ǻ�_�T��_ͨ��3.png");
	Zoom("�}�����y��", 0, 800, 800, null, true);
	Move("�}�����y��", 0, @-150, @0, null, true);
	CreateColorEX("�}ɫ100", 15000, "WHITE");

	OnSE("se���L_����_��ͻ�M01",1000);
	Fade("�}�����y", 0, 0, null, true);

	Fade("�}�����y��", 50, 1000, null, false);
	Shake("�}�����y��", 250, 10, 2, 0, 0, 1000, Dxl2, false);
	Fade("�}ɫ100", 200, 1000, Axl2, true);

	Delete("�}����*");

	CreateTextureSP("�}����100", 3001, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	CreateTextureSP("�}�������ե�����", 13000, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");

	CreateTextureSP("�}��������", 3003, -150, -250, "cg/st/3d�����˜�_�T��_ͨ��4a.png");
	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 1800, 1800, null, true);
	Rotate("�}��������", 0, @0, @0, @100, null,true);

	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");


	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(500,@0,@0,null,false);


$��`�ץ�`�֥ʥå��� = "@�}��������";
$��`�ץ�`�֥����� = 25000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	OnSE("se���L_����_�z��������02",1000);


	EffectZoomadd(15000, 600, 100, "cg/ef/ef040_�����nͻ.jpg", false);
	Zoom("�}�������ե�����", 600, 1200, 1200, Dxl1, false);
	FadeDelete("�}ɫ100", 100, true);
	Wait(200);

	Shake("�}��������", 10000000, 0, 1, 0, 0, 1000, null, false);
	Rotate("�}��������", 1000, @0, @0, @80, Dxl2,false);
	Zoom("�}��������", 1000, 500, 500, Dxl2, false);
	FadeDelete("�}�������ե�����", 1000, true);


	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/md01/033vs0410a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
����������
���۾�����û���á�

������Ĥ����׽������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="����" src="voice/md01/033vs0420a00">
�����ܡ��������۾���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
�������ô��Ļ����������ǡ�
�����Ϊ�ϰ��� 

����������֪����

��������

�����ԡ�

�������

�����ԡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="����" src="voice/md01/033vs0430a00">
������<RUBY text="����">�й�</RUBY>��
��Ҳ����<RUBY text="����">ֱ��</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
������

����Խ�йٵ���ʶ��
��Ʋ���������֪�������������������ѵĹ��̣�
���<RUBY text="��������">ս������</RUBY>��Ӧ�ԡ�

��ԶԶ������Щ��νǿ�ߺ����ߵ�ˮƽ��
��Ҳ�������Щ����Զ���Ĵ��˺����˵ľ��磬

��ֻ���Ǵﵽ�ɳ�֮Ϊ��ʥ���������߱��ġ�

�������϶���Ϊ����ӵ�С�
�����ǡ�

����û�����ֶ�����ʵ���������Զ��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	CreateTextureEX("�}�����y��", 3002, Center, Middle, "cg/st/3d�y�Ǻ�_����_���Lb2.png");
	Zoom("�}�����y��", 0, 400, 400, null, true);
	Move("�}�����y��", 0, @-150, @0, null, true);
	CreateColorEX("�}ɫ100", 15000, "WHITE");

	OnSE("se���L_����_��ͻ�M02",1000);
	Fade("�}�����y", 0, 0, null, true);

	Fade("�}�����y��", 50, 1000, null, false);
	Shake("�}�����y��", 250, 10, 2, 0, 0, 1000, Dxl2, false);
	Fade("�}ɫ100", 200, 1000, Axl2, true);
	Delete("�}����*");

	OnSE("se����_�z_��`��_����å���",1000);

	Wait(2000);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/md01/033vs0440a00">
������������

//��������
<voice name="����" class="����" src="voice/md01/033vs0450a00">
��ʦ����˵��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
����

����������εõ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 5000, 0, null);

//���ե��`�ɥ�����
	CreateColorEX("�}ɫ200", 16000, "BLACK");
	Fade("�}ɫ200", 1000, 1000, null, true);
	Delete("�}ɫ100");
	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
��
���������������������������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����100", 3001, Center, Middle, "cg/bg/bg001_��a_01.jpg");

	SetVolume("SEͣ��", 3000, 500, null);
	FadeDelete("�}ɫ200", 1000, true);


//������
	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="����" src="voice/md01/033vs0460a00">
����Ң���ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
���ڼ�Ұ�������ش����м��أ���λ������˵����

��������������

����<RUBY text="����">�Ӿ�</RUBY>��
����<RUBY text="����">����</RUBY>��
����<RUBY text="����">�о�</RUBY>��
����<RUBY text="����">˼��</RUBY>��

��������Ͼ���
����ȥ���硣

��ʲôҲ���롣

����ʧȥһ�У�
��Ҳ��û��ǣ�Ƶ��ҵĶ����ˡ�

�����־��硣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��������
<voice name="����" class="����" src="voice/md01/033vs0470a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
�����ܰ쵽��

������һ�У�������Ͷ������ա���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 500, 0, null);
	ClearFadeAll(500, true);


}

..//������ָ��
//�Υե����롡"md01_034vs.nss"