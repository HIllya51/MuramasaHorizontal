
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vsc.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mc04_017vsc.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_017vs.nss"

//�������
	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}����08EX", 5800, @0, @0, "cg/ev/ev186_�����֣�㑷�_k.jpg");

	Delete("�ϱ���");



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ԡ��������У�

{	SetVolume("@mbgm*", 2000, 0, null);}
�����������츳���ˣ����Ǵﵽ������������߱�����
�֡���<RUBY text="�ӣ�����ӣ����">���о�</RUBY>��
�����˽���������⣬��û�л�·��

���Ҽ��о��񣬳��Կ�������δ֪������


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_냇��_�k��02", 1000);

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 2000, 1000, null, true);

	Wait(2000);

	SoundPlay("@mbgm12",0,1000,true);

	CreateTextureSP("���å�������", 5900, @0, @0, "cg/ef/ef036_�o�Ҥξ���.jpg");
	Delete("�}����08EX");

	CreateColorSP("�·�", 100, "BLACK");

	WaitKey(1500);

	FadeDelete("�}ɫ��", 3000, true);

	Wait(2000);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mc04/017vs0800a01">
�������������İ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥ�󡢤�����`��������
	CreateSE("SE01","se���L_����_Ұ̫�����01");
	CreateColorSP("�}ɫ�\", 6050, "#000000");
	SL_rightdown2(6100,@0, @0,1500);

	MusicStart("SE01",0,1000,0,1200,null,false);
	SL_rightdownfade2(10);

	Wait(500);

	SetVolume("@mbgm*", 300, 0, null);
	OnSE("se���L_����_���̤���05", 1000);

	CreateColorSP("��", 16000, "#990000");
	DrawTransition("��", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("��",2000,true);

	ClearWaitAll(1500, 0);


//�����`�४�`�Щ`

}

..//������ָ��
//�Υե�����