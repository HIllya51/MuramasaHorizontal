//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_018vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma04_018vs.nss","DenziBladeCharge",true);
	Conquest("nss/ma04_018vs.nss","DenziBladeChargeSet",true);

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
	#ev944_�����֣ӻ�҆��=true;
	#ev944_�����֣ӻ�҆��_b=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma04_019.nss";

}

scene ma04_018vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_017.nss"

//�񣱣�

//������
	PrintBG("�ϱ���", 25000);
	CreateSE("SE01","se���L_����_���ϕN01");
	CreateColorSPadd("�}��ܞ", 10000, "#FFFFFF");
	CreateTextureEX("�}�ݣӣ�", 1000, 135, -300, "cg/st/3d�����˜�_�T��_ͨ��.png");
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��ܞ", 1000, false);
	Fade("�}�ݣӣ�", 300, 1000, null, false);
	Move("�}�ݣӣ�", 1000, @-10, @-30, DxlAuto, true);

	WaitKey(500);

//����҆�¤��å�����
	CreateSE("SE02","se����_���å��ԥå�_��å�����");
	CreateTextureSPadd("�}����", 3100, Center, -180, "cg/ev/ev122_�R��������҆��.jpg");
	CreateTextureSP("�}��", 3000, Center, -180, "cg/ev/ev122_�R��������҆��.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("�}����", 200, false);
	Zoom("�}����", 200, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/ma04/018vs0010a01">
�������׽����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/018vs0020a00">
���ã���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm12",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����۶��ϡ�
��ʱ��̫��Ҳ���Ѿ��ϲ����˰�
��������������ð���������

�����ڲ�Ӧ������ã��
��������ʱ�����࣬�����ֶ���طɳۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С���
//��һ���Τ������`�ȤΈ��Ϥ����¤��w�Ф�

if(!$Ichizyou_Dead){

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����˾޴�����ɳ��������档
������̩ɽ�㴣���ڵر�֮�ϡ�

�����ţ���ʲô�·�������
�Ǹ����ﱻ�����˷���·�߶��Ƚ���
�����ڣ��о�������Ҫ��ʼ�����ˡ�

����Ȼ�����ﶼ�����������ܵ�������
����������˼�����������ͺá�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ޤ�

}
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("�}��*");
	CreateTextureSP("�}��", 2000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	DrawDelete("�}�\Ļ", 150, 100, "circle_01_00_1", false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����ֱǰ����

���ǽ��е�̽�����������ǲٿ��ߵ�ֱ����
���·������ҵľ޴����߱�Ԥ���и����ж���
�л������ҷ����������

���ڿ�Ⱥ��׼�ҡ���
�����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|�Ĥ�����
//��ʳ��äƤޤ���
	CreateSE("SE01a","se���L_�|��_�C�v�|����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	MFlash(30,16);

	CreateColorSPadd("�}ɫ�g����", 20000, "#FFFFFF");
	Wait(1);
	CreateTextureSPadd("�}����", 3100, -800, -75, "cg/ev/resize/ev909_��҆��_dl.jpg");
	CreateTextureSP("�}��", 3000, -800, -75, "cg/ev/resize/ev909_��҆��_dl.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Rotate("�}��*", 0, @0, @180, @0, null,true);
	Request("�}��*", Smoothing);
	Fade("�}ɫ�g����", 0, 0, null, true);

	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateColorSP("�}��/�}��ɫ", 19010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 19020, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 19100, 260, -300, "cg/st/3d�����˜�_�T��_ͨ��.png");

	//Rotate("�}��/�}�����}װ��", 0, @0, @0, @14, null,true);
	Request("�}��/�}�����}װ��", Smoothing);
	Zoom("�}��/�}�����}װ��", 0, 500, 500, null, true);
	SetBlur("�}��/�}�����}װ��", true, 3, 500, 30, false);

	CreateSE("SE02","se���L_����_���ϕN01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Zoom("�}��/�}�����}װ��", 300, 750, 750, Axl2, false);
	Move("�}��/�}�����}װ��", 300, -276, -175, Axl2, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	Fade("�}ɫ�g����", 1, 1000, null, true);
	CreateTextureEXadd("�}��/�}����������", 19500, Center, Middle, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}��/�}���������r", 19500, Center, Middle, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}��/�}����������", 19500, Center, Middle, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}��/�}����������", 19500, Center, Middle, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}��/�}����������", 19500, Center, Middle, "cg/ef/ef044_��c.png");

	$SE����=se���L_����_�z_���02;
	CreateSE("SE031a","$SE����");
	CreateSE("SE032a","$SE����");
	CreateSE("SE033a","$SE����");
	CreateSE("SE034a","$SE����");
	CreateSE("SE035a","$SE����");
	Delete("�}ɫ�g����");

	$�𻨿sС�ʼ�=Random(5)*30;
	$�𻨿sС��=$�𻨿sС�ʼ�+250;
	Move("�}��/�}����������", 0, -520, -400, null, true);
	Zoom("�}��/�}����������", 0, $�𻨿sС��, $�𻨿sС��, null, true);
	Wait(10);
	MusicStart("SE031a",0,1000,0,1000,null,false);
	Fade("�}��/�}����������", 0, 1000, null, true);
	Shake("�}��/�}�����}װ��", 300, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��/�}����������", 300, @250, @250, Dxl2, false);
	Rotate("�}��/�}����������", 450, @0, @0, @3600, null,false);
	Shake("�}��/�}����������", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("�}��/�}����������", 300, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", false);
	FadeDelete("�}��/�}����������", 450, false);

	$���ݳ�������=100;
	$���ݳ���=$���ݳ�������+(Random(3)*20);
	Wait($���ݳ���);

	$�𻨿sС�ʼ�=Random(5)*30;
	$�𻨿sС��=$�𻨿sС�ʼ�+250;
	Move("�}��/�}���������r", 0, -98, -465, null, true);
	Zoom("�}��/�}���������r", 0, $�𻨿sС��, $�𻨿sС��, null, true);
	Rotate("�}��/�}���������r", 0, @0, @0, 0, null,false);
	Wait(10);
	MusicStart("SE032a",0,1000,0,2000,null,false);
	Fade("�}��/�}���������r", 0, 1000, null, true);
	Shake("�}��/�}�����}װ��", 300, 20, 10, 0, 0, 1000, Dxl2, false);
	Zoom("�}��/�}���������r", 300, @250, @250, Dxl2, false);
	Rotate("�}��/�}���������r", 450, @0, @0, @3600, null,false);
	Shake("�}��/�}���������r", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("�}��/�}���������r", 300, 1000, 0, 100, null, "cg/data/slide_01_02_2.png", false);
	FadeDelete("�}��/�}���������r", 450, false);

	$���ݳ���=$���ݳ�������+(Random(3)*20);
	Wait($���ݳ���);

	$�𻨿sС�ʼ�=Random(5)*30;
	$�𻨿sС��=$�𻨿sС�ʼ�+250;
	Move("�}��/�}����������", 0, -415, -346, null, true);
	Zoom("�}��/�}����������", 0, $�𻨿sС��, $�𻨿sС��, null, true);
	Rotate("�}��/�}����������", 0, @0, @0, 0, null,false);
	Wait(10);
	MusicStart("SE033a",0,1000,0,700,null,false);
	Fade("�}��/�}����������", 0, 1000, null, true);
	Shake("�}��/�}�����}װ��", 300, 20, 0, 0, 0, 1000, Dxl2, false);
	Zoom("�}��/�}����������", 300, @250, @250, Dxl2, false);
	Rotate("�}��/�}����������", 450, @0, @0, @3600, null,false);
	Shake("�}��/�}����������", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("�}��/�}����������", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);
	FadeDelete("�}��/�}����������", 450, false);

	$���ݳ���=$���ݳ�������+(Random(3)*20);
	Wait($���ݳ���);

	$�𻨿sС�ʼ�=Random(5)*30;
	$�𻨿sС��=$�𻨿sС�ʼ�+250;
	Move("�}��/�}����������", 0, -220, -470, null, true);
	Zoom("�}��/�}����������", 0, $�𻨿sС��, $�𻨿sС��, null, true);
	Rotate("�}��/�}����������", 0, @0, @0, 0, null,false);
	Wait(10);
	MusicStart("SE034a",0,1000,0,1000,null,false);
	Fade("�}��/�}����������", 0, 1000, null, true);
	Shake("�}��/�}�����}װ��", 300, 30, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��/�}����������", 300, @250, @250, Dxl2, false);
	Rotate("�}��/�}����������", 450, @0, @0, @3600, null,false);
	Shake("�}��/�}����������", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("�}��/�}����������", 300, 1000, 0, 100, null, "cg/data/zoom_01_00_1.png", false);
	FadeDelete("�}��/�}����������", 450, false);

	$���ݳ���=$���ݳ�������+(Random(3)*20);
	Wait($���ݳ���);

	$�𻨿sС�ʼ�=Random(5)*30;
	$�𻨿sС��=$�𻨿sС�ʼ�+250;
	Move("�}��/�}����������", 0, -326, -565, null, true);
	Zoom("�}��/�}����������", 0, $�𻨿sС��, $�𻨿sС��, null, true);
	Rotate("�}��/�}����������", 0, @0, @0, 0, null,false);
	Wait(10);
	MusicStart("SE035a",0,1000,0,1700,null,false);
	Fade("�}��/�}����������", 0, 1000, null, true);
	Shake("�}��/�}�����}װ��", 300, 30, 0, 0, 0, 1000, Dxl2, false);
	Zoom("�}��/�}����������", 300, @250, @250, Dxl2, false);
	Rotate("�}��/�}����������", 450, @0, @0, @3600, null,false);
	Shake("�}��/�}����������", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("�}��/�}����������", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", false);
	FadeDelete("�}��/�}����������", 450, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���������߶�ʮһ�ط���ǰ����
��û�й�����Щ��������

����֮�ڵ�������װ�ף����ϵؽ�װ�׺�ø�����
�������ų�Ⱥ������������ܼ����꣬�������ڣ�����
���������壬����Ҫ�������ء�

������η��ͻȻ���֣�
��Ȼ��ʹ����ǡ�

�����ڳ�ɡ�
��ֻҪ��ǰ��������

�������е���һ�㡣
���ܹ�����������ΨһҪ����

���ٿ��ߵĴ��λ�á�
����׼���

��ǰ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("@MF*");

//��ͻ�M
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 20000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("�}����", 3100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	Delete("�}��");
	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);
	FadeDelete("�}����", 200, true);
	Delete("�}��");

//�������`��Ļ
	CreateSE("SE01a","se���L_�|��_�C�v�|����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	MFlash(30,20);

	CreateTextureSPadd("�}�ţ���", 5100, -545, -770, "cg/ev/resize/ev944_�����֣ӻ�҆��l.jpg");
	CreateTextureSP("�}�ţ�", 5000, -545, -770, "cg/ev/resize/ev944_�����֣ӻ�҆��l.jpg");
	SetBlur("�}�ţ�", true, 2, 500, 60, false);
	Zoom("�}�ţ���", 0, 1200, 1200, null, false);
	Zoom("�}�ţ���", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ţ�", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ţ���", 300, true);

	Move("�}�ţ�*", 600, -30, -1700, Dxl2, true);

//����٥��äݤ��ݳ�����åɥ����ȤȤ�
	CreateSE("SE03a","se���L_����_�z��������02");
	CreateColorEX("�}ɫѪ", 5200, "#CC0000");
	CreatePlainSPadd("�}��д", 5110);
	Zoom("�}��д", 0, 1250, 1250, null, true);
	SetBlur("�}��д", true, 3, 500, 200, false);
	Fade("�}ɫѪ", 0, 600, null, true);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	Fade("�}ɫѪ", 200, 0, null, true);
	Shake("�}��д", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 150, 1100, 1100, Dxl1, true);

	CreateSE("SE03b","se���L_����_�z��������02");
	Zoom("�}��д", 0, 1100, 1100, null, true);
	SetBlur("�}��д", true, 3, 500, 200, false);
	Fade("�}ɫѪ", 0, 600, null, true);
	MusicStart("SE03b",0,1000,0,850,null,false);
	Fade("�}ɫѪ", 200, 0, null, true);
	Shake("�}��д", 800, 20, 0, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 150, 1100, 1100, Dxl1, true);

	CreateSE("SE03c","se���L_����_�z��������03");
	Zoom("�}��д", 0, 1300, 1300, null, true);
	SetBlur("�}��д", true, 3, 500, 200, false);
	Fade("�}ɫѪ", 0, 600, null, true);
	MusicStart("SE03c",0,1000,0,850,null,false);
	Fade("�}ɫѪ", 200, 0, null, true);
	Shake("�}��д", 800, 20, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}��д", 150, 1100, 1100, Dxl1, true);

	FadeDelete("�}��д", 2000, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/ma04/018vs0030a01">
��������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/018vs0040a00">
�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("@MF*");
	SetVolume("SE*", 650, 0, null);

//��늴Œi�������`��
//����`�ө`����������ץȤ������줬���}����
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	WaitPlay("SE*", null);

	CreateColorSP("�}ɫ�\��", 100, "#000000");
	Delete("�}�ţ�*");
	Delete("�}ɫѪ*");
	Delete("�}��д*");

	//CreateTextureSP("�}��", 4000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");

	CreateWindow("�}����", 15000, 0, 0,1024, 288, false);
	CreateWindow("�}����", 15000, 0, 288, 1024, 576, false);
	SetAlias("�}����","�}����");
	SetAlias("�}����","�}����");

	CreateColorSP("�}����/�}ɫ100", 15000, "Black");
	CreateColorSP("�}����/�}ɫ100", 15000, "Black");

	CreateWindow("�}���k", 15000, 512, 0,400, 576, false);
	SetAlias("�}���k","�}���k");
	CreateTextureEX("�}���k/�}EV100", 16000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_b.jpg");
	Request("�}���k/�}EV100", Smoothing);
	Zoom("�}���k/�}EV100", 0, 2000, 2000, null, true);
	Move("�}���k/�}EV100", 0, @-300, @0, null, false);

	CreateTextureEX("�}���k/�}EV200", 16000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	Request("�}���k/�}EV200", Smoothing);
	Zoom("�}���k/�}EV200", 0, 2000, 2000, null, true);
	Move("�}���k/�}EV200", 0, @-300, @0, null, false);

	Delete("�\Ļ��");

	CreateTextureSP("�}EV100", 14000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_a.jpg");
	CreateTextureEX("�}EV200", 14000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_b.jpg");
	Request("�}EV100", Smoothing);
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	Move("�}EV100", 0, @+400, @+288, null, false);
	Request("�}EV200", Smoothing);
	Zoom("�}EV200", 0, 2000, 2000, null, true);
	Move("�}EV200", 0, @0, @+288, null, false);

	Move("�}EV100", 500, @-400, @0, Dxl1, false);
	Move("�}����", 300, @0, @-200, null, false);
	Move("�}����", 300, @0, @+200, null, true);

	WaitAction("�}EV100", null);

	CreateColorEXadd("�}ɫ100", 14001, "White");

	OnSE("se����_�z_װ��01",1000);

	Fade("�}EV200", 0, 1000, null, false);
	Fade("�}ɫ100", 0, 1000, null, false);

	DrawTransition("�}ɫ100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("�}EV100");
	FadeDelete("�}ɫ100",1000,true);

	CreateColorEX("�}ɫ100", 14005, "Black");
	Fade("�}ɫ100", 0, 700, null, false);
	DrawTransition("�}ɫ100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("�}���k/�}EV100", 0, 1000, null, false);
	DrawTransition("�}���k/�}EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);
//	CreateColorSP("�}ɫ100", 10, "White");

	Wait(300);

	Fade("�}���k/�}EV200", 0, 1000, null, false);
	Shake("�}���k/�}EV200", 500000, 2, 1, 0, 0, 500, null, false);

	OnSE("se����_늓�_���01",700);

	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�}���k/�}200", 20000, #99CCFF);
	Fade("�}���k/�}200", 10, 600, null, true);
	Fade("�}���k/�}200", 100, 0, null, true);
	Fade("�}���k/�}200", 10, 500, null, true);
	Fade("�}���k/�}200", 100, 0, null, true);
	Fade("�}���k/�}200", 10, 700, null, true);
	Fade("�}���k/�}200", 100, 0, null, true);
	Fade("�}���k/�}200", 10, 500, null, true);
	Fade("�}���k/�}200", 100, 0, null, true);
	Fade("�}���k/�}200", 10, 800, null, true);
	Fade("�}���k/�}200", 100, 0, null, true);

	SetVolume("OnSE*", 100, 0, null);

	CreateColorSPadd("�}ɫ��", 20010, "#FFFFFF");

	Delete("�}����/*");
	Delete("�}����/*");
	Delete("�}���k/*");

	Delete("�}����");
	Delete("�}����");
	Delete("�}���k");

	Delete("�}ɫ100");
	Delete("�}EV100");
	Delete("�}EV200");


	CreateTextureSP("�}��", 4000, -440, -40, "cg/ev/resize/ev902_����늴Œi����`�륬��_cm.jpg");

	Wait(50);

	FadeDelete("�}ɫ��", 100, false);

	Move("�}��", 300, -380, @0, Dxl2, false);
	Fade("�}��", 300, 1000, null, true);
	CreateSE("SEL01","se����_늓�_���02");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureEXadd("�ץ�}��", 4020, -380, -40, "cg/ev/resize/ev902_����늴Œi����`�륬��_dm.jpg");
	CreateTextureEXsub("�ץ�}", 4010, -380, -40, "cg/ev/resize/ev902_����늴Œi����`�륬��_dm.jpg");
	SetVertex("�ץ�}", 1160, 470);

	DenziBladeCharge();


	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma04/018vs0050a00">
����Ұ������ս��֮��Ѹ�ס�֮���ѡ�����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/018vs0060a00">
����Űε�������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 0, 0, null);
	Delete("�ץ�*");
	Delete("��*");
	Delete("�}*");
	Delete("@OnBG*");

	MovieSESet(19000,"mv늴Œi��_��","se����_mv��_늴Œi��_��");
	MovieSEStart(1500);

//���ɤ���`��
	CreateTextureSP("�}����10", 9999, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureEX("�}����100", 10000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureEX("�}����200", 12000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetBlur("�}����200", true, 3, 500, 100, false);
	Fade("�}����100", 0, 1000, null, true);
	SetBlur("�}����100", true, 3, 500, 100, false);

	Shake("�}����100", 20000, 2, 3, 0, 0, 500, null, false);

	CreateTextureEXadd("�}ef100", 13000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}ef100", 0, 1000, null, true);
	Fade("�}����200", 0, 800, null, true);

	SetBlur("�}ef100", true, 3, 500, 200, false);
	Zoom("�}ef100", 5000, 5000, 5000, Dxl1, false);

	CreateSE("SE01","se���L_�Ɖ�_�z02");
	MusicStart("SE01",0,1000,0,1000,null,false);


	FadeDelete("�}ɫ100", 1500, false);

	Wait(750);

	Zoom("�}����200", 1000, 2000, 2000, Dxl1, false);
	Fade("�}����200", 1000, 0, Dxl1, false);
	Fade("�}ef100", 1000, 0, null, true);

	Zoom("�}����200", 0, 1000, 1000, Dxl1, true);

	Zoom("�}����200", 500, 3000, 3000, Dxl1, false);
	Fade("�}����200", 300, 500, Dxl1, true);

	Fade("�}����200", 300, 0, Dxl1, true);

	Wait(1000);

//����������

	ClearWaitAll(2000, 1000);

}

..//������ָ��
//�Υե����롡"ma04_019.nss"

.//�ץ�����======================================================

..//늴Œi����능�`��
function DenziBladeCharge()
{
	CreateProcess("��늴Œi����능�`��", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("��늴Œi����능�`��","��늴Œi����능�`��");
	Request("��늴Œi����능�`��", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@�ץ�}", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 300, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 250, 0, null, true);
	Wait(50);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@�ץ�}", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 200, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@�ץ�}", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 150, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	}

}