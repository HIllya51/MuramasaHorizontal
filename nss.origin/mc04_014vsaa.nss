
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vsaa.nss_MAIN
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
	#ev187_㑷�������_h=true;
	#ev187_㑷�������_g=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mc04_014vsaa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc04_014vsa.nss"

//���ġ�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 100, "BLACK");

	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("�}����09EX", 4101, @0, @0, "cg/ev/ev187_㑷�������_i.jpg");
	Request("�}����09EX", Smoothing);
	Zoom("�}����09EX", 0, 1100, 1100, null, true);

	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���޿��κΣ�
�����������ܾ��ˡ�

�����˵Ļ����ҿ��Ի����������һ��ܴ�����ˣ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����đҤ������夤�`��
	OnSE("se���L_����_�����02", 1000);
	CreateTextureSP("�}�݄���", 11000, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");

//��С��������
	WaitKey(800);

	CreateTextureSP("�}����09EX", 4101, @0, @0, "cg/ev/ev187_㑷�������_f.jpg");

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0630a00">
��!?��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ָС���
��
{	Wait(500);
FadeDelete("�}�݄���", 1000, false);}
������������������������û�У�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��露�֣�
	CreateTextureSP("�}����09", 4300, @0, @0, "cg/ev/ev187_㑷�������_f.jpg");
	Delete("�}����09EX");

//���ܤ䤱��֣㣺�����Ȥ꣦Ƭ��
	CreateTextureEX("�}����10", 4400, @0, @0, "cg/ev/ev187_㑷�������_h.jpg");
	Fade("�}����10", 2000, 1000, null, true);

//�����_��֣⣺�����Ȥ꣦Ƭ��
	CreateTextureEX("�}����11", 4500, @0, @0, "cg/ev/ev187_㑷�������_g.jpg");
	Fade("�}����11", 2000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������������������������������������������������
������������������������������������������������
������������������������������������������������
�����������������������������������������������ˡ�

���ұ�ƭ�ˡ�
�����ˡ��������������̫���ĵ��⡣
���������廹����ԭλ��

������Ϊ����ǰ��������������ǰն�������ҵĹ�����
�����ڿ��л�����
���ҵĹ��������ӵ����ؼ��ϲ�����û������κ����ˡ�

�����ǡ�

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 300, 0, null);

//����ͻ
	CreateColorSP("�}ɫ�\", 20050, "#000000");
	SL_centerin2(21000,@0, @0,1000);
	OnSE("se���L_����_�����05", 1000);
	SL_centerinfade2(10);

//�������`��
	OnSE("se���L_����_���̤���05", 1000);

	CreateColorSP("��", 21100, "#990000");
	DrawTransition("��", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("��", 2000, true);

	ClearWaitAll(1500, 0);

//�����`�४�`�Щ`�������ȥ�ء�

}

..//������ָ��
//�Υե�����