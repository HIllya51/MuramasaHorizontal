//<continuation number="1360">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_016vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md01_016vs.nss","DenziBladeCharge",true);
	Conquest("nss/md01_016vs.nss","DenziBladeChargeSet",true);
	

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
	#bg095_�ߏ�Ժ�ξ���_02=true;
	#bg001_��a_02=true;
	#ev212_�����������L���=true;
	#ev502_�����i��Ƭ��=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_017.nss";

}

scene md01_016vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_015.nss"


//�������ȶ���
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg095_�ߏ�Ժ�ξ���_02.jpg");
	StL(1000, @0, @0,"cg/st/st��������_ͨ��_˽��.png");
	StR(1100, @0, @0,"cg/st/3d�����˜�_����_�i��.png");
	FadeStA(0,true);
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md01/016vs0010a01">
���ǡ����ֶ�����������û�����壡
���Խ��е�ս������˵���β�����ߵġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0020a01">
��Ҫ�Ƕ�ս�Ļ�һ������Ӯ����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0030a15">
����ô��ս����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0040a01">
�����⡪����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm13",0,1000,true);

//�􄇓�
//�������������ܤ������
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateTextureEXadd("�}����", 3100, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Fade("�}����", 0, 450, null, true);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	Wait(10);
	Delete("�}ɫ��");

	CreateSE("SE01a","se���L_����_Ұ̫�����01");
	MusicStart("SE01a",0,1000,0,1250,null,false);
	CreateTextureEXadd("�}����", 3100, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Fade("�}����", 0, 450, null, true);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	DeleteStA(0,true);
	Delete("�}��*");
	Delete("�}ɫ��");

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0050a15">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0060a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇓�
//������������
	CreateSE("SE01a","se���L_����_Ұ̫�����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureEXadd("�}����", 3100, Center, Middle, "cg/ef/ef012_����б��܉��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef012_����б��܉��.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Fade("�}����", 0, 450, null, true);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	Delete("�}��*");
	DeleteStR(0,true);
	Delete("�}ɫ��");

	SetFwC("cg/fw/fw��������_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0070a15">
��������׷��Ӭ�𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0080a01">
�������ˣ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0090a15">
����û�����𡭡�
�����Ǹ�ѪҺѭ�����õ�Ů���ء���

//������������
<voice name="��������" class="��������" src="voice/md01/016vs0100a15">
���к����ݵĶ԰ɡ�
����Ҫ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0110a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1000, @0,@20,"cg/st/st��������_ͨ��_˽��.png");
	Move("@StC*", 300, @0, @-20, Dxl2, false);
	FadeStC(300,true);

//������̤���z�ߡ�ȭ��
//�������`��
	PrintGO("�ϱ���", 10000);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	CreateSE("SE01","se���L_����_�z��������");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("�ϱ���", true, 3, 300, 50, false);

	CreateSE("SE02","se����_����_���S03");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("�ϱ���", 100, 2000, 2000, Dxl2, true);
	Delete("�ϱ���");

	WaitKey(10);
	OnBG(100,"bg095_�ߏ�Ժ�ξ���_02.jpg");
	FadeBG(0,true);
	FadeDelete("�}��ܞ", 300, false);
	CreatePlainSP("�}��д", 4999);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl3, true);
	Delete("�}��д");

	StL(1000, @30, @0,"cg/st/st��������_ͨ��_˽��.png");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md01/016vs0120a01">
������?!��

{	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,false);
	FwC("cg/fw/fw��������_��Ц.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0130a15">
����Ҳ̫<RUBY text="��������">ĥĥ���</RUBY>�ˡ�
�������ƶ��ٶȣ���˵�ǲ�Ӭ�ˣ���ţҲץ
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0140a01">
�������ٵ��⣡
���������أ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇓�
//�������ر�
	CreateSE("SE02","se����_����_���S02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	SetBlur("@StL*", true, 3, 300, 10, false);
	DeleteStL(150,false);
	Move("@StL*", 150, @60, @0, Dxl2, false);

	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightup(@-256, @0,1200);
	SL_rightupfade(0);

	StC(1000, @-60,@0,"cg/st/st��������_ͨ��_˽��.png");
	SetBlur("@StC*", true, 3, 300, 10, false);
	Move("@StC*", 150, @60, @0, Dxl2, false);
	FadeStC(150,true);

//�􄇓�
//�������ر�
	CreateSE("SE02a","se����_����_���S01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	DeleteStC(150,false);
	Move("@StC*", 150, @60, @0, Dxl2, false);

	CreateSE("SE01a","se���L_����_Ұ̫�����01");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	SL_down(@0, @0,1200);
	SL_downfade(0);

	StR(1000, @-60,@0,"cg/st/st��������_ͨ��_˽��.png");
	SetBlur("@StR*", true, 3, 300, 10, false);
	Move("@StR*", 150, @60, @0, Dxl2, false);
	FadeStR(150,true);


	WaitAction("@Slash*", null);
	Delete("@Slash*");
	Delete("@slash*");

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0150a15">
���ƺ�����Ҫ�����ˣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0160a01">
������������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0170a15">
���Լ��Ǹ�����
��<RUBY text="����������">�ٻ�����׾</RUBY>�ĳ�̬����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0180a01">
��Ϊʲô������

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0190a15">
����������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0200a15">
��������̬ȷʵ����ǿ����̬��
������Ҳͬ����Ҫ�вٿ��ߡ���

//������������
<voice name="��������" class="��������" src="voice/md01/016vs0210a15">
���������һ���������ʲô��
������˵��ֽ�ϻ��಻Ϊ��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0220a01">
��������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0230a15">
����û��̫���ļ�����
��Ҳû�������Ĺ�������

//������������
<voice name="��������" class="��������" src="voice/md01/016vs0240a15">
��ֻ�Ǻ��ұ�������������״̬��
�����ء��ٶۣ������ŵ㡣��

{	FwC("cg/fw/fw��������_��Ц.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0250a15">
�����������������ȡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//���ţ֣������������L�Σ�����ȭ����
	Move("@StR*", 500, @-200, @0, Axl2, false);

	CreateSE("SE01","se����_����_���S01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DeleteStA(0,true);
	CreateTextureSP("�}�ţ�", 100, -130, -30, "cg/ev/resize/ev212_�����������L���m.jpg");
	Move("�}�ţ�", 450, -385, @0, AxlDxl, false);
	DrawDelete("�}�\Ļ", 300, 100, "slide_01_01_1", true);
	
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md01/016vs0260a01">
������?!��

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0270a15">
����߾�Ч�ʵö��ˡ�
��������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ȭ����ꡣ����ӥͩ`�����
//�����������w��
	CreateSE("SE03","se���L_����_�z_���02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	Rotate("�}��", 0, @180, @0, @0, null,true);
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 50, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	CreateSE("SE03a","se���L_����_�z_���01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef042_���ô��.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 50, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	CreateSE("SE03b","se���L_����_�z��������");
	MusicStart("SE03b",0,1000,0,1000,null,false);

	PrintGO("�ϱ���", 10000);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	Delete("�ϱ���");
	WaitKey(10);
	OnBG(100,"bg095_�ߏ�Ժ�ξ���_02.jpg");
	FadeBG(0,true);
	FadeDelete("�}��ܞ", 300, false);
	CreatePlainSP("�}��д", 4999);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl3, true);
	Delete("�}��д");

	StR(1000, @60, @0,"cg/st/st��������_ͨ��_˽��.png");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md01/016vs0280a01">
����������

{	Move("@StR*", 300, @-60, @0, Dxl2, false);
	FadeStR(150,false);
	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0290a15">
��������̬�Ļ�ֻƾ��������
����������ս���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������˲�ٽӽ�
	CreateSE("SE01","se����_����_���S02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreatePlainSP("�}��д", 5000);
	Fade("�}��д", 150, 1000, null, false);
	DrawTransition("�}��д", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", false);
	SetBlur("�}��д", true, 3, 500, 50, false);
	Move("�}��д", 150, -300, 58, null, false);
	Zoom("�}��д", 150, 2000, 2000, null, true);

	CreateSE("SE01b","se���L_����_�z_���02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("�}������", 5100, Center, Middle, "cg/bg/resize/bg095_�ߏ�Ժ�ξ���_02lmex01.jpg");
	Shake("�}������", 300, 30, 0, 0, 0, 1000, Dxl3, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md01/016vs0300a01">
��!!��

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0310a15">
��Ҫ<RUBY text="������">����ȥ</RUBY>�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������ޤ���Ͷ��
//�������`��
	CreateSE("SE01c","se����_����_���S03");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SetBlur("�}������", true, 3, 500, 30, false);
	Rotate("�}������", 150, @0, @0, @180, Axl2,false);
	Wait(150);
	CreateSE("SE01","se���L_�Ɖ�_����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	Wait(1);
	PrintGO("�ϱ���", 10000);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	Delete("�ϱ���");
	WaitKey(10);
	OnBG(100,"bg001_��a_02.jpg");
	FadeBG(0,true);
	FadeDelete("�}��ܞ", 300, false);

	CreatePlainSP("�}��д", 4999);
	Shake("�}��д", 600, 0, 100, 0, 0, 1000, Dxl2, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md01/016vs0320a01">
��������������

//��������
<voice name="����" class="��������" src="voice/md01/016vs0330a01">
���ɡ����񡭡�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������������ΑB����֩���
//������`���Ǥ����ʤä��Τǡ�����äݤ��ݳ���
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg095_�ߏ�Ժ�ξ���_02.jpg");
	StL(1000, @0, @0,"cg/st/st��������_ͨ��_˽��.png");
	FadeStL(0,true);
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);

	SetVolume("SE*", 1000, 0, null);

	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,500,null,false);
	StR(1100, @10, @60,"cg/st/3d�����˜�_����_ͨ��.png");
	Shake("@StR*", 600, 2, 0, 0, 0, 1000, null, false);
	Move("@StR*", 600, @-10, @-60, DxlAuto, false);
	FadeStR(600,true);

	WaitKey(2000);

	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 100, 1000, null, true);
	StR(1000, @0, @230,"cg/st/3d����֩��_���.png");
	FadeStR(0,true);
	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("�}�ե�", 2000, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0340a15">
������������

{	SoundPlay("@mbgm32",2000,1000,true);
	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0350a15">
�����
�����������ڸ���֮���𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0360a01">
�������š�����

//��������
<voice name="����" class="��������" src="voice/md01/016vs0370a01">
�����ֻ������Ų�����ĸ����˵����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0380a15">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0390a01">
����Ҫ�Ƿ���Ļ���ĸ������ʲô����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0400a15">
����ô����������
���������ĸ�ס���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0410a01">
����Ȼ���а�?!
��Ϊʲô������ô�ᡣ��

//��������
<voice name="����" class="��������" src="voice/md01/016vs0420a01">
��<RUBY text="����">����</RUBY>����ɢ����������!!��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0430a15">
��������������������Ρ�
�����������Ӳٿ�����־�ġ�����֪���Ļ���
���ǵ������������ĵý�������Ϊ�á���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0440a01">
���Ų���������
�����ӵ��뷨����������ν����

//��������
<voice name="����" class="��������" src="voice/md01/016vs0450a01">
������֮ǰ�Ǿ仰��
��ĸ����Ϊ�λ����������������ٿ����أ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0460a15">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0470a01">
���ѵ�������<RUBY text="�⹫">ʼ��</RUBY>��ʧ�ܽ�ѵ����?!
�����Ǵ�����Ϊ�˹�����ߵĶ��ƶ����ڵĽ���
��������ֻҪһ������ͻ������ѵĻ�����

//��������
<voice name="����" class="��������" src="voice/md01/016vs0480a01">
�����ԡ���ĸ���㲻�ú��κ���
��Ե��
��������Ҫ��Ե��ҲӦ�ø������ص�
ѡ����󡣡�

//��������
<voice name="����" class="��������" src="voice/md01/016vs0490a01">
��������־�������˴��Ŵ�����Ϊ�����ߵĻ���
���޷������ƶ���ֵĽ��ɣ������п��ܷ���
����������֪����Щ������
����Ϊʲô����ѡ�������������࣡��

//��������
<voice name="����" class="��������" src="voice/md01/016vs0500a01">
�����ǹ���ʹ��������
�����������ǰ����ɢ�����ң�ɿ��ɱ¾
�ֵ�����Ϊ��ʲô?!��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0510a15">
��������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0520a15">
������
�������������ƺ���Щ����ء���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0530a01">
����⡭������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0540a15">
�����ȡ�
���еĲ����ߣ�û�з�񡣡�

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0550a15">
�����ԡ�������Ҳ���Ƿ�ġ�
����֮���Ǹ��˱�������<RUBY text="����">����</RUBY>�ġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0560a01">
������?!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0570a15">
���������˽��Ǹ��˵��˸�����ϣ��Ͳ�������
�����ϣ������ս�Ե�ġ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0580a01">
��Ϊ��Ϊʲô����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0590a15">
����������
���궼�Ѿ��ӷ�ӡ����ˣ���û
ѧ�����ʷ�𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0600a01">
��������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0610a15">
�����˳Ծ����������������š���
���ϱ�����ս�ң����еȴ��������ĲҾ�
��徵�ɱ¾֮���������ĺ�ƽʱ������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0620a15">
������һ���궼û��ά��ס����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0630a01">
����������ս��ʱ������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0640a15">
���Ǳ�����������֡�
���������ϱ����Ļ����������ƺ���
�����ʮ��֮���ٴ���á�����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0650a15">
����������룿��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0660a01">
������������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0670a15">
����������

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0680a15">
��<RUBY text="������������">��ԶԶ������</RUBY>!!��

//������������
<voice name="��������" class="��������" src="voice/md01/016vs0690a15">
���������ҵ�ս����
�����������ɱ¾��
���������ǰ�����޵���Ҳ��Ȼ��������

//������������
<voice name="��������" class="��������" src="voice/md01/016vs0700a15">
������������û����������ʶ��ս���ĳ�ª��
���Ӻ������Ķ���!!
����֮��̬���ƶ���֣�ս��û����ν�����塪��
��������ʾ������ת˲֮��㱻������!!��

//������������
<voice name="��������" class="��������" src="voice/md01/016vs0710a15">
�����Ǻ������س����ڶ��Ƶ�����֮�У�
ս����ɱ¾�������ѱ��ϱ�������������ʱ�䣬
�������������ս��!!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0720a01">
��ĸ����ĸ�ס�����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0730a15">
��֮ǰС����������޴�����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0740a15">
���еȽ����ǽ����������֮�У�
�����ά�����㲻��������
����ʹ������������п���������
Ҳ���ڿ�ӡ��������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0750a01">
�����ԡ��������أ�
�����Ծ�˵ʲô<RUBY text="������������">������һ�ΰ�</RUBY>?!��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0760a15">
��û����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0770a01">
����������Ǳ�ĩ���ã�
����Ų����⹫�������ģ���

//��������
<voice name="����" class="��������" src="voice/md01/016vs0780a01">
���⹫ֻ�������ø�����˼�ס�ƶ���ֵ�ѵ�룬
��ս������<RUBY text="������">��δȻ</RUBY>���ˡ�����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0790a15">
�������뷨���Ƿ�ǳ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0800a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0810a15">
���ղ���˵���ġ�<RUBY text="����������">ʼ���ʧ��</RUBY>��
��������Ҳ��������ˡ���

{//��Ц��
	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0820a15">
�����״�δʧ�ܹ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0830a01">
��?!
������ʲô����ô�ᣡ��

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0840a15">
�����״�һ��ʼ����˼����<RUBY text="��">��</RUBY>��<RUBY text="��">��</RUBY>����

//������������
<voice name="��������" class="��������" src="voice/md01/016vs0850a15">
����������ֻ����ͨ�ˣ�ֻҪ�����
�ƶ���֣���������������ͺá�
�������������߱������������Ҳ���
��������ϵ�ɱ¾����Ҳ���ԡ���

//������������
<voice name="��������" class="��������" src="voice/md01/016vs0860a15">
����Ϊ������״�����˻��Լ�
���������񡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0870a01">
������!!��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0880a15">
�������׸��׵��������𡣡�

//������������
<voice name="��������" class="��������" src="voice/md01/016vs0890a15">
�����۲�������ʲô�����ˡ���
�����д��������������˽�ʾս����
��֮�������Ը����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0900a01">
�������������ǣ�
��������ˡ����Ǻš�Ҳ̫�����˰�?!��

//��������
<voice name="����" class="��������" src="voice/md01/016vs0910a01">
������ĸ����Ĳ����߱���ͺ�ǿ����
Ҳ�ױ���̫�����ˣ�
�����Ų���ֹ�Ļ�����Ҫ������Ͼ�ɱ��
�𡪡���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0920a15">
���и������ں�����

//������������
<voice name="��������" class="��������" src="voice/md01/016vs0930a15">
���������޿ɾ�ҩ��<RUBY text="����">����</RUBY>��
������û����ȡ�ϱ��������еĽ�ѵ����

{	FwC("cg/fw/fw��������_��Ц.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0940a15">
��������������ĳ̶Ⱦ�û�а취�󳹴���
��������˵�������ʱ�������Ҳ�����ء���

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0950a15">
������Ҫ������Ͳ����������ˡ�
�����׵�Ը������ʵ������!!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0960a01">
����������������������������������������
����������������������������������������
����������������������������������������
������������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0970a15">
������˵���з����𡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs0980a01">
����������ˡ�����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs0990a15">
����ֻ�����ǻ�������������ˡ�
�����������������̫�����ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs1000a01">
������������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1010a15">
���ߡ���

//������������
<voice name="��������" class="��������" src="voice/md01/016vs1020a15">
����������
���������ס�
���������ԡ�
��û����֪֮��������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1030a15">
���Ѳٿ����ӵ�һ���Լ��ܿ������ֻ��
�������ܵ��ڵط����Լ�����ɧ��
������ǡ�������������<RUBY text="��">��</RUBY>��Ů���𡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs1040a01">
��ĸ�ס�����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1050a15">
�����ˡ�
��<RUBY text="��">��</RUBY>�����������ķ���Ʒ��
���к�����ȥ��Ը��ס���

//������������
<voice name="��������" class="��������" src="voice/md01/016vs1060a15">
��������������
���ɴ����<RUBY text="��������">��¯����</RUBY>��<RUBY text="����������������">ֱ��Ū�ɷ���Ҳ��</RUBY>����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs1070a01">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������
//���`�������٤�
	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreatePlainEXadd("�}��д", 5000);
	SetVertex("�}��д", 740, 480);
	Zoom("�}��д", 600, 1200, 1200, Dxl2, false);
	Fade("�}��д", 600, 800, null, true);
	WaitKey(100);
	FadeDelete("�}��д", 600, true);

	CreateSE("SE01a","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	CreateSE("SE03","se����_�z_�l����01");
	MusicStart("SE01a",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);

	MusicStart("SE03",0,1000,0,750,null,false);
	StR(1100, @10, @60,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(0,true);
	Move("@StR*", 1200, @-10, @-60, DxlAuto, false);
	FadeDelete("�}�ե�", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md01/016vs1080a01">
��ĸ����ĸ���㡭������

{	FwC("cg/fw/fw��������_��Ц.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1090a15">
���Ǻǣ���վ�������𣿡�

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1100a15">
����������վ�����ɣ�
����˵��������Ҫ�������ֵĻ���
�ɾ��ز�ס���е������ˡ���

//������������
<voice name="��������" class="��������" src="voice/md01/016vs1110a15">
�����ڳ������Լ��Ƿ���һ�㡭����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs1120a01">
��������

{	FwC("cg/fw/fw��������_��Ц.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1130a15">
����������ϧ����
��Ů��Ӵ������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1140a15">
������ǿ��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs1150a01">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��늴Œi���ʂ�
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 600, @150, @0, AxlDxl, false);
	Fade("�}ɫ��", 300, 1000, null, true);

	CreateTextureEX("�}��", 4000, -440, -40, "cg/ev/resize/ev902_����늴Œi����`�륬��_cm.jpg");
	FadeDelete("�}ɫ��", 1000, false);
	Move("�}��", 300, @60, @0, Dxl2, false);
	Fade("�}��", 300, 1000, null, true);

	CreateSE("SEL01","se����_늓�_���02");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureEXadd("�ץ�}��", 4020, -380, -40, "cg/ev/resize/ev902_����늴Œi����`�륬��_dm.jpg");
	CreateTextureEXsub("�ץ�}", 4010, -380, -40, "cg/ev/resize/ev902_����늴Œi����`�륬��_dm.jpg");
	SetVertex("�ץ�}", 1160, 470);

	DenziBladeCharge();

	SetFwC("cg/fw/fw��������_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1160a15">
�����ô�������İε�������
���������<RUBY text="������">������</RUBY>��ɵ���߼��հɡ���

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1170a15">
�������������𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs1180a01">
��ն��������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1190a15">
�������С� ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������L�}
	CreateSE("SE03","se����_����_���S03");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}�ݏr��", 5100, Center, Middle, "cg/ev/ev212_�����������L���.jpg");
	CreateTextureSP("�}�ݏr", 5000, Center, Middle, "cg/ev/ev212_�����������L���.jpg");
	Zoom("�}�ݏr��", 0, 1200, 1200, null, false);
	Zoom("�}�ݏr��", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݏr��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	DrawDelete("�}�ݏr��", 200, 100, "zoom_01_00_1", true);

	SetFwR("cg/fw/fw��������_߳��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1200a15">
�����ɡ���

{	FadeDelete("�}�ݏr", 300, false);
	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs1210a01">
������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��늴Œi��
//��������`��
//���⤬���ޤäƤ椯��
//���������L�}�����Τޤ�ޡ��o�¡�
	SetVolume("SE*", 1000, 0, null);
	CreateColorEXadd("�}ɫ��", 10000, "#FFFFFF");
	Fade("�}ɫ��", 1000, 1000, Axl2, true);

	MovieSESet(15000,"mv늴Œi��_��","se����_mv��_늴Œi��_��");
	MovieSEStart(1500);

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	CreateTextureSP("�}�ţ�", 4000, -397, InBottom, "cg/ev/resize/ev212_�����������L���_bm.jpg");
	Delete("�ϱ���");
	Delete("��*");
	Delete("�ץ�*");
	SetVolume("@mbgm*", 3000, 0, null);
	Move("�}�ţ�", 5000, @0, -154, DxlAuto, false);
	FadeDelete("�}��ܞ", 3000, true);

	Wait(2000);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="��������" src="voice/md01/016vs1220a01">
������?!��

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1230a15">
���겻����һ�����������֮�²���
�ڰ�����֪֮��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��
	//CreatePlainSP("�}��д", 5000);
	PrintGO("�}��д", 5000);
	SetBlur("�}��д", true, 3, 500, 50, false);
	SetVertex("�}��д", 410, 250);//���ߩ`ע��
	CreateSE("SE01","se����_����_���S03");
	CreateTextureSPadd("�}�݄���", 6000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Zoom("�}�݄���", 0, 1000, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}��д", 300, 1500, 1500, Dxl2, false);
	Zoom("�}�݄���", 300, 2000, 2000, AxlDxl, false);
	Fade("�}�݄���", 300, 0, null, false);
	DrawDelete("�}�݄���", 300, 100, "circle_01_00_1", true);

//���ɤ���`��
	CreateSE("SE01a","se���L_�Ɖ�_����02");
	CreateSE("SE01b","se���L_����_�z��������03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);


	CreateTextureSPadd("�}����", 7100, Center, Middle, "cg/ef/resize/ef042_���ô��tl.jpg");
	CreateTextureSP("�}��", 7000, Center, Middle, "cg/ef/resize/ef042_���ô��tl.jpg");
	Move("�}��", 3000, @0, @200, null, false);
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//���������l��
	Delete("�}��д");
	Delete("�}�ţ�");
	OnBG(100,"bg095_�ߏ�Ժ�ξ���_02.jpg");
	FadeBG(0,true);
	FadeDelete("�}��", 1000, true);

	CreateSE("SE01c","se���L_�n��_�zܞ��01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreatePlainSPadd("�}��д", 110);
	SetBlur("�}��д", true, 3, 500, 200, false);
	Shake("�}��д", 300, 0, 20, 0, 0, 1000, Dxl2, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="��������" src="voice/md01/016vs1240a01">
������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��Ф������Ϥäݤ����
	CreateSE("SE02","se�ճ�_�Cе_늚ݥ���`�Ȏ��01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 200, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="��������" src="voice/md01/016vs1250a01">
�������ء�����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1260a15">
�������ľ����޷�������
��������Ϊ��ʹ���˳�����������޶ȵ��似����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1270a15">
��û�вŻ�û�б��ľ���Ū̫���Ĵ�����
����ý�����֮�൱����ҽ�֣���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/016vs1280a01">
������������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1290a15">
�����������Ĵȱ���
���������ĸ��������һ�̰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//���������L�}
	CreateSE("SE01","se����_����_���S01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}�ţ�", 4000, Center, Middle, "cg/ev/ev212_�����������L���.jpg");
	Zoom("�}�ţ�", 0, 1500, 1500, null, true);
	SetBlur("�}�ţ�", true, 3, 500, 60, false);
	Zoom("�}�ţ�", 300, 1000, 1000, Dxl2, false);
	Fade("�}�ţ�", 200, 1000, null, true);

	SetFwR("cg/fw/fw��������_߳��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1300a15">
��ȥ���ɡ���

{	FwR("cg/fw/fw��Ӱ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/016vs1310a14">
�������ȵȡ���������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߏ�Ժ���ڣ�����
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg095_�ߏ�Ժ�ξ���_02.jpg");
	StL(1000, @0, @0,"cg/st/st��������_ͨ��_˽��.png");
	FadeBG(0,true);
	FadeStL(0,true);
	FadeDelete("�ϱ���", 1000, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1320a15">
��������
������ֹ�С�����һѩ����֮�ܡ���

{	FwC("cg/fw/fw��Ӱ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/016vs1330a14">
��������������飬���ǡ���
��û�취������

//���⡿
<voice name="��" class="��" src="voice/md01/016vs1340a14">
�����˽�Ŀ����Ϊֹ��<RUBY text="������">�Ǳ�Ҳ</RUBY>�����ˡ���

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1350a15">
������������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/016vs1360a15">
�����ڵȴ������𡭡����ɡ�
�����޴��ļһ��������һЩ�����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



}

..//������ָ��
//�Υե����롡"md01_017.nss"

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