//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_056.nss_MAIN
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
	#bg069_���ӘS���ڎ��g_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_057.nss";

}

scene md04_056.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_055.nss"


//���ߤ���
//�����Щ`�󡣑����_����
//���������g
//���׵�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");

	OnBG(100, "bg069_���ӘS���ڎ��g_01a.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm35", 0, 1000, true);
	OnSE("se����_����_�z_�}���l���Ĥ�01", 1000);



	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);


	WaitKey(1500);

	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se����_����_�z�i��03",1000);
	OnSE("se�ճ�_����_���饤���_��02", 1000);

	StR(1100, @0, @0, "cg/st/3dϥ��_����_ͨ��.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw�׵�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0560010a08">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("Ѫ01", 5000, @0, @0, "cg/ef/ef007_����Ѫ���֤�.jpg");
	CreateTextureEXadd("Ѫ02", 5100, @0, @0, "cg/ef/ef006_����Ѫ���֤�.jpg");
	Fade("Ѫ01", 1000, 1000, null, false);
	Fade("Ѫ02", 1000, 1000, null, true);

	WaitKey(1000);

	SetFwC("cg/fw/fw�׵�_�䵨.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0560020a08">
�������������ɡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
//���ޤ�����

	FadeDelete("Ѫ*", 1000, true);


	OnSE("se����_����_�ߤ�02", 1000);
	WaitKey(1500);
	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se�ճ�_����_���饤���_��02", 1000);
	WaitKey(1500);
	StL(1000, @0, @0, "cg/st/st�����_��У_ͨ��_�Ʒ�.png");
	FadeStL(300, true);


	SetNwC("cg/fw/nw�߼�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/md04/0560030e284">
���׵����ˣ�
���׵����ˡ�����������!!��

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0560040a08">
��������ô�ˣ���

{	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/md04/0560050e284">
�����������Ͽա���
  ��פ����<RUBY text="Galleykeep">�ط��н�</RUBY>�ֳ�����!!��

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0560060a08">
��<RUBY text="Galleykeep">�ط��н�</RUBY>!?
��ȷ���𣿡�

{	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/md04/0560070e284">
���ǵģ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0560080a08">
���µ���񡭡�����������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"md04_057.nss"