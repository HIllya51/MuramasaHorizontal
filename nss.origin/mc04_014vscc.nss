
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vscc.nss_MAIN
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
	#ev187_㑷�������_g=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mc04_014vscc.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_014vsc.nss"

	//$Flag_mc04_014vsc = "��";

//������
	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("�}����09EX", 4101, @0, @0, "cg/ev/ev187_㑷�������_i.jpg");
	Request("�}����09EX", Smoothing);
	Zoom("�}����09EX", 0, 1100, 1100, null, true);

	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����Ӧ��ת����档
��Ȼ���ڵ�ָ����֮ǰ��ǰ��ն���Ϳ���ʤ����


</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ƅӡ������ˡ�
if($Flag_mc04_014vsc == "��"){
	CreateSE("SE01","se����_����_���S01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("�}����09*");

	CreateTextureSP("�}�ݱ���", 100, -754, -400, "cg/bg/resize/bg090_���Bۡͨ·a_01l.jpg");
	SetBlur("�}�ݱ���", true, 3, 500, 30, false);

	Move("�}�ݱ���", 450, -270, @0, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

	Wait(300);

	}else if($Flag_mc04_014vsc == "��"){
	CreateSE("SE01","se����_����_���S01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	Delete("�}����09*");

	CreateTextureSP("�}�ݱ���", 100, -270, -400, "cg/bg/resize/bg090_���Bۡͨ·a_01l.jpg");
	SetBlur("�}�ݱ���", true, 3, 500, 30, false);

	Move("�}�ݱ���", 450, -754, @0, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_0", true);

	Wait(300);
	}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ӵ���ǰ�桪��������

��Ȼ��ͣ�أ�һ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw㑷�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0690a06">
���ӿ��ˡ�����

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0700a06">
����������Ϊ�Լ��ӿ��ˣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0710a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);

	CreateTextureSP("�}��/�}��", 10000, -700, -1060, "cg/ev/resize/ev187_㑷�������_glm.jpg");
	Request("�}��/�}��", Smoothing);
	Zoom("�}��/�}��", 0, 750, 750, null, true);

	Move("�}��/�}��", 2000, -870, @0, Dxl2, false);
	Zoom("�}��", 2000, 1000, 1000, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��Ϊʲô��

��Ϊʲô��<k>����������������������ʨ�Ӻ�<k>
����������֪ʲôʱ��<k>�������������֣�<k>
������������������������������������������С������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ө`�ࡣͶ�S
	CreateTextureEX("�|��", 10010, @0, @0, "cg/ef/ef038_�������.jpg");
	Rotate("�|��", 0, @180, @0, @0, null,true);
	Zoom("�|��", 0, 1050, 1050, null, true);
	Request("�|��", Smoothing);

	OnSE("se���L_����_�|��Ͷ��01", 1000);
	Fade("�|��", 0, 1000, null, true);
	DrawTransition("�|��", 150, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Delete("�}��*");

	Wait(200);

//�������`��Ѫ
	SetVolume("@mbgm*", 300, 0, null);

	Delete("�|��");

	OnSE("se���L_����_���̤���05", 1000);

	CreateTextureSPmul("�}������", 5010, Center, Middle, "cg/anime/Left/blood_C_6.png");

	CreatePlainEX("�}��д", 9990);
	Wait(10);
	FadeFR2("�}��д",0,500,500,@0,@0,40,Dxl2, true);
	Delete("�}��д");

	ClearWaitAll(2000, 0);

//�����`�४�`�Щ`

}

..//������ָ��
//�Υե�����