
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoroaa.nss_MAIN
{

//$����_Flag=true;$������ǰ="����";
//$ţ��_Flag=true;$������ǰ="ţ��";
//$����_Flag=true;$������ǰ="����";
//$¹��_Flag=true;$������ǰ="¹��";
//$����_Flag=true;$������ǰ="����";
//$�R��_Flag=true;$������ǰ="����";
//$�~��_Flag=true;$������ǰ="����";
//$����_Flag=true;$������ǰ="з��";
//$����_Flag=true;$������ǰ="ˮ��";
//$Ұ��_Flag=true;$������ǰ="�߲�";
//$����_Flag=true;$������ǰ="����";
//$��������_Flag=true;$������ǰ="˫��������";
//$������ȥ����祦_Flag=true;$������ǰ="������������";
//$�ӥ�`���`_Flag=true;$������ǰ="���ǻ���";

	$������ǰ = "��";
	$�������� = "��";

		if($����_Flag==true){$������ǰ = "�ۼ�����";$��ζ����_Flag=true;$����_Flag=false;$�������� = "031da0080a00";}
		else if($ţ��_Flag==true){$������ǰ = "��ţ��";$��ζ����_Flag=true;$ţ��_Flag=false;$�������� = "031da0090a00";}
		else if($����_Flag==true){$������ǰ = "����ⷹ";$��ζ����_Flag=true;$����_Flag=false;$�������� = "031da0100a00";}
		else if($¹��_Flag==true){$������ǰ = "����¹��";$��ζ����_Flag=true;$¹��_Flag=false;$�������� = "031da0110a00";}
		else if($����_Flag==true){$������ǰ = "���⳴��";$��ζ����_Flag=true;$����_Flag=false;$�������� = "031da0120a00";}
		else if($�R��_Flag==true){$������ǰ = "�����";$��ζ����_Flag=true;$�R��_Flag=false;$�������� = "031da0130a00";}
		else if($�~��_Flag==true){$������ǰ = "�����㳦";$��ζ����_Flag=true;$�~��_Flag=false;$�������� = "031da0140a00";}
		else if($����_Flag==true){$������ǰ = "з�⳴��";$��ζ����_Flag=true;$����_Flag=false;$�������� = "031da0150a00";}
		else if($����_Flag==true){$������ǰ = "��˹����ܽ";$��ζ����_Flag=true;$����_Flag=false;$�������� = "031da0160a00";}
		else if($Ұ��_Flag==true){$������ǰ = "������Ĳ�";$��ζ����_Flag=true;$Ұ��_Flag=false;$�������� = "031da0170a00";}
		else if($����_Flag==true){$������ǰ = "���Ź�";$������_Flag=true;$����_Flag=false;$�������� = "031da0180a00";}
		else if($��������_Flag==true){$������ǰ = "�����ӹ�";$����������_Flag=true;$��������_Flag=false;$�������� = "031da0190a00";}
		else if($������ȥ����祦_Flag==true){$������ǰ = "����������";$�����祦����_Flag=true;$������ȥ����祦_Flag=false;$�������� = "031da0200a00";}
		else if($�ӥ�`���`_Flag==true){$������ǰ = "���ǻ�����������";$�ӥ�`���`����_Flag=true;$�ӥ�`���`_Flag=false;$�������� = "031da0210a00";}

	$��������2 = "voice/mc02/" + $��������;
	$�������� = "mc02/" + $��������;


		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

//���ե饰
//�룺�ե饰���ڻ�
	$��ζ����_Flag = false;
	$������_Flag = false;
	$����������_Flag = false;
	$�����祦����_Flag = false;
	$�ӥ�`���`����_Flag = false;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$mc02_TimeCount = $mc02_TimeCount+30;

	$PreGameName = $GameName;

	$GameName = "mc02_031daidokoroz.nss";

}

scene mc02_031daidokoroaa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc02_031daidokoroa.nss"


//��������
//�����i�������ˌ��ꤷ���ƥ����Ȥ����¤����x�k


//������äݤ��ӣ�

//�룺�����˺Ϥ碌��������09/03/30��
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("�ϱ���");

	OnSE("se�M��_���ߥ���_������02",1000);
	$�Еr�g=RemainTime("@OnSE*");
	WaitKey($�Еr�g);

	SetVolume("@OnSE*", 300, 0, null);

	StR(1000, @60, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	CreateSE("SE01","se����_����_�z�i��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-60, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");
	CreateVOICE("����",$��������);

		if($������ǰ == "�ۼ�����"){SetBacklog("�������ˡ��ۼ����š���", $��������2, ����);}
		else if($������ǰ == "��ţ��"){SetBacklog("�������ˡ���ţ�š���", $��������2, ����);}
		else if($������ǰ == "����ⷹ"){SetBacklog("�������ˡ�����ⷹ����", $��������2, ����);}
		else if($������ǰ == "����¹��"){SetBacklog("�������ˡ�����¹�⡣��", $��������2, ����);}
		else if($������ǰ == "���⳴��"){SetBacklog("�������ˡ����⳴������", $��������2, ����);}
		else if($������ǰ == "�����"){SetBacklog("�������ˡ����������", $��������2, ����);}
		else if($������ǰ == "�����㳦"){SetBacklog("�������ˡ������㳦����", $��������2, ����);}
		else if($������ǰ == "з�⳴��"){SetBacklog("�������ˡ�з�⳴������", $��������2, ����);}
		else if($������ǰ == "��˹����ܽ"){SetBacklog("�������ˡ���˹����ܽ����", $��������2, ����);}
		else if($������ǰ == "������Ĳ�"){SetBacklog("�������ˡ�������Ĳˡ���", $��������2, ����);}
		else if($������ǰ == "���Ź�"){SetBacklog("�������ˡ����Źǡ���", $��������2, ����);}
		else if($������ǰ == "�����ӹ�"){SetBacklog("�������ˡ������ӹ�����", $��������2, ����);}
		else if($������ǰ == "����������"){SetBacklog("�������ˡ����������⡣��", $��������2, ����);}
		else if($������ǰ == "���ǻ�����������"){SetBacklog("�������ˡ����ǻ�������������", $��������2, ����);}

//	SetBacklog("�������ˡ���$������ǰ����", $��������, ����);
	MusicStart("����",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������_Flag == true;
//����ζ����_Flag
//��������
//<voice name="����" class="����" src = $��������>
�������ˡ�
��<VALUE name=$������ǰ>����

</PRE>
	SetTextEXC();
	Request("@text0010",NoLog);
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@����", 0, 0, null);


	DeleteStR(300,true);

//�������⡫Ұ��
//����ζ����_Flag == true;
//���x���ʳ�Ĥ���ӛ�Έ��Ϥ����¤Υƥ�����

if($��ζ����_Flag == true){

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0220a03">
���ۣ�����ܺóԡ���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0230a04">
���˲�������ա���
��ʵ�ڷǳ����壬�ն����ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0240a00">
�����л̿֡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}else if($������_Flag == true){

//������
//��������_Flag == ture;
//���x���ʳ�Ĥ���ӛ�Έ��Ϥ����¤Υƥ�����

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0250a03">
��������ʳ���С���ҡ�������������


{	FwC("cg/fw/fw����_�@��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0260a04">
����ȫ�Ϲ��ˣ���С�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



}else if($����������_Flag==true){


//����������
//��������������_Flag == ture;
//���x���ʳ�Ĥ���ӛ�Έ��Ϥ����¤Υƥ�����

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0270a03">
����ѽ��������ĿڸС���


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0280a04">
�����ӻ������ĳݸУ�������е�����
����ϸ�׽��ᷢ�ֿڸ���ˬ����ζŨ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}else if($�����祦����_Flag==true){

//������������祦
//�������祦����_Flag == ture;
//���x���ʳ�Ĥ���ӛ�Έ��Ϥ����¤Υƥ�����

	SetFwC("cg/fw/fw����_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0290a04">
��Ŷ����Ӧ����������ȴ����廨�⡣��


{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0300a03">
����ô��ζ���⣡
���������ˣ�����֬�����ǡ�������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0310a00">
���ȳ����ٸ����㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}else if($�ӥ�`���`����_Flag==true){

//�����ӥ�`���`
//���ӥ�`���`����_Flag == ture;
//���x���ʳ�Ĥ���ӛ�Έ��Ϥ����¤Υƥ�����

//�����㥮��`��


	OnSE("se�M��_���㥰_�ӥ�`���Q����01",1000);
	WaitKey(1000);

	SetFwC("cg/fw/fw����֦_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0320a03">
���¡���������!!��


{	FwC("cg/fw/fw����_�@��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0330a04">
���ա��ա��ա��ն����ˣ�
���ٻ�����ʯ�ѡ�ʯ��������!?��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0340a00">
��û�С���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���Ф��󡣥��㥮��`��
	OnSE("se���L_����_�ґ�02",1000);
	WaitKey(1000);
	OnSE("se�M��_���㥰_�ӥ�`���Q����01",1000);
	WaitKey(1000);

}


//������
//����ӛ��᪤�ȫ�Ƥ��ʤ��Ƥ����˺���
//��ȫ�Ƥ�����ե饰�������룿��ʹ�ä���ʳ�Ĥ����ե饰�͎����ʤ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����Ǻ�����Χ�ŷ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0350a04">
��������˵������
�����ڣ����ñȻƽ𻹹��ص�ʱ�䣬����
������ˮ��װ����Ŷ�ȥ��������һ��ʵ
���Ǹ���ô�죿��


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0360a03">
������ô�졣��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0370a00">
������������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0380a00">
������������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031da0390a03">
���������������������������


{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031da0400a04">
�������Ҿ���Ҫ�������²ۣ������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����������
��
��
���ں��Լ���ʧ�ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����ֽU�^

//�������Ƅ�

..//������ָ��
//�Υե����롡"mc02_031daidokoroz.nss"

}



//�룺һ���˱�
/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������_Flag == true;
//����ζ����_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0080a00">
�������ˡ�
���ۼ����š���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��ţ��_Flag == true;
//����ζ����_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0090a00">
�������ˡ�
����ţ�š���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������_Flag == true;
//����ζ����_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0100a00">
�������ˡ�
������ⷹ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��¹��_Flag == true;
//����ζ����_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0110a00">
�������ˡ�
������¹�⡣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//����_Flag == true;
//����ζ����_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0120a00">
�������ˡ�
�����⳴������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���R��_Flag == true;
//����ζ����_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0130a00">
�������ˡ�
�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���~��_Flag == true;
//����ζ����_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0140a00">
�������ˡ�
�������㳦����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������_Flag == true;
//����ζ����_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0150a00">
�������ˡ�
��з�⳴������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������_Flag == true;
//����ζ����_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0160a00">
�������ˡ�
����˹����ܽ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��Ұ��_Flag == true;
//����ζ����_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0170a00">
�������ˡ�
��������Ĳˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������_Flag == true;
//��������_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0180a00">
�������ˡ�
�����Źǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//����������_Flag == true;
//��������������_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0190a00">
�������ˡ�
�������ӹ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������ȥ����祦_Flag == true;
//�������祦����_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0200a00">
�������ˡ�
�����������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���ӥ�`���`_Flag == true;
//���ӥ�`���`����_Flag
{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031da0210a00">
�������ˡ�
�����ǻ�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


*/


