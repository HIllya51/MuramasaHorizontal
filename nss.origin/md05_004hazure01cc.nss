
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004hazure01cc.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg050_�������Tǰ_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName

	if($md05_���LĿ==true){$�yĿ�ģ�_Flag = true;}
	else{$�yĿ��_Flag = true;}

	$PreGameName = $GameName;
	$GameName = "md05_004hazure01.nss";
	//�Ƅ��Ȥρ����Ǥ������M�ߤ���r������ԭ�_�J

}

scene md05_004hazure01cc.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_004hazure01c.nss"


	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg050_�������Tǰ_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("�ϱ���");

//��Ŀ�Ĥ���
//���ե饰���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���ڶ����A

//��Ŀ�Ĥ���

if($md05_���LĿ==true){



	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���y��
<voice name="�y" class="�y" src="voice/md05/004ha0070b46">
�����ܰ�����ֹ���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰�{��
//��$�yĿ�ģ�_Flag = true;

}else{

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//����һ���A



	SetFwC("cg/fw/fw�y_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���y��
<voice name="�y" class="�y" src="voice/md05/004ha0060b46">
������ֻҪ����Լ�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰�{��
//��$�yĿ��_Flag = true;

}


..//������ָ��
//�Υե�����

}


