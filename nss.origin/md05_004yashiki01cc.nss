
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004yashiki01cc.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg051_�����Ҿ��g_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($md05_���LĿ==true){$����Ŀ�ģ�_Flag = true;}
	else{$����Ŀ��_Flag = true;}

	$PreGameName = $GameName;
	$GameName = "md05_004yashiki01.nss";
	//�Ƅ��Ȥρ����Ǥ������M�ߤ���r������ԭ�_�J

}

scene md05_004yashiki01cc.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg051_�����Ҿ��g_01.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);

	Delete("�ϱ���");



..//������ָ��
//ǰ�ե����롡"md05_004yashiki01c.nss"


//��Ŀ�Ĥ���
//���ե饰���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���ڶ����A

if($md05_���LĿ==true){

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����ҡ�
<voice name="����" class="����" src="voice/md05/004ya0070b52">
���ػ��⡣
����Ϊ�˶�����Ϊ�˶�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰�{��
//��$����Ŀ�ģ�_Flag = true;

}else{

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//����һ���A

	SetFwC("cg/fw/fw����_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����ҡ�
<voice name="����" class="����" src="voice/md05/004ya0060b52">
�����ְ������ػ��ն����塣
������Ҫ���������������ص���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰�{��
//��$����Ŀ��_Flag = true;

}//else_end

..//������ָ��
//�Υե�����

}


