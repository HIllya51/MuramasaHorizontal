
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004hazure01b.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($md05_���LĿ == true){call_scene @->md05_004hazure01b_03.nss;}
	else if($md05_���LĿ == true){call_scene @->md05_004hazure01b_02.nss;}
	else{call_scene @->md05_004hazure01b_01.nss;}

	$PreGameName = $GameName;
	$GameName = "md05_004hazure01.nss";
	//�Ƅ��Ȥρ����Ǥ������M�ߤ���r������ԭ�_�J

}

scene md05_004hazure01b.nss
{

..//������ָ��
//ǰ�ե����롡"md05_004hazure01.nss"

//��Ԓ��
//���ե饰���

}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���������A
scene md05_004hazure01b_03.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg050_�������Tǰ_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");

	SetFwC("cg/fw/fw�y_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���y��
<voice name="�y" class="�y" src="voice/md05/004ha0030b46">
����ѽ��
��������з����أ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���ڶ����A
scene md05_004hazure01b_02.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg050_�������Tǰ_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(0,true);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw�y_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���y��
<voice name="�y" class="�y" src="voice/md05/004ha0020b46">
�����ó��緹������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//����һ���A
scene md05_004hazure01b_01.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg050_�������Tǰ_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(0,true);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw�y_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���y��
<voice name="�y" class="�y" src="voice/md05/004ha0010b46">
����ô�ˣ�
��һ����·С���ı��顣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//������ָ��
//�Υե�����

}


