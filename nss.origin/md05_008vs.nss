//<continuation number="1170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_008vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md05_008vs.nss","SetKenkiEX",true);
	Conquest("nss/md05_008vs.nss","SetKenki",true);
	Conquest("nss/md05_008vs.nss","FadeKenki",true);
	Conquest("nss/md05_008vs.nss","GoKenki",true);

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
	#ev228_���y��܊��_c=true;
	#bg002_��a_02=true;
	#bg202_�����ݳ�����ɽ_02=true;
	#bg106_��ʿɽ�h��b_00=true;
	#ev927_�˄������ģ�=true;
	#ev928_�˄������ģ�=true;
	#ev228_���y��܊��_e=true;
	#bg001_��a_02=true;
	#ev504_����ͻ�M=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_���������羀=true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;
	$GameName = "md05_009.nss";
}

scene md05_008vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm01",0,1000,true);//�A��

	PrintBG("�ϱ���", 30000);

	//�������ԥåȣ����x��
	//CP_AllSet("����");

	//�������
	CloudZoomSet(2000);
	//CloudZoomSet2("�ޥ�",1000,0,0,1024,600);

	LoadImage("���إ���`��", "cg/bg/bg204_�����ر���_02.jpg");
	SetAlias("���إ���`��", "���إ���`��");
	LoadImage("��������`����", "cg/bg/resize/bg002_��a_02.jpg");
	SetAlias("��������`����", "��������`����");
	LoadImage("��������`����", "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	SetAlias("��������`����", "��������`����");

	LoadImage("����`����", "cg/st/3d�˄���_�T��_ͨ��.png");
	SetAlias("����`����", "����`����");
	LoadImage("����`����", "cg/st/3d�˄���_�T��_ͨ��2.png");
	SetAlias("����`����", "����`����");
	LoadImage("����`����", "cg/st/3d�˄���_�T��_ͨ��3.png");
	SetAlias("����`����", "����`����");

	CreateTextureSP("������", 100, 0, 0, "cg/ev/ev228_���y��܊��_c.jpg");
	//CreateTextureSP("������", 100, 0, Middle, "cg/ev/resize/ev228_���y��܊��_cl.jpg");
	//CreateSurfaceEX("�}Suf",200,2000,"������");

/*
	LoadImage("����`����", "cg/st/3d�˄���_�T��_ͨ��.png");
	CreateTextureSP("���C��", 100, 66, -122, "����`����");
	Zoom("���C��", 0, 100, 100, Dxl2, true);
	CreateTextureSP("���C��", 100, -96, -440, "����`����");
	Zoom("���C��", 0, 200, 200, Dxl2, true);
	CreateTextureSP("���C��", 100, 313, -267, "����`����");
	Zoom("���C��", 0, 300, 300, Dxl2, true);
	CreateTextureSP("���C��", 100, 282, -37, "����`����");
	Zoom("���C��", 0, 400, 400, Dxl2, true);
	CreateTextureSP("���C��", 100, 252, -384, "����`����");
	Zoom("���C��", 0, 500, 500, Dxl2, true);
	CreateTextureSP("���C��", 100, -129, -61, "����`����");
	Zoom("���C��", 0, 800, 800, Dxl2, true);
	CreateTextureSP("���C��", 100, -355, -245, "����`����");
	Zoom("���C��", 0, 1000, 1000, Dxl2, true);

	//SetBlur("���C��", true, 1, 300, 200, false);
	//SetBlur("���C��", true, 1, 300, 200, false);
	//SetBlur("���C��", true, 1, 300, 200, false);
	//SetBlur("���C��", true, 1, 300, 200, false);
	//SetBlur("���C��", true, 1, 300, 200, false);
	//SetBlur("���C��", true, 1, 300, 200, false);
	//SetBlur("���C��", true, 1, 300, 200, false);

	CreateSCR1("@�ޥ�/������","@�ޥ�/������",100000,-4000,@0);

	MoveFRP1("@���C��",20000,3,3);
	MoveFRP2("@���C��",20000,4,4);
	MoveFRP3("@���C��",20000,5,5);
	MoveFRP4("@���C��",20000,7,7);
	MoveFRP5("@���C��",20000,9,9);
	MoveFRP6("@���C��",20000,10,10);
	MoveFRP7("@���C��",20000,12,12);

	Move("���C��", 1200, @-1000, @-500, Dxl1, false);
	Move("���C��", 1200, @-500, @1000, Dxl1, false);
	Move("���C��", 1200, @1000, @-500, Dxl1, false);
	Move("���C��", 1200, @1000, @500, Dxl1, false);
	Move("���C��", 1200, @1500, @0, Dxl1, false);
	Move("���C��", 1200, @500, @-1000, Dxl1, false);
	Move("���C��", 1200, @500, @-1000, Dxl1, false);

	Wait(600);

	//MoveFRP1stop();
	//MoveFRP2stop();
	//MoveFRP3stop();
	//MoveFRP4stop();
	//MoveFRP5stop();
	//MoveFRP6stop();
	//MoveFRP7stop();


	Move("���C��", 0, @1000, @500, Dxl1, false);
	Move("���C��", 0, @500, @-1000, Dxl1, false);
	Move("���C��", 0, @-1000, @500, Dxl1, false);
	Move("���C��", 0, @-1000, @-500, Dxl1, false);
	Move("���C��", 0, @-1500, @0, Dxl1, false);
	Move("���C��", 0, @-500, @1000, Dxl1, false);
	Move("���C��", 0, @-500, @1000, Dxl1, false);
	Fade("���C*", 0, 0, null, false);
	Fade("���C��", 0, 1000, null, true);

*/
	FadeDelete("�ϱ���", 1000, true);

..//������ָ��
//ǰ�ե����롡"md05_007vs.nss"


//���˄���


//3d�˄���_�T��_ͨ��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ǰ��

��������װ�����������Ȼ���裬����ҫ��
������˼��Ķ��ء�

�������Ǻŵĸ���Ʒ��
���������ʡ��������ʵ��ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md05/008vs0010a01">
�����������Ǹ��ơ���
�������ӵ�������Ǻ�ƥ�е���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0020a00">
��Ϊʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0030a01">
�����������ʲô�ر�ķ�����
����Щ�������ҵ������ġ��ѡ������˵����ߣ�
���ͱ�֮ǰ�ļ�����Ҫǿ����ࣿ��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0040a01">
���ƺ����Ǹ�ԭ����ͬ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ǰ��ﵮ����ʼ���㱻���Ǻ�
ʩ����һЩʲô���⹤�գ����������ɡ�
��
���������һ�����鷳�ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("������", 100, 0, 0, "��������`����");
	CreateTextureSP("���C��", 100, -794, -430, "cg/st/resize/3d�˄���_����_ͨ��_ex.png");
	Zoom("���C��", 0, 500, 500, Dxl2, true);
	CreateTextureSP("�ԙC��", 100, 0, -103, "cg/st/3d������K_�T��_ͨ��.png");

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("������", 500, @-50, @0, Dxl2, false);
	Move("�ԙC��", 500, @-100, @0, Dxl2, false);
	Move("���C��", 500, @400, @0, Dxl2, false);

	SetFwR("cg/fw/fw�פι�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���˄�������
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0050c00">
�������棿��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("������", 100, -1024, -512, "��������`����");
	CreateTextureSP("�ԙC��", 100, -200, -453, "cg/st/3d������K_�T��_ͨ��5.png");
	Rotate("�ԙC��", 0, @0, @0, @90, null, true);
	Zoom("�ԙC��", 0, 300, 300, Dxl2, true);
	CreateTextureSP("���C��", 100, 736, 188, "����`����");

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("������", 500, @50, @100, Dxl2, false);
	Move("�ԙC��", 500, @50, @50, Dxl2, false);
	Move("���C��", 500, @-500, @-300, Dxl2, false);

	SetFwL("cg/fw/fw�Ǥν�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0041]
//���˄����¡�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0060c01">
�������裿��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("������", 100, Center, Middle, "��������`����");
	Zoom("������", 0, 600, 600, Dxl2, true);
	CreateTextureSP("�ԙC��", 200, 85, -340, "cg/st/3d������K_�T��_ͨ��2.png");
	Zoom("�ԙC��", 0, 300, 300, Dxl2, true);
	CreateTextureSP("���C��", 200, 203, -190, "����`����");
	Request("���C��", Smoothing);

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("������", 500, @30, @0, Dxl2, false);
	Move("�ԙC��", 500, @-50, @0, Dxl2, false);
	Move("���C��", 500, -303, @0, Dxl2, false);

	SetFwL("cg/fw/fwè��צ_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0042]
//���˄����á�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0070c02">
���ַ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("���C��", 100, 553, -171, "����`����");
	Zoom("���C��", 0, 500, 500, Dxl2, true);
	//CreateTextureSP("�ԙC��", 100, -202, -360, "cg/st/3d������K_�T��_ͨ��2.png");

	OnSE("se���L_����_��ͻ�M02",1000);
	Zoom("���C��", 500, 2000, 2000, Dxl1, false);
	Move("���C��", 500, -803, @0, Dxl1, false);

	Zoom("������", 500, 1000, 1000, Dxl1, false);
	Zoom("�ԙC��", 500, 1000, 1000, Dxl1, false);
	Move("�ԙC��", 500, -202, -360, Dxl1, false);
	Move("���C��", 500, @-500, @0, Dxl1, false);

	SetFwL("cg/fw/fwβ��y����_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0043]
//���˄����ġ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0080c03">
��ɱ������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("���C��");
	CreateTextureSP("������", 100, Center, Middle, "cg/bg/resize/bg001_��a_02.jpg");
	CreateTextureSP("���C��", 200, 46, 363, "����`����");
	CreateTextureSP("�ԙC��", 200, -175, -105, "cg/st/3d������K_�T��_ͨ��3.png");

	OnSE("se���L_����_�z_���02",1000);
	Move("������", 500, @0, 0, Dxl1, false);
	Move("�ԙC��", 500, @0, @100, Dxl1, false);
	Move("���C��", 500, @0, @-600, Dxl2, false);

	SetFwR("cg/fw/fw���������_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0044]
//���˄����š�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0090c04">
�����ǣ���������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ĺ���
		CreateColorEXadd("ɫ��", 10000, "#FFFFFF");
		LoadImage("���ե����ȥ���`��", "cg/ef/ef042_���ô��.jpg");
		SetAlias("������", "���������ꥢ����");
	
		CreateTextureEX("���٥�ȣ�", 100, 0, 0, "cg/ev/resize/ev927_�˄������ģ�_l.jpg");
		SetBlur("���٥�ȣ�", true, 2, 500, 50, false);
		CreateTextureEX("���٥�ȣ�", 100, -1024, -276, "cg/ev/resize/ev928_�˄������ģ�_l.jpg");
		SetBlur("���٥�ȣ�", true, 2, 500, 50, false);

		CreateTextureEXadd("���ե����ȣ�", 100, 0, 0, "���ե����ȥ���`��");
		Zoom("���ե����ȣ�", 0, 1200, 1200, Dxl2, true);
		CreateTextureEXadd("���ե����ȣ�", 100, 0, 0, "cg/ef/ef003_�����Ƅ�.jpg");

		SetBlur("���C��", true, 2, 500, 50, false);

	OnSE("se���L_�Ɖ�_���k01",1000);
	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_��ͻ�M03",1000);

	CreateSE("������ɣ�","se���L_����_��ͻ�M07");
	CreateSE("������ɣ�","se���L_����_�����01");
	CreateSE("������ɣ�","se���L_����_�z������01");
	CreateSE("������ɣ�","se���L_����_��ͻ�M07");
	CreateSE("������ɣ�","se���L_����_�����01");
	CreateSE("������ɣ�","se���L_����_�z_���04");

	Zoom("���C��", 200, 2000, 2000, Dxl1, false);
	Fade("ɫ��", 200, 1000, Axl1, true);
	Delete("���C��");
	Delete("�ԙC��");

	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 0, 0, null, false);

	Fade("���ե����ȣ�", 200, 1000, null, false);
	Zoom("���ե����ȣ�", 500, 2000, 2000, Axl1, false);
	Move("���٥�ȣ�", 600, -720, -410, Axl1, 400);

//	OnSE("se���L_����_��ͻ�M07",1000);
//	OnSE("se���L_����_�����01",1000);
//	OnSE("se���L_����_�z������01",1000);
	SoundPlay("@������ɣ�",0,1000,false);
	SoundPlay("@������ɣ�",0,1000,false);
	SoundPlay("@������ɣ�",0,1000,false);

	Shake("���ե����ȣ�", 1000, 0, 50, 0, 0, 700, Dxl1, false);
	Shake("���٥�ȣ�", 1000, 0, 100, 0, 0, 700, Dxl1, false);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 300, 1000, Axl1, true);
//	WaitKey();

		Delete("���٥�ȣ�");
		Fade("���ե����ȣ�", 0, 0, null, true);
		Fade("���ե����ȣ�", 0, 0, null, true);
		Zoom("���ե����ȣ�", 0, 1000, 1000, Axl1, true);
		Zoom("���ե����ȣ�", 0, 1200, 1200, Dxl2, true);
		Rotate("���ե����ȣ�", 0, @0, @180, @0, null, true);

	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 100, 0, null, false);

	Fade("���ե����ȣ�", 200, 1000, null, false);
	Zoom("���ե����ȣ�", 500, 2000, 2000, Axl1, false);
	Move("���٥�ȣ�", 600, @720, @200, Axl2, 500);

//	OnSE("se���L_����_��ͻ�M07",1000);
//	OnSE("se���L_����_�����01",1000);
//	OnSE("se���L_����_�z_���04",1000);
	SoundPlay("@������ɣ�",0,1000,false);
	SoundPlay("@������ɣ�",0,1000,false);
	SoundPlay("@������ɣ�",0,1000,false);

	Shake("���ե����ȣ�", 1000, 0, 50, 0, 0, 700, Dxl1, false);
	Shake("���٥�ȣ�", 1000, 0, 100, 0, 0, 700, Dxl1, false);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 300, 1000, Axl2, true);
//	WaitKey();

	Delete("���ե����ȣ�");
	Delete("���ե����ȣ�");
	Delete("���٥�ȣ�");

	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg002_��a_02.jpg");
	CreateTextureSP("���C��", 101, -452, -486, "cg/st/resize/3d�˄���_����_ͨ��_ex.png");
	Zoom("���C��", 0, 50, 50, Dxl2, true);
	CreateTextureSP("�ԙC��", 101, -600, -100, "cg/st/3d������K_����_���Lb.png");
	Zoom("�ԙC*", 0, 3000, 3000, Dxl2, true);

//������
	OnSE("se���L_����_���nͻ01",1000);
	Fade("ɫ��", 300, 0, null, false);

	Zoom("���C��", 1000, 200, 200, Dxl2, false);
	Shake("������", 800, 0, 10, 0, 0, 500, Dxl2, false);
	Zoom("������", 1000, 1500, 1500, Dxl2, false);
	Shake("�ԙC��", 800, 0, 50, 0, 0, 800, Dxl2, false);
	Zoom("�ԙC��", 1000, 1000, 1000, Dxl2, false);
	BezierMove("�ԙC��", 1000, (@0,@0){@-200,@100}{@800,@100}(@600,@-100), Dxl2, false);

	SetFwC("cg/fw/fw����_��ʹ.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md05/008vs0100a00">
���������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����������

�����������ʽ��

����Ұ������ս�񷨡�
��
�������͹���ʹ�õ��Ǹ�����Ϊ���ơ�

�������ֶ������̳���������?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md05/008vs0110a00">
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("������", 1000, 0, 0, SCREEN);

	Delete("�ԙC��");

	CreateTextureSP("������", 100, -50, -300, "��������`����");
	CreateTextureSP("���C��", 100, -497, -462, "cg/st/resize/3d�˄���_����_ͨ��_ex.png");
	Zoom("���C��", 0, 300, 300, Dxl2, true);
	SetBlur("���C��", true, 1, 500, 50, false);
	CreateTextureSP("���C��", 100, 500, -408, "cg/st/resize/3d�˄���_����_ͨ��_ex.png");
	Zoom("���C��", 0, 500, 500, Dxl2, true);
	CreateTextureSP("���C��", 100, -50, -885, "����`����");
	Zoom("���C��", 0, 1000, 1000, Dxl2, true);

	//�����S��������S����
	MoveFTP1("@���C��",10000,1,2);
	//�����S��������S����
	MoveFTP2("@���C��",10000,2,4);
	//�����S��������S����
	MoveFTP3("@���C��",10000,3,6);
	FadeDelete("������", 500, true);

	SetFwC("cg/fw/fw����h�����_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0071]
//���˄����ơ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0120c05">
���ң���

{	FwC("cg/fw/fw���򌧤����_ͨ��.png");
	Move("���C��", 500, @-500, @0, Dxl3, false);}
//���˄����ǡ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0130c06">
���ң���

{	FwC("cg/fw/fw�פι�_ͨ��.png");
	Move("���C��", 500, @0, @650, Dxl3, false);}
//���˄�������
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0140c00">
���Ұ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("������", 1000, 0, Middle, "���إ���`��");
	CreateTextureEX("������", 1000, 0, Middle, "���إ���`��");
	//SetVertex("������", Center, 200);
	//SetVertex("������", Center, 200);
	Zoom("������", 0, 3000, 3000, Dxl2, true);
	Zoom("������", 0, 3000, 3000, Dxl2, true);

	SetKenkiEX();
	SetKenki("��");
	SetKenki("��");

	//�����S��������S���ȣ�ֹͣ
	MoveFTP1stop();
	MoveFTP2stop();
	MoveFTP3stop();

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("������", 300, @-30, @30, Axl1, false);
	Move("���C��", 300, @-40, @40, Axl1, false);
	Move("���C��", 300, @-80, @80, Axl1, false);
	Move("���C��", 300, @400, @-650, Axl1, false);
	Fade("������", 300, 1000, null, true);

	CreateSCR1("@������","@������",1000,-4000,@0);

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("@������ɣ�",1000,500,true);

//�􄇊���
	OnSE("se���L_����_��ͻ�M08",1000);
	FadeKenki("��");

	SetFwC("cg/fw/fw�פι�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���˄�������
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0150c00">
�����׹ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇊���
	SetKenki("��");
	OnSE("se���L_����_��ͻ�M02",1000);
	GoKenki("��");
	FadeKenki("��");

	SetFwC("cg/fw/fw�Ǥν�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���˄����¡�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0160c01">
�����ǽǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇊���
	SetKenki("��");
	OnSE("se���L_����_��ͻ�M02",1000);
	GoKenki("��");
	FadeKenki("��");

	SetFwC("cg/fw/fwè��צ_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���˄����á�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0170c02">
����èצ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇊���
	SetKenki("��");
	OnSE("se���L_����_��ͻ�M02",1000);
	GoKenki("��");
	FadeKenki("��");

	SetFwC("cg/fw/fwβ��y����_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���˄����ġ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0180c03">
������β������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇊���
	SetKenki("��");
	OnSE("se���L_����_��ͻ�M02",1000);
	GoKenki("��");
	FadeKenki("��");

	SetFwC("cg/fw/fw���������_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���˄����š�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0190c04">
�������⡱����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇊���
	SetKenki("��");
	OnSE("se���L_����_��ͻ�M02",1000);
	GoKenki("��");
	FadeKenki("��");

	SetFwC("cg/fw/fw����h�����_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���˄����ơ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0200c05">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇊���
	GoKenki("��");
	OnSE("se���L_����_��ͻ�M02",1000);
	FadeKenki("��");

	SetFwC("cg/fw/fw���򌧤����_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���˄����ǡ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0210c06">
������ᰡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�ϱ���", 1000, 0, 0, "cg/bg/bg001_��a_02.jpg");

	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_��ͻ�M02",1000);
	OnSE("se���L_����_��ͻ�M03",1000);

	Move("���C��", 800, @2000, @0, Axl1, false);
	Move("���C��", 700, @2000, @0, Axl1, false);
	Move("���C��", 600, @2000, @0, Axl1, false);
	Move("���C��", 500, @2000, @0, Axl1, false);
	Move("���C��", 400, @2000, @0, Axl1, false);
	Move("���C��", 300, @2000, @0, Axl1, false);
	Move("���C��", 200, @2000, @0, Axl1, false);

	Fade("�ϱ���", 1000, 1000, null, true);
	SCR1stop();

	MoveFRP1stop();
	MoveFRP2stop();
	MoveFRP3stop();
	MoveFRP4stop();
	MoveFRP5stop();
	MoveFRP6stop();
	MoveFRP7stop();

//�􄇊���
	CreateTextureSP("������", 2000, Center, 0, "��������`����");

	CreateTextureSP("���C��", 2000, -100, 700, "cg/st/resize/3d���羀_����_ͨ��_ex.png");
	Zoom("���C��", 0, 300, 300, Dxl2, true);
	CreateTextureSP("���C��", 2000, 0, -100, "����`����");
	Zoom("���C��", 0, 100, 100, Dxl2, true);
	CreateTextureSP("���C��", 2000, -100, -100, "����`����");
	Zoom("���C��", 0, 300, 300, Dxl2, true);
	CreateTextureSP("���C��", 2000, 50, -100, "����`����");
	Zoom("���C��", 0, 600, 600, Dxl2, true);
	CreateTextureSP("���C��", 2000, -150, -100, "����`����");
	Zoom("���C��", 0, 1000, 1000, Dxl2, true);

	CreateSE("������ɣ�","se���L_����_��ͻ�M01");
	CreateSE("������ɣ�","se���L_����_��ͻ�M01");
	CreateSE("������ɣ�","se���L_����_��ͻ�M01");
	CreateSE("������ɣ�","se���L_����_��ͻ�M01");

	Delete("�ϱ���");
//	WaitKey();

	SetVolume("������ɣ�", 0, 800, NULL);
	Move("������", 700, @0, @-1000, Dxl1, false);

	Zoom("���C��", 700, 2000, 2000, Axl1, false);
	Zoom("���C��", 700, 2000, 2000, Axl1, false);
	Zoom("���C��", 700, 2000, 2000, Axl1, false);
	Zoom("���C��", 700, 2000, 2000, Axl1, false);

	MusicStart("������ɣ�",0,1000,0,1000,null,false);
	Move("���C��", 150, @-2000, @-300, Axl1, false);
	Wait(150);
	MusicStart("������ɣ�",0,1000,0,1000,null,false);
	Move("���C��", 150, @2000, @-400, Axl1, false);
	Wait(150);
	Zoom("���C��", 500, 300, 300, Dxl2, false);
	MusicStart("������ɣ�",0,1000,0,1000,null,false);
	Move("���C��", 500, -221, -444, Dxl2, false);
	Move("���C��", 150, @-1600, @-500, Axl1, false);
	Wait(150);
	MusicStart("������ɣ�",0,1000,0,1000,null,false);
	Move("���C��", 150, @1600, @-600, Axl1, false);
//	WaitKey();
	Wait(350);

	CreateSE("������ɣ�","se���L_����_��ͻ�M01");
	SetVolume("������ɣ�", 1000, 0, NULL);
	MusicStart("������ɣ�",0,1000,0,1000,null,false);

	Move("������", 300, @0, -100, Dxl2, false);
	Move("���C��", 300, -221, -144, Dxl2, false);
	Zoom("������", 300, 1500, 1500, Dxl2, false);
	Zoom("���C��", 300, 1000, 1000, Dxl2, true);

	#av_���������羀=true;

	SetFwR("cg/fw/fw���羀_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����ΣȤΤ����|�ȿ��{���󤭤��`��
//���˄����ȡ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0220c07">
�����սᡱ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����T
	CreateTextureEX("���٥�ȣ�", 2000, 0, 0, "cg/ev/resize/evex001_�˄���ͻ��.jpg");
	SetVertex("���٥�ȣ�", 512, 50);
	Zoom("���٥�ȣ�", 0, 3000, 3000, Dxl2, true);
	SetBlur("���٥�ȣ�", true, 2, 500, 100, false);

	Fade("���٥�ȣ�", 500, 1000, null, false);
	Zoom("���٥�ȣ�", 1000, 1000, 1000, Dxl2, true);

	Delete("���C��");
	Delete("���C��");
	Delete("���C��");
	Delete("���C��");
	Delete("���C��");
	Delete("������");


//�ʂ�
	Move("���C��", 0, @-3000, @0, Axl1, false);
	Move("���C��", 0, @-3000, @0, Axl1, false);
	Move("���C��", 0, @-3000, @0, Axl1, false);
	Move("���C��", 0, @-3000, @0, Axl1, false);
	Move("���C��", 0, @-3000, @0, Axl1, false);
	Move("���C��", 0, @-3000, @0, Axl1, false);
	Move("���C��", 0, @-3000, @0, Axl1, true);

	Move("������", 0, 0, @0, Axl1, true);
	Move("������", 0, 0, @0, Axl1, true);

	CreateColorEX("ɫ��", 10000, "#FFFFFF");
	Request("ɫ��", AddRender);

	CreateTextureEX("������", 1000, 0, 0, "cg/bg/bg002_��a_02.jpg");
	SetVertex("������", 1000, 200);
	CreateTextureEX("�ԙC��", 1000, 0, 0, "cg/st/3d������K_�Tͻ_ͨ��.png");
	Zoom("�ԙC��", 0, 100, 100, Dxl2, true);
	SetBlur("�ԙC��", true, 1, 500, 50, false);

	LoadImage("���C����`����", "cg/st/resize/3d�˄���_�T��_ͨ��3_l.png");
	SetAlias("���C����`����", "���C����`����");

	CreateTextureEX("���C��", 2000, -575, 500, "���C����`����");
	CreateTextureEX("���C��", 2000, -775, 600, "���C����`����");
	CreateTextureEX("���C��", 2000, -275, 700, "���C����`����");
	Rotate("���C��", 0, @0, @180, @0, null, true);

	SetBlur("���C��", true, 1, 500, 50, false);

		CreateWindow("������ɥ���", 150, 1024, 0, 512, 576, false);
		SetAlias("������ɥ���", "������ɥ���");
		CreateTextureSP("������ɥ���/����", 1500, 0, 0, "cg/bg/bg204_�����ر���c_02.jpg");
		CreateTextureSP("������ɥ���/�AȾ��", 1500, 1103, -195, "cg/st/3d����ʽ�AȾ_�Tͻ_ͨ��.png");
		Zoom("������ɥ���/�AȾ��", 0, 300, 300, Dxl2, true);
		CreateTextureSP("������ɥ���/�AȾ��", 1500, 1251, -364, "cg/st/3d����ʽ�AȾ_�Tͻ_ͨ��2.png");
		Zoom("������ɥ���/�AȾ��", 0, 500, 500, Dxl2, true);
		CreateTextureSP("������ɥ���/�AȾ��", 1500, 1437, -125, "cg/st/3d����ʽ�AȾ_�Tͻ_ͨ��3.png");
		Zoom("������ɥ���/�AȾ��", 0, 700, 700, Dxl2, true);
		CreateTextureSP("������ɥ���/���C��", 1500, -417, -173, "cg/st/3d�˄���_�T��_ͨ��.png");
		SetBlur("������ɥ���/���C��", true, 1, 500, 50, false);


	SetFwC("cg/fw/fw����_ͨ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md05/008vs0230a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������һ˲�䣬�����ڲ�����ˡ�
��������Щ�һﲻ�Ǹ���Ʒ��

������Ƭ��

�������Ǻŷ������������������������������ֵĴ��ڡ�

�����Բ���˽ӽ���ԭ�͡�

��ͬ��ǿ��������Ѹ�ݣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSCR1("@������","@������",1000,-4000,@0);

	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	CreateSE("������ɣ�","se���L_����_��ͻ�M01");
	CreateSE("������ɣ�","se���L_����_���ϕN01");
	OnSE("se���L_����_��ͻ�M06",1000);
	OnSE("se���L_����_��ͻ�M08",1000);

	Fade("���٥�ȣ�", 500, 0, null, false);
	Zoom("���٥�ȣ�", 500, 1300, 1300, Axl2, false);

	BezierMove("���C��", 1100, (@0,@-1000){@333,@-200}{@666,@100}(@1000,@0), Dxl1, 100);
	BezierMove("���C��", 1000, (@0,@-500){@333,@200}{@666,@-100}(@1000,@0), Dxl1, 100);
	BezierMove("���C��", 900, (@0,@300){@333,@-200}{@666,@500}(@1000,@0), Dxl1, 100);
	BezierMove("���C��", 800, (@0,@0){@333,@100}{@666,@100}(@1000,@0), Dxl1, 100);
	BezierMove("���C��", 700, (@0,@-800){@333,@-600}{@666,@-100}(@1000,@0), Dxl1, 100);
	BezierMove("���C��", 600, (@0,@-1200){@333,@-600}{@666,@300}(@1000,@0), Dxl1, 100);
	BezierMove("���C��", 500, (@0,@100){@333,@500}{@666,@-100}(@1000,@0), Dxl1, true);

	SoundPlay("������ɣ�",0,1000,false);

	Move("���C��", 500, @500, @-1000, Axl1, false);
	Move("���C��", 450, @500, @-1000, Axl1, false);
	Move("���C��", 400, @1500, @0, Axl1, false);
	Move("���C��", 350, @1000, @500, Axl1, false);
	Move("���C��", 300, @1000, @-500, Axl1, false);
	Move("���C��", 250, @500, @1000, Axl1, false);
	Move("���C��", 200, @1500, @-500, Axl1, false);

	SoundPlay("������ɣ�",0,1000,false);
	SoundPlay("������ɣ�",3000,800,true);

	//����Ƅ�
	CloudZoomVertex(0,@500,@200,Dxl2,false);
	//����_ʼ
	CloudZoomStart(700,1000,1000,500,1000);

	Zoom("������", 3000, 2000, 2000, Axl2, false);
	Zoom("�ԙC��", 3000, 300, 300, null, false);
	FadeF("�ԙC��",3000,1000,3000,-50,-120,null,false);

	Rotate("�ԙC��", 2000, @0, @0, 0, Dxl1, false);
	Move("�ԙC��", 2000, @100, @-50, Dxl1, false);
	Fade("������", 500, 1000, null, false);
	Fade("�ԙC��", 500, 1000, null, true);
	SCR1stop();

	Fade("���C��", 0, 1000, null, false);
	Zoom("���C��", 1000, 700, 700, Dxl2, false);
	Move("���C��", 1000, @-100, @-1600, Dxl2, false);
	Wait(200);

	Fade("���C��", 0, 1000, null, false);
	Zoom("���C��", 800, 500, 500, Dxl2, false);
	Move("���C��", 800, @-100, @-1500, Dxl2, false);
	Wait(200);

	Fade("���C��", 0, 1000, null, false);
	Zoom("���C��", 1000, 300, 300, Dxl2, false);
	Move("���C��", 1000, @-100, @-1300, Dxl1, false);

	WaitAction("���C��", null);

	Rotate("�ԙC��", 1000, @0, @0, -90, Axl1, false);
	Move("�ԙC��", 1000, 0, -100, Axl1, false);

	Rotate("���C��", 600, @0, @0, @30, Dxl1, false);
	Zoom("���C��", 600, 1000, 1000, Axl1, false);
	Move("���C��", 600, @2000, @-1000, Axl1, false);
	Wait(200);

	Rotate("���C��", 700, @0, @0, @-30, Dxl1, false);
	Zoom("���C��", 700, 1000, 1000, Axl1, false);
	Move("���C��", 700, @-2000, @-1000, Axl1, false);
	Wait(200);

	Zoom("�ԙC��", 500, 700, 700, Axl1, false);

	Zoom("���C��", 500, 1000, 1000, Axl1, false);
	FadeF("���C��",500,1000,1000,-100,0,null,false);

	Fade("ɫ��", 500, 1000, null, true);

//������
	CreateSE("������ɣ�","se���L_����_�z_���04");
	CreateSE("������ɣ�","se���L_����_���nͻ01");
	CreateSE("������ɣ�","se���L_����_�z_���01");
	CreateSE("������ɣ�","se���L_����_Ź��05");

		//�����ȥ
		CloudZoomFade(0,false);

		Delete("�ԙC��");
		Delete("���C��");
		Delete("���C��");
		Delete("���C��");

	CreateTextureSP("������", 1000, 0, 0, "cg/bg/bg002_��a_02.jpg");
	Zoom("������", 0, 1500, 1500, Dxl2, false);

	CreateTextureSP("���٥�ȣ�", 1000, 0, 0, "cg/ev/ev928_�˄������ģ�.jpg");
	SetBlur("���٥�ȣ�", true, 1, 500, 50, false);
	CreateTextureSP("���٥�ȣ�", 1000, 0, 0, "cg/ev/ev927_�˄������ģ�.jpg");
	SetBlur("���٥�ȣ�", true, 1, 500, 50, false);
	CreateTextureEX("���ե����ȣ�", 1000, 0, 0, "cg/ef/ef042_���ô��.jpg");
	Request("���ե����ȣ�", AddRender);
	Zoom("���ե����ȣ�", 0, 1200, 1200, Dxl2, true);
	CreateTextureEX("���ե����ȣ�", 1000, 0, 0, "cg/ef/ef042_���ô��.jpg");
	Rotate("���ե����ȣ�", 0, @0, @180, @0, null, true);
	Zoom("���ե����ȣ�", 0, 1200, 1200, Dxl2, true);
	Request("���ե����ȣ�", AddRender);

	SetVolume("������ɣ�", 1000, 0, NULL);
	SoundPlay("������ɣ�",0,1000,false);

	Fade("ɫ��", 300, 0, null, false);

	Zoom("���٥�ȣ�", 300, 2000, 2000, Axl1, 200);
	Shake("���٥�ȣ�", 300, 0, 50, 0, 0, 500, Dxl1, false);
	SoundPlay("������ɣ�",0,1000,false);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Shake("���ե����ȣ�", 300, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("���ե����ȣ�", 300, 0, null, false);

	SoundPlay("������ɣ�",0,1000,false);

	Fade("���٥�ȣ�", 300, 0, null, false);
	Zoom("���٥�ȣ�", 300, 2000, 2000, Axl1, 200);

	SoundPlay("������ɣ�",0,1000,false);

	Fade("���ե����ȣ�", 0, 500, null, true);
	Fade("���ե����ȣ�", 600, 1000, null, false);
	Shake("���ե����ȣ�", 300, 0, 50, 0, 0, 500, Dxl1, false);
	Shake("���٥�ȣ�", 600, 0, 50, 0, 0, 500, Dxl1, false);
	Move("���٥�ȣ�", 600, @200, @200, Axl1, false);
	Fade("ɫ��", 600, 1000, null, true);



//���}�u�Bꠡ��k��h
	CreateSE("������ɣ�","se���L_����_��ͻ�M05");
	SoundPlay("������ɣ�",1000,300,true);
	OnSE("se���L_����_��ͻ�M01",1000);

		Delete("���ե�����*");
		Delete("���٥��*");
	
		CreateTextureSP("���C��", 1000, -200, -300, "����`����");
		CreateTextureSP("���C��", 1000, 200, -100, "����`����");
		CreateTextureSP("���C��", 1000, -50, -100, "����`����");
		Zoom("���C*", 0, 200, 200, Dxl2, true);
	
		CreateTextureSP("�ԙC��", 1100, -400, -400, "cg/st/resize/3d������K_����_���Lb_l.png");
		Rotate("�ԙC��", 0, @0, @0, 45, null, true);
		Zoom("�ԙC��", 0, 500, 500, Dxl2, true);

//		CreateWindow("������ɥ���", 150, 1024, 0, 512, 576, false);
//		SetAlias("������ɥ���", "������ɥ���");
//		CreateTextureSP("������ɥ���/����", 1500, 0, 0, "cg/bg/bg204_�����ر���c_02.jpg");
//		CreateTextureSP("������ɥ���/�AȾ��", 1500, 1103, -195, "cg/st/3d����ʽ�AȾ_�Tͻ_ͨ��.png");
//		Zoom("������ɥ���/�AȾ��", 0, 300, 300, Dxl2, true);
//		CreateTextureSP("������ɥ���/�AȾ��", 1500, 1251, -364, "cg/st/3d����ʽ�AȾ_�Tͻ_ͨ��2.png");
//		Zoom("������ɥ���/�AȾ��", 0, 500, 500, Dxl2, true);
//		CreateTextureSP("������ɥ���/�AȾ��", 1500, 1437, -125, "cg/st/3d����ʽ�AȾ_�Tͻ_ͨ��3.png");
//		Zoom("������ɥ���/�AȾ��", 0, 700, 700, Dxl2, true);
//		CreateTextureSP("������ɥ���/���C��", 1500, -417, -173, "cg/st/3d�˄���_�T��_ͨ��.png");
//		SetBlur("������ɥ���/���C��", true, 1, 500, 50, false);

	Fade("ɫ��", 600, 0, null, false);

	Zoom("������", 2000, 1000, 1000, Dxl1, false);
	Zoom("�ԙC��", 1000, 1000, 1000, Dxl2, false);
	Move("�ԙC��", 2000, @-200, @100, Dxl1, false);

	Zoom("���C��", 1000, 0, 0, Axl2, false);
	Zoom("���C��", 1000, 0, 0, Axl2, false);
	Zoom("���C��", 1000, 0, 0, Axl2, false);
	BezierMove("���C��", 1000, (@0,@0){@100,@200}{@200,@100}(@400,@-100), Dxl1, false);
	BezierMove("���C��", 1000, (@0,@0){@100,@200}{@100,@100}(@200,@-300), Dxl1, false);
	BezierMove("���C��", 1000, (@0,@0){@100,@100}{@100,@100}(@200,@100), Dxl1, 700);

	Move("������ɥ���/����", 5000, @-4000, @0, null, false);

	Move("������ɥ���/���C��", 500, @500, @0, Dxl1, false);
	Move("������ɥ���", 500, @-512, @0, Dxl1, true);

	BezierMove("������ɥ���/���C��", 1000, (@0,@0){@10,@10}{@-10,@-30}(@0,@-30), null, 900);

	SetVolume("������ɣ�", 1000, 0, NULL);

	Move("������ɥ���/�AȾ*", 500, @-1000, @0, null, false);
	BezierMove("������ɥ���/���C��", 500, (@0,@0){@100,@-50}{@100,@50}(@1000,@100), Axl1, true);
	Move("������ɥ���/����", 0, @0, @0, Axl1, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="��������" src="voice/md05/008vs0240a01">
������Ⱥ����һ���ȷ���!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0250a00">
���ҡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_�|��_�h�T����01",1000);
	CreateSE("������ɣ�","se���L_��҆��_����03");
	CreateSE("������ɣ�","se���L_�Ɖ�_���k05");


//���k��
		Delete("���C��");
		Delete("���C��");
		Delete("���C��");

		CreateTextureEX("������ɥ���/���ե����ȣ�", 2000, 464, 184, "cg/ef/ef047_�k��h�������.jpg");
		Request("������ɥ���/���ե����ȣ�", AddRender);
		Rotate("������ɥ���/���ե����ȣ�", 0, @0, @0, 45, null, true);
		Zoom("������ɥ���/���ե����ȣ�", 0, 1500, 1500, Dxl2, true);

		CreateTextureEX("�ԙC��", 1100, -394, -203, "cg/st/3d������K_�Tͻ_ͨ��.png");
		Rotate("�ԙC��", 0, @0, @0, 45, null, true);
		CreateColorEX("������ɥ���/ɫ��", 1500, "#FFFFFF");
		Request("������ɥ���/ɫ��", AddRender);
		CreateColorEX("ɫ��", 1000, "#FFFFFF");
		Request("ɫ��", AddRender);


	Move("������ɥ���/�AȾ��", 300, @0, @-700, Axl3, false);
	Move("������ɥ���/�AȾ��", 400, @0, @-700, Axl3, false);
	Move("������ɥ���/�AȾ��", 500, @0, @-700, Axl3, false);
	Fade("������ɥ���/ɫ��", 500, 500, null, true);

	OnSE("se���L_��҆��_����01",1000);

	Fade("������ɥ���/���ե����ȣ�", 300, 1000, null, false);
	Zoom("������ɥ���/���ե����ȣ�", 1000, 2000, 2000, Dxl1, false);
	Shake("������ɥ���/���ե����ȣ�", 1000, 0, 50, 0, 0, 600, null, false);
	Rotate("������ɥ���/���ե����ȣ�", 1000, @0, @0, 90, null, false);
	Fade("������ɥ���/ɫ��", 500, 100, null, true);
	Fade("������ɥ���/ɫ��", 500, 1000, null, false);

	DrawTransition("ɫ��", 1000, 0, 1000, 100, null, "cg/data/circle_10_00_0.png", false);
	Fade("ɫ��", 1000, 1000, null, 500);

	SoundPlay("������ɣ�",0,1000,false);

	Move("������ɥ���", 1000, @512, @, Dxl1, false);

	Move("�ԙC��", 500, @-50, @50, Dxl1, false);
	Move("�ԙC��", 500, @-50, @50, Dxl1, false);
	Fade("�ԙC��", 500, 1000, null, false);
	Fade("�ԙC��", 500, 0, Axl3, false);

	Zoom("�ԙC��", 1000, 3000, 3000, Axl2, 500);

	Shake("�ԙC��", 1000, 0, 50, 0, 0, 700, null, false);
	Move("�ԙC��", 500, @500, @-500, Axl1, false);
	Fade("ɫ��", 500, 1000, null, true);

//���ر�
		CreateColorSP("ɫ��", 199999, "#FFFFFF");
		Request("ɫ��", AddRender);
		Delete("���C*");
		Delete("�ԙC*");
		Delete("������ɥ���*");
		Delete("ɫ��");
		Delete("ɫ��");
		Fade("������", 0, 0, null, true);
		Fade("������", 0, 0, null, true);
		Delete("������");
		Delete("������");
		Delete("���إ���`��");

		//�������ԥåȣ�˲�g��ʾ��
		Cockpit_AllFade2();

		//�������ԥåȣ��ԙC�������ֹͣ��
		CP_AltChange(0,0,null,true);
		//�������ԥåȣ��ԙC����ٶ�ֹͣ��
		CP_SpeedChange2(0,800,null,true);
		//�������ԥåȣ��ԙC��󣺸߶�ֹͣ��
		CP_HighChange2(0,890,null,true);
		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(0,90,null,true);
		//�������ԥåȣ��ԙC��󣺷�λ��
		CP_AziChange(0,-130,AxlDxl,true);
	
		//�������ԥåȣ��ԙC�������ȣУ�
		//CP_IHPChange(0,10,null,false);
		//�������ԥåȣ��ԙC���װ�ף�
		MyLife_Count(0,716);
		//�������ԥåȣ��ԙC��󣺳�����
		MyTr_Count(0,294);
		//�������ԥåȣ��ԙC��󣺟�����
		//CP_PowerChange(0,500,null,false);

		CreateTextureSP("������", 100, 0, 0, "cg/bg/bg204_�����ر���b_02.jpg");
		CreateSurfaceEX("�}Suf",200,2000,"������");
		Rotate("�}Suf", 0, @0, @0, -180, null, true);
		Fade("�}Suf", 0, 1000, null, true);

	SoundPlay("������ɣ�",0,1000,false);

	//�������ԥåȣ��ԙC������ֹͣ����
	Shake("@CP_Frame", 1500, 0, 20, 0, 0, 700, Dxl1, false);
	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(1500,0,Dxl1,false);
	//�������ԥåȣ��ԙC����ٶ�ֹͣ��
	CP_SpeedChange2(1500,0,Dxl1,false);

	Fade("ɫ��", 1000, 0, null, 500);
	Move("������", 10000, @-200, @0, Dxl1, false);
	Rotate("�}Suf", 1000, @0, @0, 0, Dxl1, false);
	Fade("ɫ��", 1000, 0, null, false);
	DrawTransition("ɫ��", 1000, 1000, 0, 500, null, "cg/data/circle_09_00_0.png", true);

	Wait(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�������Ծ������䵱�ȷ棬���ٸ����ڻ��ڻ���
����Ȼ�Ҳ���Ϊ�����мƻ���Ԥı�ĺ�����
ȴ�Ϻ�ս���Ŀ�����

������ƾս��ȡʤ���Թѵ��ڵ�����������������
���������ƾ����У���������Ĳ�����������ֳ�����

���ᱻ��Χ������������ɡ�
��
���޷����Ӧ����������������

�������ⶨ����ս�ƻ�����ᱻ�����߽⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//���˄��T���y���B�
	CreateColorEX("ɫ��", 19000, "#000000");

	Fade("ɫ��", 500, 1000, null, true);
	CreateTextureSP("���٥�ȣ�", 18000, 0, 0, "cg/ev/ev228_���y��܊��_e.jpg");
	Fade("ɫ��", 500, 0, null, true);

	SetFwC("cg/fw/fw����_ŭ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/md05/008vs0260a00">
�������³���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("ɫ��", 500, 1000, null, true);
	CreateTextureSP("���٥�ȣ�", 18000, 0, 0, "cg/ev/resize/evex001_�˄���ͻ��.jpg");
	Fade("ɫ��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
������û������Ľ�֡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("ɫ��", 500, 1000, null, true);

//������
	CreateWindow("������ɥ���", 150, 0, 100, 1024, 345, false);
	SetAlias("������ɥ���", "������ɥ���");
	CreateTextureSP("������ɥ���/������", 19998, 0, 0, "cg/ef/ef003_�����Ƅ�.jpg");
	CreateTextureSP("������ɥ���/���٥�ȣ�", 19998, 0, 100, "cg/ev/resize/evex002_��������.png");
	CreateTextureEX("������ɥ���/���٥�ȣ�", 19998, 0, 100, "cg/ev/resize/evex002_��������_a.png");
	CreateTextureEX("������ɥ���/���٥�ȣ�", 19998, 0, 100, "cg/ev/resize/evex002_��������_a.png");
	SetBlur("������ɥ���/���٥�ȣ�", true, 2, 500, 50, false);
	SetBlur("������ɥ���/���٥�ȣ�", true, 2, 500, 50, false);
	Zoom("������ɥ���/���٥�ȣ�", 0, 2000, 2000, Dxl1, false);
	Zoom("������ɥ���/���٥�ȣ�", 0, 2000, 2000, Dxl1, false);
	Zoom("������ɥ���", 0, 1000, 0, Dxl2, true);

	Zoom("������ɥ���/���٥�ȣ�", 500, 1000, 1000, Dxl1, false);
	Zoom("������ɥ���", 500, 1000, 1000, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���ұ�˭��<?>
{	WaitKey(1000);
	OnSE("se����_�z_װ��04",1000);
	Fade("ɫ��", 0, 1000, null, true);
	Fade("������ɥ���/���٥�ȣ�", 0, 500, null, true);
	Fade("ɫ��", 500, 0, null, false);

	Zoom("������ɥ���/���٥�ȣ�", 1000, 1000, 1000, Dxl1, false);
	Zoom("������ɥ���/���٥�ȣ�", 1000, 2000, 2000, Axl1, false);
	Fade("������ɥ���/���٥�ȣ�", 1000, 1000, null, false);
	Fade("������ɥ���/���٥�ȣ�", 500, 0, null, false);
	SoundPlay("@msong04_inst",0,1000,true);
}
�޷�����!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("������ɥ���/���٥�ȣ�", null);

//��ͻ�M
		CreateTextureSP("������", 100, -250, -5336, "cg/bg/bg202_�����ݳ�����ɽa_02.jpg");
		CreateSurfaceEX("�}Suf",200,2000,"������");
		Fade("�}Suf", 0, 1000, null, true);
	
		CreateSE("������ɣ�","se���L_����_��ͻ�M05");
		CreateSE("������ɣ�","se���L_����_������01_L");
		CreateSE("������ɣ�","se���L_����_�z_���04");//
		CreateSE("������ɣ�","se���L_����_�z_�����w��02");//
		CreateSE("������ɣ�","se���L_����_���nͻ01");
		CreateSE("������ɣ�","se���L_����_�z��������03");
		CreateSE("������ɣ�","se���L_����_�z_���04");//
		CreateSE("������ɣ�","se���L_�Ɖ�_���k08");//
		CreateSE("������ɣ�","se���L_��҆��_����03");//
		CreateSE("������ɣ�","se���L_��҆��_����01");//
		//CreateSE("������ɣ�","se���L_�|��_�h�T����01");//
		CreateSE("������ɣ�","se���L_��҆��_����03");//

		Fade("������ɥ���/���٥�ȣ�", 0, 0, null, true);
		Fade("������ɥ���/������", 0, 0, null, true);

		//�������ԥåȣ��ԙC�����ӣ�
		FrameShake();
		//�������ԥåȣ��ԙC��������Ԅӻ���
		CP_AltChangeA();
		//�������ԥåȣ��ԙC��󣺸߶��Ԅӻ���
		CP_HighChangeA();
		//�������ԥåȣ��ԙC����ٶ��Ԅӻ���
		CP_SpeedChangeA();


		CreateColorEXadd("ɫ��", 10000, "#FFFFFF");


		CreateTextureEX("���٥�ȣ�", 10000, 0, 0, "cg/ev/ev927_�˄������ģ�.jpg");
		Rotate("���٥�ȣ�", 0, @0, @180, @0, null, true);
		CreateTextureEXadd("���ե����ȣ�", 10000, 0, 0, "cg/ef/ef015_���ú�܉��.jpg");

		CreateTextureEX("���٥�ȣ�", 10000, 0, 0, "cg/ev/ev928_�˄������ģ�.jpg");
		Rotate("���٥�ȣ�", 0, @0, @180, @0, null, true);
		CreateTextureEXadd("���ե����ȣ�", 10000, 0, 0, "cg/ef/ef011_����б��܉��.jpg");


		CreateTextureEXadd("���٥�ȣ�", 10000, 0, 0, "cg/ef/ef047_�k��h�������.jpg");
		Rotate("���٥�ȣ�", 0, @0, @180, @0, null, true);
		Zoom("���٥�ȣ�", 0, 1200, 1200, Dxl2, true);
		CreateTextureEXadd("���ե����ȣ�", 10000, 0, 0, "cg/ef/ef038_�������.jpg");

		CreateTextureEX("���٥�ȣ�", 10000, 0, 0, "cg/ev/ev228_���y��܊��_e.jpg");
		CreateTextureEXadd("���ե����ȣ�", 10000, 0, 0, "cg/ef/ef042_���ô��.jpg");


		//��������_ʼ
		CloudZoomStart(700,1000,1000,500,1000);
		//���̶���������
		MoveFFP1("@�}Suf",5000);

		SetBlur("������ɥ���/���٥�ȣ�", true, 2, 500, 50, false);

		CreateTextureEX("���C��", 200, -100, -100, "����`����");
		Zoom("���C��", 0, 0, 0, Dxl1, false);
		CreateTextureEX("���C��", 200, 0, 0, "����`����");
		CreateTextureEX("���C��", 200, 1000, -600, "����`����");


	SoundPlay("������ɣ�",500,1000,true);
	SoundPlay("������ɣ�",500,1000,false);

	//�������ԥåȣ��ԙC����ٶȣ�
	CP_SpeedChange(500,800,null,false);

	Zoom("������ɥ���/���٥�ȣ�", 300, 2000, 2000, Axl1, false);
	Fade("������ɥ���/���٥�ȣ�", 300, 0, null, false);
	Fade("ɫ��", 300, 0, null, true);

	Wait(500);
	Delete("������ɥ���/*");

//�����Ĺ��Ĺ���
//���رܻرܻر�

	Fade("���C��", 0, 1000, null, true);
	Move("���C��", 300, @200, @0, Axl1, false);
	Zoom("���C��", 300, 2000, 2000, Axl1, 290);

	//SoundPlay("������ɣ�",0,1000,false);
	SoundPlay("������ɣ�",0,1000,false);

	Fade("ɫ��", 0, 1000, null, false);
	Fade("���C��", 0, 0, null, false);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 100, 0, null, false);
	Fade("���٥�ȣ�", 200, 0, null, false);

	Shake("������", 600, 0, 10, 0, 0, 700, Dxl1, false);
	Move("������", 600, 50, @0, Dxl1, false);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(200,-45,null,false);

	Rotate("�}Suf", 200, @0, @0, 45, Dxl1, false);
	Fade("���ե����ȣ�", 100, 1000, null, false);
	Fade("ɫ��", 100, 200, null, false);
	Fade("ɫ��", 100, 100, null, false);
	Wait(100);

	SoundPlay("������ɣ�",0,1000,false);

	Fade("���ե����ȣ�", 300, 0, null, false);
	Fade("ɫ��", 300, 0, null, false);
	Fade("ɫ��", 300, 0, null, false);
	Wait(200);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(200,0,null,false);

	Rotate("�}Suf", 300, @0, @0, 0, Dxl1, 150);

//	WaitKey();

	SoundPlay("������ɣ�",0,1000,false);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("ɫ��", 100, 0, null, false);
	Fade("���٥�ȣ�", 300, 0, null, false);

	Fade("���C��", 0, 1000, null, false);
	Move("���C��", 500, @1200, @200, Axl1, false);
	Zoom("���C��", 500, 100, 100, Dxl1, false);

	Shake("������", 600, 0, 10, 0, 0, 700, Dxl1, false);
	Move("������", 600, -250, @0, Dxl1, false);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(200,60,null,false);

	Rotate("�}Suf", 200, @0, @0, -60, Dxl1, false);
	Fade("���ե����ȣ�", 100, 1000, null, false);
	Fade("ɫ��", 100, 200, null, false);
	Fade("ɫ��", 100, 100, null, false);
	Wait(100);

	SoundPlay("������ɣ�",0,1000,false);
	SoundPlay("������ɣ�",0,1000,false);

	Fade("���ե����ȣ�", 300, 0, null, false);
	Fade("ɫ��", 300, 0, null, false);
	Fade("ɫ��", 300, 0, null, false);
	Wait(200);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(300,0,null,false);

	Rotate("�}Suf", 300, @0, @0, 0, Dxl1, 150);

//	WaitKey();
	Fade("���٥�ȣ�", 100, 500, null, false);

	SoundPlay("������ɣ�",0,800,false);

	Shake("���٥�ȣ�", 400, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("���٥�ȣ�", 300, 0, null, false);

	Shake("������", 600, 0, 10, 0, 0, 700, Dxl1, false);
	Move("������", 300, -450, @0, Dxl1, false);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(200,60,null,false);

	Rotate("�}Suf", 200, @0, @0, -60, Dxl1, false);
	Fade("���ե����ȣ�", 100, 1000, null, false);
	Fade("ɫ��", 100, 200, null, false);
	Fade("ɫ��", 100, 100, null, false);
	Wait(100);

	Fade("���٥�ȣ�", 300, 0, null, false);

	Fade("���ե����ȣ�", 300, 0, null, false);
	Fade("ɫ��", 300, 0, null, false);
	Fade("ɫ��", 300, 0, null, false);
	Wait(200);

	SoundPlay("������ɣ�",0,1000,false);

	Fade("���C��", 0, 1000, null, false);
	Move("���C��", 500, @-2000, @1000, null, false);
	Fade("���ե����ȣ�", 100, 1000, null, false);
	Fade("ɫ��", 100, 200, null, false);
	Fade("ɫ��", 100, 100, null, false);
	Wait(100);

	SoundPlay("������ɣ�",0,1000,false);

	Fade("ɫ��", 300, 0, null, false);
	Fade("ɫ��", 300, 0, null, false);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(300,-90,null,false);

	Shake("������", 600, 0, 30, 0, 0, 700, Dxl1, false);
	Move("������", 600, -350, @0, Dxl1, false);
	Rotate("�}Suf", 300, @0, @0, 90, Dxl1, false);
	Wait(300);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(300,0,null,false);

	Fade("���ե����ȣ�", 300, 0, null, false);
	Rotate("�}Suf", 300, @0, @0, 0, Dxl1, true);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
	//CP_RollBarMoveA();

//�����Ԥ�ͻ��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��ͻ����Χ�ˡ�

����������������ɽ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("���٥��*");
	Delete("���ե�����*");

		CreateTextureEXadd("���٥�ȣ�", 10000, 0, 0, "cg/ef/ef047_�k��h�������.jpg");
		Zoom("���٥�ȣ�", 0, 1200, 1200, Dxl2, true);
		Rotate("���٥�ȣ�", 0, @180, @180, @0, null, true);
		CreateTextureEXadd("���ե����ȣ�", 10000, 0, 0, "cg/ef/ef038_�������.jpg");
		Rotate("���ե����ȣ�", 0, @180, @0, @0, null, true);

		CreateTextureEX("������", 1700, 0, 0, "cg/bg/bg001_��a_02.jpg");

		CreateTextureSP("���C��", 2000, -195, -1441, "����`����");
		Zoom("���C��", 0, 100, 100, Dxl2, true);
		CreateTextureSP("���C��", 2000, -384, -1372, "����`����");
		Zoom("���C��", 0, 200, 200, Dxl2, true);
		Rotate("���C��", 0, @0, @180, @0, null, true);
		CreateTextureSP("���C��", 2000, -234, -1288, "����`����");
		Zoom("���C��", 0, 300, 300, Dxl2, true);
		CreateTextureSP("�ԙC��", 2000, 36, 1633, "cg/st/3d������K_�Tͻ_���L.png");
		Zoom("�ԙC��", 0, 700, 700, DxlAxl, true);

	SoundPlay("������ɣ�",0,1000,false);

	Shake("���٥�ȣ�", 400, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("���٥�ȣ�", 0, 1000, null, true);
	Fade("���٥�ȣ�", 300, 0, null, false);

	Shake("������", 600, 0, 10, 0, 0, 700, Dxl1, false);
	Move("������", 300, -250, @0, Dxl1, false);

	//�������ԥåȣ��ԙC��󣺻�ܞ�S��
	CP_RollBarMove2(200,60,null,false);

	Rotate("�}Suf", 200, @0, @0, -60, Dxl1, false);
	Fade("���ե����ȣ�", 100, 1000, null, false);
	Fade("ɫ��", 100, 200, null, false);
	Fade("ɫ��", 100, 100, null, false);
	Wait(100);

	Fade("���٥�ȣ�", 300, 0, null, false);

	Fade("���ե����ȣ�", 300, 0, null, false);
	Fade("ɫ��", 300, 0, null, false);
	Fade("ɫ��", 300, 0, null, false);
	Wait(200);

	Rotate("�}Suf", 300, @0, @0, 0, Dxl1, false);
	Fade("ɫ��", 300, 1000, null, true);

		Delete("���٥��*");
		Delete("���ե�����*");
	
		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//�����ȥ
		CloudZoomFade(0,true);
		//���̶��������ֹࣺͣ
		MoveFFP1stop();

		Fade("������", 0, 1000, null, false);

		//�����S��������S����
		MoveFTP1("@�ԙC��",10000,3,15);
		MoveFTP2("@���C��",10000,3,1);
		MoveFTP3("@���C��",10000,3,3);
		MoveFTP4("@���C��",10000,3,5);

		//����_ʼ
		CloudZoomStartB(700,1000,1000,500,1000);

		CreateTextureEX("���ե����ȣ�", 3000, 0, 0, "cg/ef/ef033_��ɢ���.jpg");
		Rotate("���ե����ȣ�", 0, @0, @180, @0, null, true);
		SetBlur("���ե����ȣ�", true, 2, 500, 100, false);
		CreateTextureEX("���ե����ȣ�", 3000, 0, 0, "cg/ef/ef022_��������ɢ�A.jpg");
		Zoom("���ե����ȣ�", 0, 1200, 1200, Dxl2, true);
		CreateTextureEXadd("���ե����ȣ�", 1800, 0, 0, "cg/ef/ef022_��������ɢ�A.jpg");
		Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);
		CreateTextureEXadd("���ե����ȣ�", 2500, 0, 0, "cg/ef/ef003_�����Ƅ�.jpg");
		Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);

		CreateTextureEX("���٥�ȣ�", 10000, -412, -180, "cg/ev/resize/ev956_�Х���������_am.jpg");

	Fade("ɫ��", 500, 0, null, false);
	Wait(100);

	Move("�ԙC��", 1000, @0, @-2000, Dxl2, false);
	Move("���C��", 1000, @0, @1000, Dxl2, false);
	Move("���C��", 1000, @0, @1000, Dxl2, false);
	Move("���C��", 1000, @0, @1000, Dxl2, false);
	Wait(1000);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="��������" src="voice/md05/008vs0270a01">
���������Ӻ�������!!��

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0280a00">
��������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
		CreateSE("������ɣ�","se���L_�Х���_�ܩ`���󘋤�02");
		CreateSE("������ɣ�","se���L_�Х���_�ܩ`�������01");
		CreateSE("������ɣ�","se���L_�n��_�zɢ�A");
		CreateSE("������ɣ�","se���L_����_��ͻ�M03");

	SoundPlay("������ɣ�",0,1000,false);

	Fade("���ե����ȣ�", 2000, 1000, null, false);
	Rotate("���ե����ȣ�", 2000, @0, @0, @3600, null, false);

	Zoom("�ԙC��", 2000, 1500, 1500, DxlAxl, false);
	BezierMove("�ԙC��", 2000, (@0,@0){@100,@50}{@100,@50}(@-100,@0){@-300,@-50}{@-500,@-50}(@-700,@-100), Axl1, false);
	Rotate("�ԙC��", 1000, @0, @0, -40, Dxl1, false);

	BezierMove("���C��", 2000, (@0,@0){@200,@0}{@200,@0}(@300,@0), Dxl1, false);
	BezierMove("���C��", 2000, (@0,@0){@100,@50}{@100,@50}(@200,@0), Dxl1, false);
	BezierMove("���C��", 2000, (@0,@0){@400,@-50}{@400,@-50}(@500,@0), Dxl1, false);
	Zoom("���C��", 2000, 400, 400, Axl1, false);
	Zoom("���C��", 2000, 600, 600, Axl1, false);
	Zoom("���C��", 2000, 800, 800, Axl1, 1950);


//���Х�����ɢ���
	SetVolume("������ɣ�", 100, 1, NULL);
	SoundPlay("������ɣ�",0,1000,false);

	Fade("���٥�ȣ�", 0, 1000, null, false);
	Move("���٥�ȣ�", 600, @0, @-100, Dxl1, false);
	Wait(300);
	Fade("ɫ��", 300, 1000, null, true);
	Fade("���٥�ȣ�", 0, 0, null, true);

		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();
		MoveFTP2stop();
		MoveFTP3stop();
		MoveFTP4stop();
	
		Delete("���٥�ȣ�");
		Delete("���ե����ȣ�");
		Delete("���C*");

		Wait(32);

	SoundPlay("������ɣ�",0,1000,false);

	Zoom("���ե����ȣ�", 500, 1500, 1500, DxlAxl, false);
	Fade("���ե����ȣ�", 0, 1000, null, false);
	Fade("ɫ��", 0, 0, null, true);
	Fade("ɫ��", 500, 1000, null, true);

	SetVolume("������ɣ�", 2000, 1000, NULL);
	SoundPlay("������ɣ�",0,1000,false);

	Fade("���ե����ȣ�", 0, 0, null, false);
	Fade("���ե����ȣ�", 0, 1000, null, false);
	Fade("���ե����ȣ�", 0, 1000, null, true);

	Zoom("���ե����ȣ�", 2000, 2000, 2000, Axl1, false);
	Shake("���ե����ȣ�", 2000, 0, 50, 0, 0, 600, Dxl1, false);
	Fade("ɫ��", 1000, 0, null, 1000);

	Move("�ԙC��", 2000, @-1000, @-1000, Axl1, false);
	Zoom("�ԙC��", 2000, 2000, 2000, Dxl2, false);

	DrawTransition("���ե����ȣ�", 1000, 1000, 0, 300, null, "cg/data/effect_01_00_0.png", false);
	Fade("���ե����ȣ�", 1000, 0, null, 500);
	DrawTransition("���ե����ȣ�", 25000, 1000, 0, 300, null, "cg/data/effect_01_00_0.png", false);
	Move("���ե����ȣ�", 2000, @-200, @0, Axl1, false);
	Fade("���ե����ȣ�", 2000, 0, null, true);

//�������󤺤���
	CreatePlainSP("�ϱ���", 20000);

		Delete("���ե�����*");
		Delete("�ԙC*");
		Delete("������");

		//�������ԥåȣ�˲�g��ʾ��
		Cockpit_AllFade2();

		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(0,0,null,true);

		//�������ԥåȣ��ԙC�����ӣ�
		FrameShake();
		//�������ԥåȣ��ԙC��������Ԅӻ���
		CP_AltChangeA();
		//�������ԥåȣ��ԙC����ٶ��Ԅӻ���
		CP_SpeedChangeA();
		//�������ԥåȣ��ԙC��󣺸߶��Ԅӻ���
		CP_HighChangeA();
		//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
		CP_RollBarMoveA();

		CreateColorEX("ɫ��", 20000, "#000000");

		CreateTextureEX("������", 17000, 0, 0, "cg/bg/resize/bg001_��a_02.jpg");
		CreateTextureEX("�ԙC��", 17000, -174, -411, "cg/st/resize/3d�Х���_�Tͻ_���L3m.png");
	
		CreateTextureEX("������", 1000, 0, 0, "cg/bg/bg001_��a_02.jpg");
		CreateTextureEX("�ԙC��", 2000, -174, -311, "cg/st/3d�Х���_�Tͻ_���L3.png");


		//�������
		CloudZoomStart(700,1000,1000,500,1000);

		//���̶���������
		MoveFFP1("@������",5000);

	SetVolume("������ɣ�", 500, 300, NULL);

	FadeDelete("�ϱ���", 500, true);

	Delete("����`����");
	Delete("����`����");
	Delete("����`����");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="��������" src="voice/md05/008vs0290a01">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���Ѿ��Ƚ����ұ���ĵ���<k>
��
�������������ˣ�

����˭�ɵģ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="��������" src="voice/md05/008vs0300a01">
���ղŵ�������������Ҽǵá���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0310a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0320a01">
���Ǵ�������֦����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0330a00">
����ξ�𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0340a01">
���š��Ǳߣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������

	SetVolume("������ɣ�", 2000, 500, NULL);

	//�������ԥåȣ��ԙC�������ֹͣ��
	CP_AltChange(1000,40,Axl1,false);
	Move("������", 1000, @0, @3000, Axl1, false);

	Move("������", 2000, @0, @-100, Dxl1, false);
	Move("�ԙC��", 2000, @0, @-200, Dxl1, false);
	Fade("������", 1000, 1000, null, false);
	Fade("�ԙC��", 1000, 1000, null, true);

		//�������ԥåȣ���ȥ��
		Cockpit_AllFade0();
		//�������ԥåȣ��ԙC��󣺻�ܞ�Sֹͣ��
		CP_RollBar_ADelete();
		//�������ԥåȣ��ԙC������ֹͣ����
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);
		//����Ƅ�
		CloudZoomVertex(0,@-200,@200,Dxl2,false);

//���Х���
	Fade("������", 0, 1000, null, false);
	Fade("�ԙC��", 0, 1000, null, true);
//	Move("������", 2000, @0, @-100, Dxl1, false);
	Move("�ԙC��", 1000, @0, @-100, Dxl1, false);
	Fade("������", 1000, 0, null, false);
	Fade("�ԙC��", 1000, 0, null, true);

	//�����S��������S����
	MoveFTP3("@�ԙC��",20000,3,10);

		Delete("������");
		Delete("�ԙC��");
		Delete("������ɥ���");
	
		//���̶��������ֹࣺͣ
		MoveFFP1stop();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����յ�һ�ǣ������˹���ʿ����Ӱ��

��װ���ǻԲ�װ��ô��
����ҫ�����Բ�ͬ�ڸ���Ʒ�ǵĹ�ԣ����ͬʱ����Ͳ��
�޴�������Ҳ�ں�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("������", 19999, 0, 0, SCREEN);

		//�����ȥ
		CloudZoomDelete(0,true);

		Delete("������");

		//�����S��������S���ȣ�ֹͣ
		MoveFTP3stop();

		//�������
		CloudZoomSet2("�ޥɣ�",17001,0,0,512,576);
		//�������
		CloudZoomSet3("�ޥɣ�",2000,512,0,512,576);
	
		CreateTextureSP("�ޥɣ�/������", 7000, 0, 0, "cg/bg/bg001_��a_02.jpg");
		CreateTextureSP("�ޥɣ�/�ԙC��", 8000, -522, -362, "cg/st/3d�Х���_�Tͻ_���L.png");

		Move("������", 0, @0, @-2500, Axl1, true);
		CreateTextureSP("�ԙC��", 2000, 64, -261, "cg/st/3d������K_�Tͻ_ͨ��.png");
		//CreateTextureSP("�ԙC��", 2000, 14, -361, "cg/st/3d������K_�Tͻ_ͨ��.png");
		//Rotate("�ԙC��", 0, @0, @0, @40, null, true);

		//�����S��������S����
		MoveFTP1("@�ޥɣ�/�ԙC��",20000,3,10);
		MoveFTP2("@�ԙC��",30000,3,5);

		//����Ƅ�
		CloudZoomStart2B(700,1000,1000);
		CloudZoomVertex2(0,@-200,@0,Dxl2,true);
		//����Ƅ�
		CloudZoomStart3B(700,1000,1000);
		CloudZoomVertex3(0,@200,@0,Dxl2,true);

	SetVolume("������ɣ�", 500, 100, NULL);

	FadeDelete("������", 500, true);

	SetFwC("cg/fw/fw����֦_ͨ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0350a03">
����Υ�ˣ��������ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0360a00">
�������ξ��
��������������𣿡�

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0370a03">
����������Ů��������ϻ����еڶ����𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0380a01">
����Ϊ���������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0390a00">
���Ҷ���֪����ξ�������ߡ���
����Ϊ�λ�ӵ�н��У���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0400a03">
�����ǡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0410a00">
���ǣ���

{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0420a03">
��������Ů�����ܡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0430a00">
�����𣿡�

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0440a03">
��������һ������ˡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0450a01">
������˵��������Ϊʲô�������ֵط���
��˵��żȻ�ҿɲ����š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
������˵��
�����ﲻ��һ��ĵط������ǿ�����żȻ·��
���ֽ�ں�Ū��ȥ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0460a03">
��������λ���ǣ�
����������Ѫ�����ܵ��������İɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0470a01">
��������˼��˵�������������������ͬ����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0480a03">
�������ϵ�̫�����ӵ�������ʼ���������
�ͱ������ˡ�
��ֻҪ��΢�����ӻ����侲������һ��Ļ���
Ҳ�Ͷ��������뵽������̬�������ϵ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��ԭ����ˡ�
������˵����֦С��Ҳ��Ҫ��̫��
��������֮ǰ�����ϵ���ʿɽ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0490a03">
����һλ��Ҳ�ǳ���ͬ���������𡣡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0500a00">
����λ����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0510a03">
�������������Ƕ���
��һ�����С�㡣��

{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0520a02">
�������һ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("������", 16000, 0, 0, SCREEN);

		//�����ȥ
		CloudZoomDelete2(0,true);
		//�����ȥ
		CloudZoomDelete3(0,true);

		Delete("�ޥɣ�");
		Delete("�ޥɣ�");
		Delete("�ԙC��");

//���}�u���T
		LoadImage("���ڥ���`����", "cg/st/3d����_�T��_���La2.png");
		SetAlias("���ڥ���`����", "���ڥ���`����");
		LoadImage("�AȾ����`����", "cg/st/3d����ʽ�AȾ_�T��_ͨ��.png");
		SetAlias("�AȾ����`����", "�AȾ����`����");

		CreateWindow("������ɥ���", 19000, 0, 0, 1024, 576, false);
		SetAlias("������ɥ���", "������ɥ���");
		Zoom("������ɥ���", 0, 0, 1000, Dxl2, true);

		CreateTextureSP("������ɥ���/������", 18000, 0, 0, "cg/bg/bg002_��a_02.jpg");
		CreateTextureSP("������ɥ���/�ԙC��", 18000, -250, 300, "���ڥ���`����");
		Rotate("������ɥ���/�ԙC��", 0, @0, @0, 90, null, true);

		CreateTextureEX("���٥�ȣ�", 19000, 0, 0, "cg/ev/ev948_����ͻ�M����.jpg");
		SetBlur("���٥�ȣ�", true, 2, 500, 50, false);
		Zoom("���٥�ȣ�", 0, 2000, 2000, Dxl2, true);

		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();
		MoveFTP2stop();

	SetVolume("������ɣ�", 500, 500, NULL);

	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_��ͻ�M06",1000);

	Zoom("������ɥ���", 500, 1000, 1000, Dxl2, false);
	Move("������ɥ���/�ԙC��", 500, @0, @-2000, null, true);

	Zoom("���٥�ȣ�", 500, 1000, 1000, Dxl1, false);
	Fade("���٥�ȣ�", 500, 1000, null, true);

		Delete("������");
		Delete("������ɥ���");

//���W���ĉ�
		CreateColorEX("ɫ��", 19999, "#FFFFFF");
		CreateTextureSP("������", 18000, Center, Middle, "��������`����");

		CreateTextureSP("���C��", 18500, -11, -188, "�AȾ����`����");
		Zoom("���C��", 0, 300, 300, Dxl2, true);
		SetBlur("���C��", true, 1, 500, 50, false);
		CreateTextureSP("���C��", 18500, 182, -199, "�AȾ����`����");
		Zoom("���C��", 0, 500, 500, Dxl2, true);
		SetBlur("���C��", true, 1, 500, 50, false);
		CreateTextureSP("�ԙC��", 18500, -440, -306, "���ڥ���`����");
		Zoom("�ԙC��", 0, 800, 800, Dxl2, true);
		SetBlur("�ԙC��", true, 1, 500, 50, false);
		CreateTextureSP("���C��", 18500, 161, -471, "�AȾ����`����");
		Zoom("���C��", 0, 1000, 1000, Dxl2, true);
		SetBlur("���C��", true, 1, 500, 50, false);

		Move("���C*", 0, @-100, @0, Axl1, true);
		Move("�ԙC��", 0, @100, @0, Axl1, true);

		CreateTextureEXadd("���ե����ȣ�", 19000, 0, 0, "cg/ef/ef014_���ú�܉��.jpg");

	SetVolume("������ɣ�", 500, 1, NULL);

	OnSE("se���L_����_��ͻ�M02",1000);

	Zoom("���٥�ȣ�", 300, 1500, 1500, Axl1, false);
	Fade("ɫ��", 300, 1000, null, true);
	Delete("���٥�ȣ�");

	OnSE("se���L_����_���B��01",1000);
	Fade("���ե����ȣ�", 0, 1000, null, true);
	Wait(1000);

	OnSE("se���L_����_��ꪏ���01",1000);
	Fade("ɫ��", 500, 0, null, false);
	Fade("���ե����ȣ�", 500, 0, null, false);

	Move("������", 1000, @50, @0, Dxl2, false);
	Move("���C*", 1000, @100, @0, Dxl2, false);
	Move("�ԙC��", 1000, @-100, @0, Dxl1, true);

	OnSE("se���L_����_�z_�����w��02",1000);

	Move("������", 600, @100, @0, null, false);
	Move("�ԙC��", 300, @-900, @0, null, false);
	Move("���C*", 300, @900, @100, null, true);

	Fade("ɫ��", 300, 200, null, false);
	Fade("ɫ��", 300, 1000, null, false);
	DrawTransition("ɫ��", 300, 0, 1000, 100, null, "cg/data/slide_03_00_1.png", true);


//������
	OnSE("se���L_�n��_�zɢ�A",1000);

		CreateTextureSP("�ԙC��", 18500, -40, -306, "cg/st/3d����_�Tͻ_���L.png");
		Zoom("�ԙC��", 0, 800, 800, Dxl2, true);
		SetBlur("�ԙC��", true, 1, 500, 50, false);

		CreateTextureSPadd("���ե����ȣ�", 18000, 0, 0, "cg/ef/ef022_��������ɢ�A.jpg");
		Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);

	Zoom("���ե����ȣ�", 2000, 1100, 1100, Dxl1, false);

	Fade("ɫ��", 2000, 0, null, false);
	Fade("ɫ��", 2000, 0, null, false);
	Zoom("�ԙC��", 1000, 1000, 1000, Dxl1, false);
	Fade("���ե����ȣ�", 2000, 0, null, true);

	Delete("���C*");
	Delete("�AȾ����`����");
	Delete("���ե����ȣ�");


	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/md05/008vs0530a00">
������һ��?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
������һ�����������׼�ĸ���Ʒ����Ⱥ���׷�
׹��������
����ƾһ������Ϯ�����ͽ����ǿ�ɱɨ��������

������ɫ��һ����֪�ǹ��ϵ���Ʒ���С�
��
�����ǡ������ˡ�������������һ�Ρ�

���Ǳ���Ⱦʱ���£�Ȼ���Ǽ���û����ʧ��
���ڽ����£�������һ��װ��װ��֮��
������Ǹ����ߵ���̬��

������Ҳ����������ô��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("������ɣ�", 2000, 100, NULL);

	CreateTextureSP("������", 19999, 0, 0, SCREEN);

		CreateTextureSP("������", 1000, Center, Middle, "cg/bg/resize/bg202_�����ݳ�����ɽ_02ex2.jpg");
		Zoom("������", 0, 1100, 1100, Dxl2, true);

		//�������
		CloudZoomSet2("�ޥ�",2000,0,0,1024,576);
		//����_ʼ
		CloudZoomStart2(700,1000,1000);
		//����Ƅ�
		CloudZoomVertex2(0,@1000,@500,Dxl2,true);

		CreateTextureSP("�ԙC��", 1500, -160, -226, "cg/st/3d������K_�T��_ͨ��b2.png");
		Zoom("�ԙC��", 0, 50, 50, Dxl2, true);
		CreateTextureSP("�ԙC��", 1500, -110, -506, "cg/st/3d�Х���_�T��_���La.png");
		Zoom("�ԙC��", 0, 300, 300, Dxl2, true);
		CreateTextureSP("�ԙC��", 1500, -470, -276, "cg/st/3d����_�T��_���La.png");

		//�����S��������S����
		MoveFTP1("@�ԙC��",30000,3,5);
		MoveFTP2("@�ԙC��",20000,3,7);
		MoveFTP3("@�ԙC��",15000,3,10);

	FadeDelete("������", 500, true);

	SetFwR("cg/fw/fw����֦_ͨ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0540a03">
����ѽ��һ������ʧ���ˡ�
���Բ��𰡣�С��֡���

{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0550a02">
��ΪʲôҪ������ǰ��Ӹ�С��?!��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0560a01">
���㡭�����������ǵģ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
���������������Ǻܾ��ȡ�
������һ�����ˣ�����Ԯ�����������
�����˰�˼������⡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0570a02">
�����������ˡ�
������ȫû�����Ҫ�������ǡ���

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0580a01">
��ʲô��˼����

{	FwR("cg/fw/fwһ��_��Ц.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0590a02">
��Ŷ��
��Ҫ��һ�仰˵���𡪡���

{	FwR("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0600a03">
���ұ������ִ���!!��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0610a01">
��������

{	FwR("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0620a02">
������!!
������������˵������������!!��

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0630a00">
��һ����������

{	FwR("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0640a02">
�������ն�������
���һ����������㣬������ȷ�ϡ���

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0650a02">
�����ԣ�����㲻����������˵Ļ����鷳�ˡ�
�������������ͣ�
�ҵ���˼Ӧ���Ѿ�������˰ɣ���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0660a00">
������������

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0670a02">
���ն�����������

{	FwR("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0680a03">
���ұ������ִ���!!��

{	FwR("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0690a02">
�����ǹ�ִ!!������!!���治Ҫ��!!��

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0700a00">
��һ������

{	FwR("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0710a02">
���������ԣ��Ժ󡣡�

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0720a01">
������������

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0730a03">
����Ѫ����͵���Ϊֹ��
��Ҳ����������½��Ƶ���ʵ�˰ɣ���

{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0740a02">
��֪��������
�����У���Ѫ�ĺ���ֻ����һ���˰ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����TȺ
	CreateTextureEX("���٥�ȣ�", 19100, 0, -156, "cg/ev/resize/ev228_���y��܊��_cl.png");
	CreateTextureEX("���٥�ȣ�", 19100, -1024, -156, "cg/ev/resize/ev228_���y��܊��_cl.png");
	CreateTextureEX("���٥�ȣ�", 19100, 0, 0, "cg/ev/ev228_���y��܊��_c.jpg");

	SetVolume("������ɣ�", 1000, 1, NULL);

	Move("���٥�ȣ�", 20000, @-512, @0, null, false);
	Fade("���٥�ȣ�", 1000, 1000, null, true);

//	CreateTextureEX("������", 19100, 0, 0, "cg/bg/bg002_��a_02.jpg");
//	Fade("������", 1000, 1000, null, true);

//	CreateTextureEX("���C��", 19200, -450, -150, "cg/st/resize/3d�˄���_����_ͨ��_ex.png");
//	Rotate("���C��", 0, @0, @180, @0, null, true);
//	CreateTextureEX("���C��", 19200, 0, -150, "cg/st/resize/3d�˄���_����_ͨ��_ex.png");

//	Move("���C��", 1000, @30, @0, Dxl1, false);
//	Fade("���C��", 1000, 1000, null, true);
//	Move("���C��", 1000, @-30, @0, Dxl1, false);
//	Fade("���C��", 1000, 1000, null, false);

	SetFwC("cg/fw/fw�פι�_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//���˄�������
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0750c00">
���������𣿡�

{	FwC("cg/fw/fw�Ǥν�_ͨ��.png");}
//���˄����¡�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0760c01">
���������𣿡�

{	FwC("cg/fw/fwè��צ_ͨ��.png");}
//���˄����á�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0770c02">
�������ˣ���������

{	Move("���٥�ȣ�", 20000, @512, @0, null, false);
	Fade("���٥�ȣ�", 1000, 1000, null, false);
	FwC("cg/fw/fwβ��y����_ͨ��.png");}
//���˄����ġ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0780c03">
����������ˡ���

{	FwC("cg/fw/fw���������_ͨ��.png");}
//���˄����š�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0790c04">
����������

{	FwC("cg/fw/fw����h�����_ͨ��.png");}
//���˄����ơ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/008vs0800c05">
�������������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����^�˰˄���
	Fade("���٥�ȣ�", 1000, 1000, null, true);

	Delete("���C��");
	Delete("���C��");
	Delete("���٥�ȣ�");
	Delete("���٥�ȣ�");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����Ȼ������û�б��ֳ��κ�η�塣
��Ҳû��ʲô���ƣ���ֱ��ǰͻ����

���ܿ���ܵ����˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("������ɣ�", 500, 100, NULL);
	FadeDelete("���٥�ȣ�", 500, true);

	SetFwR("cg/fw/fw����֦_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0810a03">
����������ô�ˣ�
����Щ�����������۵ĵ����Ƕ��ɾ������ء���

{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0820a03">
������������ߣ�ֻ����һ�̵���
��ʿɽ���ѡ�����

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0830a02">
�����ɡ�
����ô���ص㶼���Ǳߡ���

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0840a01">
���жԲ��𣿡�

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0850a03">
����˵�������µķ������Ƕ�ѡһ��
���Ǽ���ս�������Ƿ�ͷ�ж�����

{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0860a02">
���ĸ��ȽϺã���

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0870a03">
����Ҫ��ȡ���׵İ취��Ӧ���Ǽ���ս����
�����Ǽ���������������Ĵ󲿶ӣ�
���󽫸�ʿɽ�ϵ�̫���������������

{	FwR("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0880a03">
���ָ������ƽ��Ȼ�����ǳ�Ϊ��˵��
�粢��΢Ц����Զ����
�����ĳ���������

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0890a01">
��������Զ����

{	FwR("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0900a03">
��������Ͼͻ���ֽ����ġ��꡻
����Ļ��Ȼ���������������

{	FwR("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0910a02">
���Ų���������ֶ�����
���������������ִ�˵�����Ǽ򵥡���

{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0920a02">
��ʵ���ϸ��������ܡ���

{	FwR("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0930a00">
�������ܰ�������

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs0940a01">
���Ҿ��ò����ܡ���

{	FwR("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0950a03">
���ף�Ϊʲô?!
���������Ļ���ʤ�ܾͿ��ҷ������������
�����������ʺ����Ը������������
���Ժ������ǵ���ս��ʽ�𣡡�

{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0960a03">
�������ȡ���ǿ����Ц���Ҷ�˵���ˡ���

{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs0970a02">
��������Ҳ�ǡ���

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs0980a03">
������˵������ʤ���������ڽ�֮��ʱ����
���屩¶ʵ������ǵ��Ž�Э����ϵ֮�ϣ�
��ֱ��������Ц�ƶ�Ƥ��
���ڻ��Ƕ࿼����ǰ����ʵ�ɡ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs0990a00">
����ɢս������
����˾��ְ�𡣡�

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs1000a03">
���š���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureSP("������", 19999, 0, 0, SCREEN);

		Move("������", 0, -250, -5536, null, false);
		Fade("�}Suf", 0, 1000, null, false);
		Fade("������", 0, 1000, null, false);

		Delete("������");
		Delete("�ԙC��");
		Delete("�ԙC��");
		Delete("�ԙC��");

		//�����ȥ
		CloudZoomFade2(0,true);
		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();
		MoveFTP2stop();
		MoveFTP3stop();

		CreateWindow("������ɥ���", 10000, 0, 0, 341, 576, false);
		SetAlias("������ɥ���", "������ɥ���");
		CreateTextureSP("������ɥ���/����", 10000, -337, -549, "cg/bg/resize/bg002_��a_02.jpg");
		CreateTextureSP("������ɥ���/�C��", 10000, -599, -303, "cg/st/3d����_�Tͻ_���L.png");
	
		CreateWindow("������ɥ���", 10000, 340, 0, 341, 576, false);
		SetAlias("������ɥ���", "������ɥ���");
		CreateTextureSP("������ɥ���/����", 10000, 0, 0, "cg/bg/bg001_��a_02.jpg");
		CreateTextureSP("������ɥ���/�C��", 10000, -173, -350, "cg/st/3d�Х���_�Tͻ_���L.png");
	
		CreateTextureSP("�ԙC��", 5000, 65, -326, "cg/st/3d������K_�Tͻ_���L.png");
	
		Zoom("������ɥ���", 0, 0, 1000, Dxl2, true);
		Zoom("������ɥ���", 0, 0, 1000, Dxl2, true);
	
		Move("������", 300000, @0, @1500, null, false);
	
		//�����S��������S����
		MoveFTP1("@�ԙC��",30000,3,10);
	FadeDelete("������", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
�����ɵ�������������ȷ�ϡ�
��������·��һ·�ڴ˵ֵ��������ӣ�
��һ·����ʿɽ�������졣

������֮�����������
��Ҫ���ǵģ�������˭ȥ˭�������˶��ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	//�����S��������S����
	MoveFTP2("@������ɥ���/�C��",18000,3,15);
	MoveFTP3("@������ɥ���/�C��",16000,3,10);

	Zoom("������ɥ���", 500, 1000, 1000, Dxl1, false);
	Zoom("������ɥ���", 500, 1000, 1000, Dxl1, true);
	Move("������", 0, @0, @0, null, false);

	SetFwR("cg/fw/fw����֦_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs1010a03">
�����ף���ô���붯��ɡ�
���������ˡ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs1020a00">
��������ξ����

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs1030a03">
����Ҳ��һ��С��Ҳ�ã���ӵ�й۲������
˫�ۺ��ж�״����ͷ��Ӵ��
�����Ƕ������˭����Ӧ��ȥ��
�ڸ�ʿɽ������������ս����ѡ����

{	FwR("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs1040a03">
���԰ɣ���

{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs1050a02">
�������ҡ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs1060a00">
������������

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs1070a03">
�����ǺŸ���Ⱥ�����ڴˣ�
Ҳ����˵��ɽ�����Ǹ�ͷĿ�ǡ���
���������˳���׷�𵽴˵��Ǹ����󡣡�

{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs1080a03">
���Ƿ����󣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
��������ˡ�
����<RUBY text="��">��</RUBY>ս�������β����Ƹ������ˡ�

���������ڣ������Ҳ�͵�ͬ�ڡ���
�������Ƕ����������Ⱥ��ֻ���뿪��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs1090a02">
���ն�������
���������ȥ�Ļ�������������ȥ�ɡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs1100a00">
��������

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs1110a01">
�����������������ı߶���һ���ġ���

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/008vs1120a01">
���������ɽ��һս���ӡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
�������ס�
��ͬ������в�����������ʶ�������������
�ĸ������ӣ���ȫһ����֪�ġ��񡱲Ÿ���Σ�հɡ�

���������Ϊ��

�����У����һ���ʹ�������֦��ξ������
�����µ���񿴵����Ա����ߵ���ݵ�����
�ǵİ�Σ��Ҳ�������������Ϊ��Ц�ɡ�

��ʵ���ϣ����ȷʮ�ֻ�����

����Ҳ������Ϊ��

������Ȼ����
�����ɳ��Ҳ�ã����ɲ���Ҳ�ա���

�������ܸı��������������˵���ʵ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/md05/008vs1130a00">
������������

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/008vs1140a00">
�������ˡ���

{	FwR("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/008vs1150a02">
���ǡ���

{	FwR("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/008vs1160a03">
������ȥ��ء���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("������", 19999, 0, 0, SCREEN);

		//�����S��������S���ȣ�ֹͣ
		MoveFTP1stop();
		MoveFTP2stop();
		MoveFTP3stop();

		Delete("������ɥ���");
		Delete("������ɥ���");

		CreateTextureSP("������", 1000, Center, Middle, "cg/bg/resize/bg202_�����ݳ�����ɽ_02ex3.jpg");
		Zoom("������", 0, 1100, 1100, Dxl2, true);

		//����_ʼ
		CloudZoomStart2B(700,1000,1000);
		//����Ƅ�
		//CloudZoomVertex2(0,@-1800,@-500,Dxl2,true);
		CloudZoomVertex2(0,@-600,@-100,Dxl2,true);

		CreateTextureSP("�ԙC��", 1500, -598, -441, "cg/st/3d����_�T��_���La2.png");
		Zoom("�ԙC��", 0, 60, 60, Dxl2, true);
		CreateTextureSP("�ԙC��", 1500, -480, -578, "cg/st/3d�Х���_�Tͻ_���L3.png");
		Zoom("�ԙC��", 0, 140, 140, Dxl2, true);
		CreateTextureSP("�ԙC��", 2000, 90, -131, "cg/st/3d������K_�T��_ͨ��b.png");

		//�����S��������S����
		MoveFTP1("@�ԙC��",30000,3,5);
		MoveFTP2("@�ԙC��",20000,3,7);
		MoveFTP3("@�ԙC��",15000,3,10);

	FadeDelete("������", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
��ƽ����ˮ�����������
���������߷ֿ���
�����˷ֱ���ս���н���

�����һ������������֦��
�������ҽ��������ڴˡ�

���븴�����ӵ�ս��֮���⣬������ô�붼ֻ�о�����
�����������ĸ��ʣ��������㡣

����֪��ˣ���Ȼǰ�С�
��������������

�������Ҳ�Ӧ�Ի�

����ҵ�������ġ�
���Ѿ��ж����ˡ������ˡ�

�����ȣ���������һ����ͯ����ɥ����

�����������Լ������ľ�����������ġ�

������<RUBY text="����">����</RUBY>��
�����ڣ���һ�������ˡ�

������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("ɫ��", 500, 1000, null, true);

	CreateTextureSP("������", 15000, -256, -576, "��������`����");

//������
	CreateTextureSP("�ԙC��", 15000, -300, -282, "cg/st/3d����_�T��_���La2.png");
	Move("������", 2000, @256, @-256, null, false);
	Move("�ԙC��", 2000, @-50, @50, null, false);
	Fade("ɫ��", 500, 0, null, true);
	Wait(1000);
//	WaitKey();
	Fade("ɫ��", 500, 1000, null, true);

	Move("������", 0, 0, -256, Axl1, true);

//���Х���
	CreateTextureSP("�ԙC��", 15000, -201, -411, "cg/st/3d�Х���_�Tͻ_���L3.png");
	Move("������", 2000, @-256, @256, null, false);
	Move("�ԙC��", 2000, @50, @-50, null, false);
	Fade("ɫ��", 500, 0, null, true);
	Wait(1000);
//	WaitKey();
	Fade("ɫ��", 500, 1000, null, true);


	Delete("������");
	Delete("�ԙC��");
	Fade("ɫ��", 500, 0, null, true);

	SetFwC("cg/fw/fw����_���L.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��������
<voice name="����" class="����" src="voice/md05/008vs1170a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����l
	//�����S��������S���ȣ�ֹͣ
	MoveFTP3stop();

	OnSE("se���L_����_���ϕN01",1000);

	Zoom("�ԙC��", 500, 2000, 2000, Dxl1, false);
	Move("�ԙC��", 500, @-100, @100, Axl1, false);

	Fade("ɫ��", 500, 1000, null, true);

		//�����ȥ
		CloudZoomFade2(0,true);

		//�����S��������S���ȣ�ֹͣ
		MoveFTP2stop();
		MoveFTP1stop();
		Delete("�ԙC*");

		Move("������", 0, 0, -5336, null, false);
		Rotate("�}Suf", 0, @0, @0, @-45, null, true);

		CreateTextureEX("������", 17000, -250, -5236, "cg/bg/bg202_�����ݳ�����ɽa_02.jpg");
		CreateTextureEX("�ԙC��", 17000, -204, -169, "cg/st/3d������K_�T��_ͨ��3.png");

		//�������ԥåȣ�˲�g��ʾ��
		Cockpit_AllFade2();
		//�������ԥåȣ��ԙC�����ӣ�
		FrameShake();

		//�������ԥåȣ��ԙC����ٶ�ֹͣ��
		CP_SpeedChange2(0,800,null,true);

		//�������ԥåȣ��ԙC��������Ԅӻ���
		CP_AltChangeA();
		//�������ԥåȣ��ԙC����ٶ��Ԅӻ���
		CP_SpeedChangeA();
		//�������ԥåȣ��ԙC��󣺸߶��Ԅӻ���
		CP_HighChangeA();

		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(0,90,null,false);

		//����_ʼ
		CloudZoomStart2(700,1000,1000);
		//����Ƅ�
		CloudZoomVertex2(0,@-400,@-400,Dxl2,true);

		//���̶���������
		MoveFFP1("@������",5000);

		//�������ԥåȣ��ԙC��󣺻�ܞ�S��
		CP_RollBarMove2(500,0,Dxl1,false);

		OnSE("se���L_����_��ͻ�M08",1000);
		SetVolume("������ɣ�", 1000, 400, NULL);

		Rotate("�}Suf", 500, @0, @0, 0, Dxl1, false);
		Move("������", 500, @-250, @0, Dxl1, false);

	Fade("ɫ��", 500, 0, null, true);

		//�������ԥåȣ��ԙC��󣺻�ܞ�S�Ԅӻ���
		CP_RollBarMoveA();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
��ǰ�С�

��û�������κ����
��л����Ǹ�л�����ҿ����³��Ļ��ﶼ
�������壬����ʹ���Һ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("������ɣ�", 3000, 0, NULL);
	//SetVolume("@mbgm*", 3000, 0, NULL);

	OnSE("se���L_����_��ͻ�M03",1000);

	//�������ԥåȣ��ԙC��󣺸߶�ֹͣ��
	CP_HighChange2(1000,1300,Dxl1,false);
	//�������ԥåȣ��ԙC�������ֹͣ��
	CP_AltChange(1000,35,Dxl1,false);
	Move("������", 1000, @0, @200, Dxl1, 500);

	Fade("�ԙC��", 300, 1000, null, false);
	Fade("������", 300, 1000, null, false);

	Move("�ԙC��", 1500, @0, @500, Axl1, false);
	Zoom("�ԙC��", 1500, 100, 100, null, false);
	Move("������", 2000, @0, @2000, AxlDxl, true);

	Move("������", 2000, @0, @50, null, false);
	ClearFadeAll(2000, true);

	//�������ԥåȣ�������
	//CP_AllDelete();
}

function SetKenkiEX()
{
	CreateTextureSP("���C��", 1000, -34, -122, "����`����");
	Move("���C��", 0, @-500, @1000, Dxl1, true);
	MoveFRP1("@���C��",20000,3,3);
	CreateTextureSP("���C��", 1000, -196, -440, "����`����");
	Move("���C��", 0, @-500, @1000, Dxl1, false);
	MoveFRP2("@���C��",20000,4,4);
	CreateTextureSP("���C��", 1000, 213, -267, "����`����");
	Move("���C��", 0, @-1500, @0, Dxl1, false);
	MoveFRP3("@���C��",20000,6,6);
	CreateTextureSP("���C��", 1000, 182, -37, "����`����");
	Move("���C��", 0, @-1000, @-500, Dxl1, false);
	MoveFRP4("@���C��",20000,8,8);
	CreateTextureSP("���C��", 1000, 152, -384, "����`����");
	Move("���C��", 0, @-1100, @500, Dxl1, false);
	MoveFRP5("@���C��",20000,10,10);
	CreateTextureSP("���C��", 1000, -229, -61, "����`����");
	Move("���C��", 0, @-1000, @-1000, Dxl1, false);
	MoveFRP6("@���C��",20000,12,12);
	CreateTextureSP("���C��", 1000, -455, -245, "����`����");
	Move("���C��", 0, @-1000, @600, Dxl1, false);
	MoveFRP7("@���C��",20000,15,15);
	$KenkiOff=true;
}

function SetKenki($���C)
{
	if(!$KenkiOff){
		if($���C=="��"){
			CreateTextureSP("���C��", 1000, -34, -122, "����`����");
			Move("���C��", 0, @-500, @1000, Dxl1, true);
			MoveFRP1("@���C��",20000,3,3);
		}else if($���C=="��"){
			CreateTextureSP("���C��", 1000, -196, -440, "����`����");
			Move("���C��", 0, @-500, @1000, Dxl1, false);
			MoveFRP2("@���C��",20000,4,4);
		}else if($���C=="��"){
			CreateTextureSP("���C��", 1000, 213, -267, "����`����");
			Move("���C��", 0, @-1500, @0, Dxl1, false);
			MoveFRP3("@���C��",20000,6,6);
		}else if($���C=="��"){
			CreateTextureSP("���C��", 1000, 182, -37, "����`����");
			Move("���C��", 0, @-1000, @-500, Dxl1, false);
			MoveFRP4("@���C��",20000,8,8);
		}else if($���C=="��"){
			CreateTextureSP("���C��", 1000, 152, -384, "����`����");
			Move("���C��", 0, @-1100, @500, Dxl1, false);
			MoveFRP5("@���C��",20000,10,10);
		}else if($���C=="��"){
			CreateTextureSP("���C��", 1000, -229, -61, "����`����");
			Move("���C��", 0, @-1000, @-1000, Dxl1, false);
			MoveFRP6("@���C��",20000,12,12);
		}else if($���C=="��"){
			CreateTextureSP("���C��", 1000, -455, -245, "����`����");
			Move("���C��", 0, @-1000, @600, Dxl1, false);
			MoveFRP7("@���C��",20000,15,15);
		}
	}
}

function FadeKenki($���C)
{
	$Kenki�Ƅ��ٶ�=800;
	$Kenki�����ٶ�=600;

	if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -104, -207, Dxl2, false);
	}else if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -84, -237, Dxl2, false);
		Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Zoom("������", $Kenki�����ٶ�, 2000, 2000, Dxl2, false);
		Zoom("������", $Kenki�����ٶ�, 2000, 2000, Dxl2, false);
	}else if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -50, -237, Dxl2, false);
		Zoom("���C��", $Kenki�����ٶ�, 500, 500, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Zoom("������", $Kenki�����ٶ�, 1800, 1800, Dxl2, false);
		Zoom("������", $Kenki�����ٶ�, 1800, 1800, Dxl2, false);
	}else if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -26, -207, Dxl2, false);
		Zoom("���C��", $Kenki�����ٶ�, 400, 400, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 500, 500, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Zoom("������", $Kenki�����ٶ�, 1600, 1600, Dxl2, false);
		Zoom("������", $Kenki�����ٶ�, 1600, 1600, Dxl2, false);
	}else if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -74, -217, Dxl2, false);
		Zoom("���C��", $Kenki�����ٶ�, 300, 300, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 400, 400, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 500, 500, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Zoom("������", $Kenki�����ٶ�, 1400, 1400, Dxl2, false);
		Zoom("������", $Kenki�����ٶ�, 1400, 1400, Dxl2, false);
	}else if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -104, -227, Dxl2, false);
		Zoom("���C��", $Kenki�����ٶ�, 200, 200, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 300, 300, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 400, 400, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 500, 500, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Zoom("������", $Kenki�����ٶ�, 1200, 1200, Dxl2, false);
		Zoom("������", $Kenki�����ٶ�, 1200, 1200, Dxl2, false);
	}else if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -455, -245, Dxl2, false);
		Zoom("���C��", $Kenki�����ٶ�, 100, 100, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 200, 200, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 300, 300, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 400, 400, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 500, 500, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Zoom("������", $Kenki�����ٶ�, 1000, 1000, Dxl2, false);
		Zoom("������", $Kenki�����ٶ�, 1000, 1000, Dxl2, false);
	}
}

function GoKenki($���C)
{
	if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 100, 100, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, -50, -30, Dxl1, false);
	}else if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 200, 200, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, -196, -440, Dxl1, false);
	}else if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 300, 300, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, 213, -267, Dxl1, false);
	}else if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 400, 400, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, 182, -37, Dxl1, false);
	}else if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 500, 500, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, 152, -384, Dxl1, false);
	}else if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, -229, -61, Dxl1, false);
	}else if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 1000, 1000, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, -455, -245, Dxl1, false);
	}
}



..//������ָ��
//�Υե����롡"md05_009.nss"