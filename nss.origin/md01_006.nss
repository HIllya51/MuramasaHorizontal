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

scene md01_006.nss_MAIN
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
	#bg004_�ɤӤ���a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_007.nss";

}

scene md01_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_005.nss"

//���Y��
//����`��`�����������Ф�Ф顣

	PrintBG("�ϱ���", 30000);

	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg004_�ɤӤ���a_01.jpg");
	CreateSE("SE01","se����_����_�ϑ�01");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SE01",2000,1000,0,1000,null,false);
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fwʼ�����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060010b30">
����Ϯ������
����ô���ܣ���

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060020b30">
�������������ڣ���û���߼�Ұ��
���������Ҳ��֪������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060030b30">
��Ӧ�ò��������й¶����
�����ǣ�Ϊʲô����ȴ����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0060040a15">
���������ס�����

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060050b30">
��Ϊʲô������

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0060060a15">
�����Ǳߡ���

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0060070a15">
���Ǹ�������ͷ�����ߡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ʼ���ޤ΄��١��ʤ󤫤�΢������󥸤ǜg�ޤ���
	SetVolume("SE*", 300, 0, null);
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DrawDelete("�\Ļ��", 150, 100, "slide_01_01_1", true);

	StC(1000, @0, @0,"cg/st/3dʼ����_����_�i��.png");
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStC(300,true);

	Wait(500);

	SetFwR("cg/fw/fwʼ�����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060080b30">
������������

{	FwR("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0060090a15">
������Ҳ���װɡ���

//������������
<voice name="��������" class="��������" src="voice/md01/0060100a15">
���ᱲ���۾��ܹ�������
���ܹ�������������

//������������
<voice name="��������" class="��������" src="voice/md01/0060110a15">
���Ǹ����е�����ʲô��
����������������<RUBY text="����">����</RUBY>����

{	FwR("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060120b30">
��ŶŶ��������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060130b30">
���ᡢ�᲻�š���
���᲻Ը���š�������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0060140a01">
������ƭ�ˡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ʼ���ބ��٤ˡ�ʼ���ޤ����ä��ؤͤ룿
	CreateSE("SE01","se�M��_����_�ե�å���Хå�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	CreateColorSP("�}ɫ�\", 3000, "#000000");
	CreateTextureEX("�}�����}��", 3110, Center, InBottom, "cg/st/stʼ����_ͨ��_˽��.png");
	CreateTextureEX("�}�����}", 3100, Center, InBottom, "cg/st/stʼ����_ͨ��_˽��.png");
	Fade("�}�����}", 0, 750, null, true);
	SetBlur("�}�����}��", true, 3, 500, 100, false);
	FadeDelete("�}ɫ��", 200, false);
	FadeFR2("�}�����}��",0,750,200,0,0,20,Dxl2, true);

	CreatePlainSP("�}�ݰ�д", 3000);
	Delete("�}ɫ�\");
	Delete("�}�����}*");
	FadeDelete("�}�ݰ�д", 1000, true);

	SetFwR("cg/fw/fwʼ�����_ꓤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060150b30">
�����ް���
������Ҳ����������!!��

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060160b30">
������������У����Ӷ�������
����󣬻����Լ����������Ϊ���У�������
����!!��

{	FwR("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0060170a15">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	StR(1000, @0, @0,"cg/st/stʼ�����_ͨ��_˽��.png");
	FadeStA(0,true);
	DrawDelete("�\Ļ��", 150, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fwʼ�����_ꓤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0000]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060180b30">
���⡭������ʲô���硭��
�����������ϡ����Ѿ�û���κΡ�����

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060190b30">
��û���κΡ���ֵ�����ŵĶ����ˣ�
�����������塭������Ѫ�����������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060200b16">
��������

{	FwC("cg/fw/fwʼ�����_ŭ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060210b30">
��Ŷ����
��ŶŶŶŶŶŶŶŶŶŶ!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ʼ�桢�l������
	CreateSE("SE01","se����_����_�ߤ�03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStA(300,false);
	Move("@StR*", 300, @-60, @0, Axl2, false);

	SetFwC("cg/fw/fw��������_߳��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������������
<voice name="��������" class="��������" src="voice/md01/0060220a15">
������������?!��

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060230b16">
�������ԣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ʼ��������
//���W
//���։�����ä����
//�����Щ`��Ѫ
	OnSE("se����_����_���S01",1000);

	CreateWindow("�}��", 19000, 0, 96, 1024, 384, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateColorSP("�}��/�}��ɫ", 19010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 19020, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 19100, 50, -20, "cg/st/resize/3dʼ����_����_�i��m.png");
	SetBlur("�}��/�}�����}װ��", true, 3, 500, 60, true);

	Move("�}��/�}�����}װ��", 300, -360, @0, Dxl2, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	CreateColorSP("�}ɫ�\", 20000, "#000000");

	Delete("�}��");

	CreateSE("SE01","se���L_����_Ұ̫�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightdown2(20010,@0, @0,1500);
	SL_rightdownfade2(10);

	Delete("�}����");

	CreateSE("SE01b","se���L_����_���̤���05");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StR(1100, @-60, @0,"cg/st/resize/st�։�_ͨ����_˽��a.png");
	StCR(1000, @60, @0,"cg/st/stʼ�����_ͨ��_˽��.png");
	Shake("@StR*", 900, 3, 0, 0, 0, 1000, null, false);
	Move("@StR*", 900, @30, @10, DxlAuto, false);
	FadeStR(0,false);
	FadeStCR(0,true);
	FadeDelete("�}ɫ�\", 600, true);

	CreateSE("SE01c","se����_Ѫ_�����01");
	MusicStart("SE01c",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw�։�_�^����_.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060240b16">
���ء����ۡ�����

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060250b30">
���֡����δ��ˣ���

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060260b16">
�������ԡ�������������
���㡭������Ҫ�����£���

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060270b30">
���������С����Ͽ����ƣ���

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060280b16">
����Ҫ����
�����̶ֳȵ����ƣ��һ������ˡ���

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060290b16">
���ҵ������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������������ȴ������l���ĤäƤ���
	OnSE("se����_����_�᤺����01",1000);
	StL(1000, @30, @0,"cg/st/st����_ͨ��_˽��.png");
	StCL(1000, @-90, @0,"cg/st/st��������_ͨ��_˽��.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	Move("@StML*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,false);
	WaitKey(200);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw��������_߳��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������������
<voice name="��������" class="��������" src="voice/md01/0060300a15">
�����ף������δ��ˣ���

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0060310a01">
���⹫����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060320b30">
���᲻Ҫ����
���Ͽ��������δ��ˡ�����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060330b16">
���������ˡ�
����������������߰ɡ���

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060340b16">
�����������취�������

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060350b30">
������˵Щʲô����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060360b16">
����Ȼ�޷�սʤ���ߡ���
������������ʱ�䣬�һ�������������

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060370b16">
�����ɣ��Ͽ졪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ʼ��������
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(0,true);
	StL(1000, @-30, @0,"cg/st/3dʼ����_����_�i��.png");
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStA(300,false);

	DrawDelete("�\Ļ��", 150, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw�։�_�^����_.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060380b16">
���죡��

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060390b30">
��������

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0060400a15">
�����ף���

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060410b30">
���ᡢ��������������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060420b30">
���ᡭ�����ܳ�Ϊ��С����

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060430b16">
���������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ʼ�������ߡ��ӽ��������Ĝʂ�
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @60, @0, DxlAuto, true);

	SetFwC("cg/fw/fwʼ�����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060440b30">
������������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0060450b16">
���ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̫����
//��������ͻȻ��ʸ���w��
//�������`�ä����ߤ�؞ͨ
	CreateSE("SE03","se���L_����_Ұ̫�����01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateMovie("�}�ӻ�", 4000, Center, Middle, false, false, "dx/mv���_�󤫤���.ngs");
	SetAlias("�}�ӻ�","�}�ӻ�");
	Request("�}�ӻ�", Play);

	Wait(100);

	Request("�}�ӻ�", Pause);
	Shake("�}�ӻ�", 300, 4, 4, 0, 0, 1000, Dxl2, false);
	CreateSE("SE03b","se���L_����_���ϕN01");
	MusicStart("SE03b",0,1000,0,1500,null,false);
	CreateColorEX("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 150, 1000, null, true);
	WaitKey(50);
	CreateSE("SE03c","se���L_����_�z��������03");
	MusicStart("SE03c",0,1000,0,1000,null,false);
	Delete("�}�ӻ�");
	StL(1000, @30, @0,"cg/st/3dʼ����_����_�i��.png");
	Move("@StL*", 2000, @-30, @10, DxlAuto, false);
	Shake("@StL*", 2000, 3, 0, 0, 0, 1000, DxlAuto, false);
	FadeStA(0,false);
	FadeDelete("�}ɫ��", 1000, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md01/0060460a01">
��������������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060470b30">
��ʲô��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߡ����������
	CreateSE("SE01","se���L_�n��_�zܞ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStL(300,false);
	Move("@StL*", 600, @-10, @30, DxlAuto, false);
	Shake("@StL*", 600, 3, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fwʼ�����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060480b30">
�����ǡ������ߵļ�?!
���Ǵ��������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0060490a15">
��������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0060500a15">
���������ס�
�����Ǳߡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060510b30">
������������

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060520b30">
���Ǹ������ǡ�����

{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0060530a15">
���š�
�������Ǳ�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//���ե��`�ɥ���
	ClearWaitAll(2000, 1000);

//�􄪃٤��Z����������ʣӣ�
	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	OnBG(100,"bg004_�ɤӤ���a_01.jpg");
	CreateSE("SE01","se����_�z_װ��03");
	CreateSE("SE01a","se���L_�Ɖ�_�z05");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	FadeDelete("�}��ܞ", $�Еr�g, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md01/0060540a01">
���������š�����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0060550a15">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����g
	StL(1000, @0, @0,"cg/st/st��g_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw��g_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//����g��
<voice name="��g" class="��g" src="voice/md01/0060560b50">
��������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060570b30">
������һ���䴩����֮����
����ʹ�������ã�������һ���ǰ����
��������ˡ���

{	FwC("cg/fw/fw��g_ͨ��b.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0060580b50">
���š���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060590b30">
���겻����Ϊ������ߵĺ󱸾��������𣿡�

{	FwC("cg/fw/fw��g_ͨ��b.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0060600b50">
���ǰ�����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060610b30">
�������������𡣡�

{	FwC("cg/fw/fw��g_ͨ��b.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0060620b50">
����Ϊ�����ָı��ˡ�
������ľ���ŵ����Ĺ���Ͷ���˼�Ұ��
��������������ֻ��ܵ��ϳ�֧�䡣��

//����g��
<voice name="��g" class="��g" src="voice/md01/0060630b50">
����������һ���׼���Ϊ����ع��ϳ�����

{	FwC("cg/fw/fwʼ�����_ŭ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060640b30">
���겻�����𣬱��䣡��

{	FwC("cg/fw/fw��g_ͨ��b.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0060650b50">
��������

{	FwC("cg/fw/fwʼ�����_ŭ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060660b30">
�����������˵�����
�����Ϊ�ˡ�����˱�����������!!��

{	FwC("cg/fw/fw��g_���d.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0060670b50">
�����������𡣡�

//����g��
<voice name="��g" class="��g" src="voice/md01/0060680b50">
��ֱ����ʱ֮ǰ���һ������Լ����ҳ��ء�
����ʹ�ľ�����ս�ܶ�����Ҳ���������ڵз�
����͵��������

{	FwC("cg/fw/fw��g_ͨ��b.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0060690b50">
��������ʱ������������ƽ�������
������Χ��������뵽һ��ȫ�����޷���
���ɲ�ǡ���

{	FwC("cg/fw/fw��g_ͨ��a.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0060700b50">
��ͻȻ���·�˪ѩ�ܽ�һ�㣬�Ҳ���������
�����ֶ����ļ�ֵ�ˡ���
�����Һ��ҵ�һ��Ϊ�˶���������Ŀ����𡭡���

//����g��
<voice name="��g" class="��g" src="voice/md01/0060710b50">
��������Ǹ����
���ҵ�����������̶ֳȡ����ƺ���������Ʒ
���ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwʼ�����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060720b30">
��������

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060730b30">
����ͽ����
����ͽ������

{	FwC("cg/fw/fwʼ�����_ŭ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060740b30">
���ɶ����ͽ!!��

{	FwC("cg/fw/fw��g_���d.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0060750b50">
��������

{	FwC("cg/fw/fw��g_ͨ��b.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0060760b50">
���ҵ������Ҳ��ۡ�
�����Ǵ�������Ҫ����������ӡ���

//����g��
<voice name="��g" class="��g" src="voice/md01/0060770b50">
������û�а취���¡�����

{	FwC("cg/fw/fwʼ�����_ŭ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060780b30">
��˵ʲôû�а취��
������������У���Ȼ��������������Ҫ�Ծ�
�������ǽ��嵱Ȼ��Ҫ�᳹�ɣ���

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060790b30">
������Ȼ������콣���������?!
�������ˡ����Ѿ�������������ӣ�Ҳ������
��ͬ��!!��

{	FwC("cg/fw/fw��g_���d.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0060800b50">
������������
��������Ӱ�����

{	FwC("cg/fw/fw��g_ͨ��b.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0060810b50">
��������������������������Ϻ�ģ�
�������˺��ӡ���

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060820b30">
������������

{	FwC("cg/fw/fw��g_ͨ��b.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0060830b50">
�����ң��Ǻ��ӱ����������ʡ�
��������ú��ӻ�������ȥ���콣�С�����������

//����g��
<voice name="��g" class="��g" src="voice/md01/0060840b50">
����ѡ����ǰ�ĺ��ӣ�����Զ���ļ��ˡ���
������֮��������ӽ��Լ����������Ϊ������

//����g��
<voice name="��g" class="��g" src="voice/md01/0060850b50">
�����������������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0060860b30">
����������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_007.nss"