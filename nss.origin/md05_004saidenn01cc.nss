
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004saidenn01cc.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg054_�����Ҽ���a_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName

	if($md05_���LĿ==true){$����Ŀ�ģ�_Flag = true;}
	else{$����Ŀ��_Flag = true;}

	$PreGameName = $GameName;

	$GameName = "md05_004saidenn01.nss";
	//�Ƅ��Ȥρ����Ǥ������M�ߤ���r������ԭ�_�J

}

scene md05_004saidenn01cc.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_004saidenn01c.nss"


	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);
	StR(1000, @0, @200, "cg/st/3d����֩��_���.png");
	FadeStR(0, true);
	Delete("�ϱ���");




//��Ŀ�Ĥ���
//���ե饰���


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���ڶ����A

if($md05_���LĿ==true){

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md05/004sa0090a01">
������ս����������

//��������
<voice name="����" class="��������" src="voice/md05/004sa0100a01">
���ԣ���Ҳ��������һ�𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰�{��
//��$����Ŀ�ģ�_Flag = true;


}else{


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//����һ���A

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md05/004sa0070a01">
�����Ŀ�ģ�
��������Ǹ���Ҳ�֪������

//��������
<voice name="����" class="��������" src="voice/md05/004sa0080a01">
������Ŀ�ġ���
���ԣ���ҲӦ����Ŀ�ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰�{��
//��$����Ŀ��_Flag = true;

}//else_end

..//������ָ��
//�Υե�����


}


