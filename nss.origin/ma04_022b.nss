//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_022b.nss_MAIN
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

	$GameName = "ma04_023.nss";

}

scene ma04_022b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_022.nss"

//���`��
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg043_���΍uɽ��_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������ԡ�

����Ҫ���Ի��ˡ�
����ֻ�����Ǹ�������ż��

���������м���<RUBY text="����">����</RUBY>�ģ���ż��
��ֻ���������ѡ�

{	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
���Ҽ���̫����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm04",0,1000,true);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/ma04/022b0010a14">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������׼��

����֮��Ů�ɴ���˫�ۡ�
���·���ò���˼��һ�㣬ãȻ�أ��ɻ��š�

��������м��

�����ڽ�����ȴ�������³�һ�仰��
������������̫���ٹ�ͷ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/ma04/022b0020a14">
�����ϧ��
�������ƺ���������
�ء���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������塣�ֵ���
	CreateSE("SE01","se���L_����_���̤���04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫѪ", 4000, "#CC0000");
	CreateTextureSP("�}���y���}", 1000, -600, Middle, "cg/st/3d�y�Ǻ�_����_���Lb.png");
	FadeDelete("�}ɫѪ", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����Ҹ��졪��
�����Ǻŵ��ֵ����ӱ���ᴩ��Ů�����š�

����Ůת����
�������·���˵��ĸ�ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/ma04/022b0030a14">
���š�
����ɫ֮�ȡ��ҵ�Ů����������

//���⡿
<voice name="��" class="��" src="voice/ma04/022b0040a14">
���Ѿ�<RUBY text="������">����Ҫ</RUBY>���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������塣
	CreateSE("SE02","se���L_����_���̤���05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫѪ", 4000, "#CC0000");
	Delete("�}��*");
	FadeDelete("�}ɫѪ", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����һֻ��Ҳ��͸��ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���⡿
<voice name="��" class="��" src="voice/ma04/022b0050a14">
��Ů��ʲô�Ĳ���Ҫ��
������Ҫ�ˣ���

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/022b0060a14">
������Ҫ������û�취����
��ֻ����ô���ˣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����äפꡣ
	CreateSE("SE03","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫѪ", 4000, "#CC0000");
	CreateColorEXadd("�}ɫ��", 4000, "#FFFFFF");
	CreateTextureSPover("�}��Ѫ�wĭ", 3000, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Rotate("�}��Ѫ�wĭ", 0, @0, @180, @0, null,true);
	Zoom("�}��Ѫ�wĭ", 0, 1100, 1100, null, true);
	Request("�}��Ѫ�wĭ", Smoothing);
	FadeDelete("�}ɫѪ", 600, true);
	Fade("�}��Ѫ�wĭ", 600, 0, null, false);
	DrawDelete("�}��Ѫ�wĭ", 300, 100, "effect_01_00_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������Ȼ��˺���ˡ�
�������ء�

{	CreateSE("SE04","se����_냇��_�k��03");
	Fade("�}ɫ��", 0, 850, null, true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	SetFrequency("SE04", 3000, 300, Dxl2);
	Wait(10);
	FadeDelete("�}ɫ��", 600, false);}
��������Ů�߽�Ʈɢ��
����Ϊ��ɫ�Ŀ�������ʧ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���⡿
<voice name="��" class="��" src="voice/ma04/022b0070a14">
�����������ͺ��˰ɣ�
������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/022b0080a00">
������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/022b0090a00">
������һ���ˡ���

{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma04/022b0100a14">
���Ǻǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 2000, 300, Dxl2);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����Ǻŵŵض��ϡ�
���������졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se����_����_�z�i��04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	StR(1000, @30, @0,"cg/st/3d�����˜�_����_��x.png");
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma04/022b0110a00">
�������ӣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);
	SetVolume("SE*", 200, 0, null);

}

..//������ָ��
//�Υե����롡"ma04_023.nss"