
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004hazure01cb.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg050_�������Tǰ_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$�y�Է�_Flag = true;

	$PreGameName = $GameName;
	$GameName = "md05_004hazure01.nss";
	//�Ƅ��Ȥρ����Ǥ������M�ߤ���r������ԭ�_�J

}

scene md05_004hazure01cb.nss
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

..//������ָ��
//ǰ�ե����롡"md05_004hazure01c.nss"


//���Է֤���

	SetFwC("cg/fw/fw�y_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���y��
<voice name="�y" class="�y" src="voice/md05/004ha0050b46">
�������ҵĶ��ӡ�
����Ȼ���鷳���������������Ժ��ĺ��ӡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰�{��
//��$�y�Է�_Flag = true;

..//������ָ��
//�Υե�����

}


