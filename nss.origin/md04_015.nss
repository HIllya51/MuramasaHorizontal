//<continuation number="130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_015.nss_MAIN
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
	#bg027_���ӘS�u�h���g_01=true;
	#bg104_���ӘS������󴬷���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_016.nss";

}

scene md04_015.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_014.nss"


//�����ӘS


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/resize/bg026_���ӘSɽ��a_01l.jpg");
	Request("�}����100", Smoothing);
	Zoom("�}����100", 0, 800, 800, null, true);

	Move("�}����100", 8000, @100, @50, null, false);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);

	Wait(500);

//�����ߣ�ӳ����Ļ�ݳ�

	LockVideo(true);

	SetFont("@����", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("��Ļ01",30411,Center,inherit,auto,auto,"һ����һ��");
	Fade("��Ļ01", 0, 0, null, true);
	Request("��Ļ01",NoLog);
	Request("��Ļ01",PushText);
	Rotate("��Ļ01", 0, @0, @0, 90, null, false);
	Move("��Ļ01", 0, @300, @10, null, false);
	SetBacklog("һ����һ��", null, null);

	SetFont("@����", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("��Ļ02",30411,Center,inherit,auto,auto,"�����ʱ��һ��");
	Fade("��Ļ02", 0, 0, null, true);
	Request("��Ļ02",NoLog);
	Request("��Ļ02",PushText);
	Rotate("��Ļ02", 0, @0, @0, 90, null, false);
	Move("��Ļ02", 0, @250, @10, null, false);
	SetBacklog("�����ʱ��һ��", null, null);

	LockVideo(false);


	Fade("��Ļ*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("��Ļ*", 300, 0, null, true);

/*
��
������������������һ����һ��
�����������������������ʱ��һ��
*/

	FadeDelete("�}����100", 1000, true);

	Wait(500);
	StR(1000, @0, @0, "cg/st/st�x��_ͨ��_˽��.png");
	FadeStR(300, true);

	Delete("��Ļ*");

	SetFwC("cg/fw/fw�x��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���x�塿
<voice name="�x��" class="�x��" src="voice/md04/0150010b21">
����ɮ��
�������ٶȿ�ʼ�����ˣ���

{	StCL(1000, @0, @0, "cg/st/stͯ��_ͨ��_˽��a.png");
	FadeStCL(300, false);
	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0150020a09">
���ǡ��ǡ��ǡ���
������Ϊ�������һͬ����أ���ͦ
<RUBY text="������">������</RUBY>���������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0150030a09">
���������ҩ��Ч�˰ɡ�
��ʲô�������Կ�������

{	FwC("cg/fw/fw�x��_����.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/md04/0150040b21">
�������Ǹ���
����ˡ��ð����һ�䡣��

//���x�塿
<voice name="�x��" class="�x��" src="voice/md04/0150050b21">
�������޻�Ӯ�𣿡�

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0150060a09">
�������š���
��Ϊ�������Ľ�㣬Ҳ����ʤ������

{	FwC("cg/fw/fw�x��_Ц��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/md04/0150070b21">
����ɮ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��Ф��Ф�
	CreateSE("�ߤ�", "se����_����_�ߤ�07");
	MusicStart("�ߤ�", 1000, 1000, 0, 1000, null,false);

	Wait(1500);
	SetVolume("�ߤ�", 300, 0, null);

	OnSE("se�ճ�_����_���_��07",800);

	Wait(500);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯���
<voice name="����㣯����" class="����������" src="voice/md04/0150080e223">
�����£�
�������н����£���

{	FwC("cg/fw/fw�x��_ŭ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/md04/0150090b21">
���������񣡡�

{	NwC("cg/fw/nw����.png");}
//������㣯���
<voice name="����㣯����" class="����������" src="voice/md04/0150100e223">
��ˡ��ʧ��
���źӴ�����������

//������㣯���
<voice name="����㣯����" class="����������" src="voice/md04/0150110e223">
���ǹźӵġ����������!!��

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0150120a09">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���󴬷���


	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);
	OnBG(100, "bg104_���ӘS������󴬷���_01.jpg");
	FadeBG(0, true);


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	SetFwC("cg/fw/fw�׵�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0150130a08">
������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

}

..//������ָ��
//�Υե����롡"md04_016.nss"