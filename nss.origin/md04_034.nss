//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_034.nss_MAIN
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
	#bg009_�`�}סլ��a_01=true;
	#bg104_���ӘS������󴬷���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_035.nss";

}

scene md04_034.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md04_033.nss"


//���`�}


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg009_�`�}סլ��a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md04/0340010a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����峿��ʼ���Ե���Щ���Ծ������գ�
������������һĿ��Ȼ��
�����������Բ�ͬ��

�����˱������Σ��ɱ��΢΢������
�������ڳ����ʿ���ǣ����齥�����˷ܺͽ��ţ����
����Ͱ��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���󴬷���


	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg104_���ӘS������󴬷���_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ǰ�ߡ�
�����Ʊ���֮ǰ����ģ���С����ɢ��

�����ģ����ǣ���سǷ�������㹻�ġ�
�����������Խ�һ��չ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md04/0340020a01">
������Ҫ�˱��𡭡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ֻ����Ϊ������Ϊ�˶���׼����

����ŷ�����ʲô�°ɡ�
����˵ս���ӽ��ƾ����У������Ƿ�Ӧ���������ơ�

���Ǳ����˴Ӻ󷽶��˲���֮�����
�����������������Ļ����Եò���������

��ʵ�����벻ͨ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md04/0340030a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����Ǹ��û��ᡣ

�����ڵĻ��������ս������ƽ��������
��
�����ܻ�������ǡ�

���ܵ����������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ƅ�

	OnSE("se����_����_�ߤ�01_L", 1000);


	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	SetVolume("@OnSE*", 1000, 0, null);



	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_035.nss"