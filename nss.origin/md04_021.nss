//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_021.nss_MAIN
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
	#bg002_��a_02=true;
	#ev806_�����}����`�����Σ�_a=true;
	#bg084_�w�д�Ş��_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_022.nss";

}

scene md04_021.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_020.nss"


//��Ϧ��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	CreateTextureSP("��", 1500, -500, -200, "cg/bg/resize/bg002_��a_02.jpg");
	Zoom("��", 0, 800, 800, null, true);
	CreateTextureSP("�w�д�", 150, @0, @0, "cg/ev/ev806_�����}����`�����Σ�_a.jpg");
	Zoom("�w�д�", 0, 1050, 1050, null, true);
	SetBlur("�w�д�", true, 1, 500, 200, false);
	OnBG(100, "bg002_��a_02.jpg");
	FadeBG(0, true);

$��`�ץ�`�֥ʥå��� = "@�w�д�";
$��`�ץ�`�֥����� = 15000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����", Start);

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1200,@600,null,true);
	Request("�}Cloud1*", AddRender);

	SoundPlay("@mbgm12", 0, 1000, true);

	CreateSE("SE01","se���L_����_��ͻ�M05");
	MusicStart("SE01",2000,500,0,100,null,true);


	Delete("�ϱ���");

	Move("��", 5000, -200, @0, null, false);

	FadeDelete("�\Ļ��",1500,true);
	Wait(1500);

//��Ħ����
	FadeDelete("��", 1000, true);

	Wait(500);

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_Ħ����.png",null);
	Wait(2500);


//���ƥ�åס������w��Ş��Ħ���ԡ���
	CreateColorSP("�\Ļ��", 5000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CloudZoomDelete(0,true);
	Delete("��");
	Delete("�w�д�");
//	CreateTextureEX("�ƥ�å�", 16000, @350, @500, "cg/sys/Telop/tp_Ħ����.png");
//	Fade("�ƥ�å�", 1000, 1000, null, true);

	OnBG(100, "bg084_�w�д�Ş��_02.jpg");
	FadeBG(0, true);
	WaitKey(1000);
//	FadeDelete("�ƥ�å�", 2000, true);



	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");



	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�S�����١�
<voice name="����㣯�S������" class="����������" src="voice/md04/0210010e100">
�����£�
�����Ͼ͵������Ͽ��ˣ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0210020a06">
�������ֻ�������!?��

{	NwC("cg/fw/nw����.png");}
//������㣯�S�����١�
<voice name="����㣯�S������" class="����������" src="voice/md04/0210030e100">
�������ڣ�
����Ȼ�����·磬�����ڿ�ս�У���

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0210040a06">
�������ã���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearFadeAll(1000,true);

}

..//������ָ��
//�Υե����롡"md04_022.nss"