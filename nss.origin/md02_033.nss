//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_033.nss_MAIN
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
	#bg008_����_01=true;
	#bg007_��m��·a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_034.nss";

}

scene md02_033.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md02_032.nss"


//������


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg008_����_01.jpg");
	FadeBG(0, true);
	StC(1000, @0,@0,"cg/rec/stRec_�㿗_�Գ�.png");
	FadeStC(0,true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",0,true);

	StC(1000, @0,@0,"cg/rec/stRec_�㿗_�˥å���.png");


	SoundPlay("@mbgm29", 0, 1000, true);

	FadeStC(300,false);
	SetNwH("cg/fw/ny���ZȾ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�ҥ���ǡ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0330010e017">
��̫���ˣ�
���ܹ��;�����һ���ȥ����

{	FwH("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0330020a00">
������������

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���������Լ����ľ�����ȴ���ֱ�ƭ�˵ĸо���
������˼�顣

����Ȼ�Ѿ���Ӧ�ˣ��Ǿͱ���һ���ȥ����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѧУǰ

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("@OnBG*");
	OnBG(100, "bg007_��m��·a_02.jpg");
	FadeBG(0, true);

	StC(1000, @0,@0,"cg/rec/stRec_�㿗_ͨ��.png");
	FadeStC(0,true);

	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	SetFwH("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md02/0330030a00">
����Ҹ����ұߵĶ԰ɡ���

{	NwH("cg/fw/ny���ZȾ.png");}
//������㣯�ҥ���ǡ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0330040e017">
���š���

{	FwH("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0330050a00">
���Ҽ�����ߡ�
���ǣ��ټ�����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStC(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����Ƿֱ��ˡ�

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500,1500);

}

..//������ָ��
//�Υե����롡"md02_034.nss"