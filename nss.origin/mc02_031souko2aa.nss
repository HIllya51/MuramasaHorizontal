
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2aa.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg081_�w�д�����Bb_01b=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_031rouka2.nss";

//	$Next_GameName = $GameName;
//	$GameName = "mc02_031time.nss";

}

scene mc02_031souko2aa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_031souko2a.nss"


//���޷�ľ

//���ɥ��_�����w���z��
//��}�죲����ʿ
//����һ�W���Ѥ��`��

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg081_�w�д�����Bb_01b.jpg");
	CreateSE("SE01","se�ճ�_����_���_��07");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�ϱ���", 150, 100, "circle_01_00_1", true);
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

	OnSE("se�M��_���ߥ���_Ź��02",1000);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	WaitKey(100);
	Delete("�}ɫ��");

	SetNwC("cg/fw/nw�������.png");
	//SetNwC("cg/fw/nw��ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�}���ʿ��
<voice name="����㣯�}���ʿ" class="����������" src="voice/mc02/031so0240e145">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��󡣱�ʿ�����
	CreateSE("SE02","se����_�n��_ܞ��03");
	MusicStart("SE02",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������������ʰ���ˡ�
��������̫��Ѩ��ʿ�����ڵ��ϣ����Ű��ۡ�

��������Ϊ�������Ƶúã�û����������˺���
�ܿ�ͻ������İɡ�
����Ѹ��Ѳ���˲ֿ⡣�������Ӷ���Ҳ�������ڣ�
Ч���ҵ��ж���

�������ƺ�ʲô��û�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ", 15000, "BLACK");
	DrawTransition("�\Ļ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//���������£�

..//������ָ��
//�Υե����롡"mc02_031rouka2.nss"

}

