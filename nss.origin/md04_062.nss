//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_062.nss_MAIN
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
	#bg063_���ӘS��������_02=true;
	#bg073_��b_02=true;
	#bg002_��a_02=true;
	#ev237_�դ˕N�ä�����_a=true;
	#ev238_�����̫ꖤ��¤Ƚ���_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_001.nss";

}

scene md04_062.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_061.nss"


//�����ڡ�����


	PrintBG("�ϱ���", 30000);
	CreateColorSP("��", 5000, "WHITE");


	OnBG(100, "bg063_���ӘS��������_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm01", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("��",4500,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md04/0620010a01">
����������ʲô���ˡ�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0620020a00">
�������ö࡭������������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0620030a07">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۥ磻�ȥޥ�����
	OnSE("se����_냇��_�k��04", 1000);

	CreateColorEXadd("��", 16000, "WHITE");
	Fade("��", 1000, 200, null, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md04/0620040a01">
�����������������ϱߣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0620050a00">
����ģ����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̫ƽ����
//���Ǥä��������
/*
	CreateTextureEX("��", 5000, @0, @0, "cg/bg/bg073_��b_02.jpg");
	Fade("��", 1000, 1000, null, true);

	WaitKey(1000);
*/

	CreateTextureEX("�ⴵ���Ϥ�ǰ", 15000, 0, 0, "cg/bg/bg073_��a_02.jpg");
	CreateTextureEX("�ⴵ���Ϥ�ǰ�e��", 15000, 0, 0, "cg/bg/bg073_��a_02.jpg");

	CreateTextureEX("�ⴵ���Ϥ���", 15000, 0, 0, "cg/bg/bg073_��b_02.jpg");
	CreateTextureEX("�ⴵ���Ϥ���e��", 15000, 0, 0, "cg/bg/bg073_��b_02.jpg");
	SetBlur("�ⴵ���Ϥ���e��", true, 2, 300, 100, false);


	Fade("�ⴵ���Ϥ�ǰ", 300, 1000, null, false);
	Fade("�ⴵ���Ϥ�ǰ�e��", 1500, 1000, null, false);
	Shake("�ⴵ���Ϥ�ǰ�e��", 1500, 0, 10, 0, 0, 1000, Axl3, false);

	Wait(1000);
	Fade("�ⴵ���Ϥ���*", 0, 1000, null, true);

	OnSE("se����_������_�����Ϥ�������", 1000);
	EffectZoomadd(17000, 1000, 100, "cg/bg/bg073_��b_02.jpg", false);
	Delete("�ⴵ���Ϥ�ǰ");
	Delete("�ⴵ���Ϥ�ǰ�e��");
	FadeF4("�ⴵ���Ϥ���e��", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("�ⴵ���Ϥ�02b", 600, false);

	WaitKey(2000);
	Delete("�ⴵ���Ϥ���e��");

//�����ڡ�����
	Fade("��", 1000, 400, null, false);
	FadeDelete("�ⴵ���Ϥ���",1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ģ�塪��
���������ڸ�Զ��̫ƽ������

������ߴ�Ĺ����εض���

���߸ߵġ�ֱ��������������ߴ���
����ֱ��Ҫ��ʲô����������ľ�ͷһ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("��", 1000, 0, null, true);

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0620060a07">
���������ˡ�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0620070a00">
��ʲô��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0620080a07">
�������ˡ�
���������¡�����������֮������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md04/0620090a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0620100a01">
������������

//��������
<voice name="����" class="��������" src="voice/md04/0620110a01">
������������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0620120a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0620130a01">
���졢���ϡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ϧ�դ�Ϧ��

	CreateTextureEX("��", 1050, @0, @0, "cg/bg/bg002_��a_02.jpg");
	CreateTextureEX("����", 1100, -512, -300, "cg/ev/resize/ev237_�դ˕N�ä�����_bl.jpg");
	CreateTextureEXadd("����add", 1100, -512, -300, "cg/ev/resize/ev237_�դ˕N�ä�����_bl.jpg");
	CreateTextureEX("Ϧ��", 1100, @0, @0, "cg/ev/ev237_�դ˕N�ä�����_a.jpg");


//�����饤��
//���i�����塣݆�����\�פΤ褦�ʰ��򣿡�Ҫ���]��

//CGԔ������ޤǱ�����inc�Ѿ�

	Fade("��", 1000, 1000, null, true);
	Wait(1000);

	Move("����*", 8000, @0, 0, null, false);
	Fade("����add", 2000, 500, null, false);
	Fade("����", 2000, 1000, null, true);

	Fade("����add", 2000, 200, null, true);
	Fade("����add", 1000, 600, null, true);

	Fade("Ϧ��", 2000, 1000, null, true);

	Wait(1000);



	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md04/0620140a00">
��������������������������������

//��������
<voice name="����" class="����" src="voice/md04/0620150a00">
��̫����̫����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��̫����������<RUBY text="��������">����һ��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0620160a07">
������������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0620170a07">
�������ǻƽ������Ӵ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���ãǣ�����
//�����������
//�������¡�̫ꖡ��������i����


	SetVolume("@mbgm*", 1000, 0, null);
	CreateColorEXadd("�}ɫ100", 15000, "WHITE");
	Fade("�}ɫ100", 1000, 1000, null, true);

	Delete("����*");
	Delete("Ϧ��");

	CreateTextureSPadd("�}����100", 1500, Center, Middle, "cg/data/circle_04_00_1.png");
	CreateTextureSP("����", 1300, -512, 0, "cg/ev/resize/ev238_�����̫ꖤ��¤Ƚ���_al.jpg");
	Request("����", Smoothing);

	Move("@����", 60000, @0, -798, null, false);
	Zoom("@����", 60000, 500, 500, null, false);
	Zoom("�}����100", 10000, 1200, 1200, null, false);

	FadeDelete("�}����100", 10000, false);
	FadeDelete("�}ɫ100", 5000, false);

	SoundPlay("@mbgm37", 0, 1000, true);

//����������
	CreateTextureEX("Gin_song01", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh01.png");
//������г�Ц
	CreateTextureEX("Gin_song02", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh02.png");

	Wait(5000);

	Move("Gin_song01", 0, @0, @-40, null, true);
	Move("Gin_song02", 0, @0, @+10, null, true);

	Move("Gin_song01", 1000, @0, @-10, null, false);
	Fade("Gin_song01", 1000, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song02", 1000, @0, @-10, null, false);
	Fade("Gin_song02", 1000, 1000, null, true);

	WaitKey(5000);

	Delete("Gin_song*");


//�􍹤�ҹ��
	CreateTextureEX("Gin_song03", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh03.png");
//���¤����z��
	CreateTextureEX("Gin_song04", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh04.png");
//��ľ©���դ���
	CreateTextureEX("Gin_song05", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh05.png");
//�������餮����
	CreateTextureEX("Gin_song06", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh06.png");
//��������ζ
	CreateTextureEX("Gin_song07", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh07.png");
//�����οֲ�
	CreateTextureEX("Gin_song08", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh08.png");
//�������Ά�����
	CreateTextureEX("Gin_song09", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh09.png");
//���������Ť�
	CreateTextureEX("Gin_song10", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh10.png");
//������ӻ��Ұ���Y����
	CreateTextureEX("Gin_song11", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh11.png");
//�����ޤ���Τʤ�
	CreateTextureEX("Gin_song12", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh12.png");


	Move("Gin_song07", 0, @0, @-40, null, true);
	Move("Gin_song06", 0, @0, @-80, null, true);
	Move("Gin_song05", 0, @0, @-120, null, true);
	Move("Gin_song04", 0, @0, @-160, null, true);
	Move("Gin_song03", 0, @0, @-200, null, true);
	Move("Gin_song08", 0, @0, @0, null, true);
	Move("Gin_song09", 0, @0, @+40, null, true);
	Move("Gin_song10", 0, @0, @+80, null, true);
	Move("Gin_song11", 0, @0, @+120, null, true);
	Move("Gin_song12", 0, @0, @+160, null, true);

	Move("Gin_song03", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song03", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song04", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song04", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song05", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song05", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song06", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song06", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song07", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song07", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song08", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song08", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song09", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song09", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song10", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song10", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song11", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song11", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song12", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song12", 600, 1000, null, false);

//	WaitKey();

	Fade("Gin_song0*", 500, 0, null, false);
	Fade("Gin_song10", 500, 0, null, false);
	Fade("Gin_song11", 500, 0, null, false);
	Fade("Gin_song12", 500, 0, null, true);

	WaitKey(2000);

	Fade("Gin_song*", 1000, 0, null, true);
	Delete("Gin_song*");



//�������������g�˼���Ц����㱤Ȥ����Ԥ�����롷
//�������ҹ�����·@����犤�������Ļ�褤���Ϥ��졷

	CreateTextureEX("Gin_song15", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh13.png");
	CreateTextureEX("Gin_song16", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh14.png");

	Move("Gin_song15", 0, @0, @-40, null, true);
	Move("Gin_song16", 0, @0, @+10, null, true);

	Move("Gin_song15", 1000, @0, @-10, null, false);
	Fade("Gin_song15", 1000, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song16", 1000, @0, @-10, null, false);
	Fade("Gin_song16", 1000, 1000, null, true);

	WaitKey(5000);

	Fade("Gin_song*", 1000, 0, null, true);
	Delete("Gin_song*");

//�����E���Ф��}�ˤ��\����Ȥ�����äƇI�¤��롷
//���ƽ�ζ���҆����������������R�ȹ��˴��פ���ࡷ
//�����������Ϲ���ΤƐۤ��x�ӼS��������������롷
//���³���������Ѫ��ĸ����Ȥ���ҹ���Ƹ���긯�롷
//�������褳���m�����Ц��ƣ�줿Թ൤��ؤͤơ�
//�������褳��������ŭ�ꤪ�ΤΤ�ϲ�Ӥ���ˡ�
//������������פȄ����B�h�����ؤˤ�����Ƥ褦��
//�����դ�����霤Ⱦ��Ť��ؤ��o���˹���x��������
//������ӻ��Ұ���Y����h���X�����ͤ��l���ᤰ�졷
//�����ޤ���Τʤ��i�♑�����ǰ�ˤ���������K��

	CreateTextureEX("Gin_song15", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh15.png");
	CreateTextureEX("Gin_song16", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh16.png");
	CreateTextureEX("Gin_song17", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh17.png");
	CreateTextureEX("Gin_song18", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh18.png");
	CreateTextureEX("Gin_song19", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh19.png");
	CreateTextureEX("Gin_song20", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh20.png");
	CreateTextureEX("Gin_song21", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh21.png");
	CreateTextureEX("Gin_song22", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh22.png");
	CreateTextureEX("Gin_song23", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh23.png");
	CreateTextureEX("Gin_song24", 1600, Center, Middle, "cg/sys/telop/tp_�y�ǺŤΆh24.png");

	Move("Gin_song19", 0, @0, @-40, null, true);
	Move("Gin_song18", 0, @0, @-80, null, true);
	Move("Gin_song17", 0, @0, @-120, null, true);
	Move("Gin_song16", 0, @0, @-160, null, true);
	Move("Gin_song15", 0, @0, @-200, null, true);
	Move("Gin_song20", 0, @0, @0, null, true);
	Move("Gin_song21", 0, @0, @+40, null, true);
	Move("Gin_song22", 0, @0, @+80, null, true);
	Move("Gin_song23", 0, @0, @+120, null, true);
	Move("Gin_song24", 0, @0, @+160, null, true);

	Move("Gin_song15", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song15", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song16", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song16", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song17", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song17", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song18", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song18", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song19", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song19", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song20", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song20", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song21", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song21", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song22", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song22", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song23", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song23", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song24", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song24", 600, 1000, null, false);

	WaitKey(5000);

	Fade("Gin_song*", 1000, 0, null, true);
	Delete("Gin_song*");

	Wait(1000);

/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����������Ӧ�Ǹ������ҵĿ��⣬�������ʡ���
�����ڳ�Ц�Ļ�ϲ����������ϲ��֮Ļ�ɡ���

����������֮ҹ��ҰȮŭ�ͣ��¶���������
����ů��Ѩ��ĸ����֮�������߸���ϯ���ޱȰ�������
�����⴩͸����������£�����֮ʨ����ǧͷ¹����
����������ˮ��֮���ѣ�����ͯʰ������̤����
�������������֮�˰�������С����ֿ�Ĺ��ɡ���
������������ֲ�֮�˰�����ħ�ļ������Ǻ���֮������
�������������������ʣ�С�����ħ����ճ�Կ�ס�
������������������������С�����ħ���ժ��ñ�ӡ���
��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ���
����񣬶�����ǰ���ּ������������Ǹ���֮���顣��

���������з�䣬��Ц���ң���ȴ�¶���������
���ʽ�����֮̾��Ϊ��������������֮Ļ�ɡ���

�������漣��ʥ������������ܿܿ����֮�񡣡�
���S��֮���İ����������������İ���һ��ͬ���ӵס���
�����������Ĺ�������ȡ������������ڷ���֮�С���
����������Ӥ�������֮ѪΪĸ�飬ʳ֮��ҹ���ø�Ϊʼ����
�����������������޸裬�ص���Ц��ƣ����Թ�ޡ���
���������������⵻�棬���Է�ŭ�������ϲ�á���
�����뽣����֮�������b�������֮��������
��Ϊ�ڰ��뾲�����ػ�������֮�������ᴿ�����ҫ��԰ɡ���
��Ұ�ް�������ɣ���ԭҰ�۳ҡ��質�ţ������ţ���Ұ�ر��ܰɡ���
����񣬶�����ǰ���ּ������������Ǹ���֮���顣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

//���ĥѩ`����
//�����åȥ���ݤ���
	ClearWaitAll(3000, 1000);

	PrintBG("�ϱ���", 10000);
	cut_in_logo(10010,3);

	ClearWaitAll(3000, 2000);

/*
	ClearWaitAll(3000, 3000);

	SetVolume("@mbgm*", 1000, 0, null);
	PrintBG("�ϱ���");

	CreateColorSP("�}ɫ�\", 1, "#000000");

	FadeDelete("�ϱ���",1500,true);

	WaitKey(1000);

	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	CreateTextureSP("����80", 30, Center, Middle, "cg/sys/title/�����ȥ뱳��.png");
	Move("����80", 0, 20, 0, null, false);
	Move("����80", 200, -20, 0, null, false);

	OnSE("se���L_����_��ꪏ���01", 1000);
	CreateTextureEX("����81", 32, Center, Middle, "cg/sys/title/���񥿥��ȥ�logo.png");
	Fade("����81", 300, 1000, null, false);
	
	CreateTextureSPadd("�}����500", 31, Center, Middle, "cg/ef/ef005_����Ѫ�~.jpg");
	Rotate("�}����500", 0, 180, 0, 180, null, true);
	Move("����81", 0, 600, 40, null, false);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//������������������������������������������������

}

..//������ָ��
//�Υե����롡"md05_001.nss"