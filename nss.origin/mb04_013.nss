//<continuation number="140">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_013.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb04_013.nss","MasamuneComes",true);
	Conquest("nss/mb04_013.nss","MasamuneComesSET",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg002_��a_02=true;
	#bg201_�����ݳ������нֵ�_02=true;
	#bg041_Ƭ������_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_014.nss";

}

scene mb04_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_012vs.nss"

//��Ϧ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#FFFFFF");
	OnBG(100,"bg002_��a_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	CreateTextureSP("�}����100", 100, 0, -1000, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");

	CreateSE("SE01L","se���L_����_������02_L");
	MusicStart("SE01L",2000,500,0,1000,null,false);

	Move("�}����100", 100000, @0, -1500, null, false);


	FadeDelete("�}��ܞ", 2000, true);

	Wait(1000);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/mb04/0130010a14">
���ǡ����Ǻǡ�����


//���⡿
<voice name="��" class="��" src="voice/mb04/0130020a14">
���Һܸ��ˡ�����


//���⡿
<voice name="��" class="��" src="voice/mb04/0130030a14">
�������١�����


//���⡿
<voice name="��" class="��" src="voice/mb04/0130040a14">
�������������´Ρ���
�������ټ��ɡ���


//���⡿
<voice name="��" class="��" src="voice/mb04/0130050a14">
������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se���L_����_��ͻ�M08");
	MusicStart("SE02",0,300,0,1000,null,false);
	Wait(2500);

//��������������ɤܩ`���h����
	CreateSE("SE01","se����_����_ˮ���w���z��02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1500);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mb04/0130060a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����������
	SetVolume("SE*", 2500, 0, null);
	WaitKey(2500);

//��������Ϧ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg041_Ƭ������_02.jpg");
	FadeBG(0,true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg041_Ƭ������_02.jpg");

	FadeDelete("�ϱ���", 1500, true);
	WaitKey(1000);
	FadeDelete("�}��ܞ", 1500, true);

	CreateSE("SE01","se���L_����_�z_�ŵ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(800);
	Shake("�}����100", 500, 0, 5, 0, 0, 1000, Dxl2, false);


	Wait(800);

	SoundPlay("@mbgm32",0,1000,true);

	StR(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������½���װ�ף���½��
���������Ǻų����˺��ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mb04/0130070a01">
������Ҫȷ�ϡ������������𣿡�


{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0130080a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��û�б�Ҫȥ�������¡�
�����ң���Ҳ��������

�������Լ��Ƿ·��Ѿ�����˵��ġ���
��������ȷ����һ��ʵʱ����Ż�����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ϥ��ͻ��
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);
	Move("@StR*", 300, @10, @40, Dxl2, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/mb04/0130090a01">
����������


{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0130100a00">
��������û�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���������Ǻ��������ĳ��������������˹��衣
������Ҳ�ѽ��ݽߡ�

��������ˣ��������Բ��ܵ��¡�

�������ܵ��¡�
�����Ķ����ܡ�

�����������ս���Ѿ���������ֹ����
�����һ���һ������Ҫ��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�������������������Ϳ����˰ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ���
	FadeDelete("�}ɫ�\", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������һ������δ�ش�����⡣
���Ҳ�����֮�ڲ��ˡ�

����������Լ�������������Э������
����������Ϊ��������

���ұ�����������Ҫ��

������Ҫ����׷������ô��ʹҪ���һ����Ҳ����
��Ӧ����

�����ǡ���
�����������Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(500,true);

//���Ҥ头�`�󡣤����㡣�T������ꑤΣӣ�
	MasamuneComes();

	Wait(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����������ȷ�ϣ���֪��������˵������Ѽ�����
�·�Ҫ��ȫ���ȼһ�㡣
��������������ǿ���г�ʱ����У������ҵش�Ϣ�ţ�
�������������������������������

�����ƺ���ƴ���������š�
����������һ������֮�󡪡�����ȴ��һ�Բ�����

���ȼ����ԴǸ�Ϭ���ĳ�Ĭ���˿����ҵĺ󱳡�
��
������Ȼ�������
�������������ʲô��

��������ô�����𰸰ɡ�
��������������ʹ��ҵ����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("@�ץ��������w��");

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mb04/0130110a00">
��һ������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0130120a00">
����а����ķ�ŭ������ġ�
���ڶ��������������ġ���


//��������
<voice name="����" class="����" src="voice/mb04/0130130a00">
����������ġ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/0130140a00">
��������
��<RUBY text="��������">���ս��</RUBY>��ȴ��������ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��һ�ȥ��`���Ф�
	ClearWaitAll(2000, 0);

}

..//������ָ��
//�Υե����롡"mb04_014.nss"



.//�ץ�����======================================================

..//���ڤ��h������T�����ŵؤ���
function MasamuneComes()
{
	CreateProcess("�ץ��������w��", 5000, 0, 0, "MasamuneComesSET");
	SetAlias("�ץ��������w��","�ץ��������w��");
	Request("�ץ��������w��", Start);
	Request("�ץ����Ą�", Disused);
}

function MasamuneComesSET()
{
	CreateSound("SEP01", SE, "sound/se/se���L_����_������02");
	CreateSound("SEP02", SE, "sound/se/se���L_����_�z_�ŵ�01");
	SetVolume("SEP01", 0, 0, null);
	SetVolume("SEP02", 0, 0, null);
	SetAlias("SEP01", "SEP01");
	SetAlias("SEP02", "SEP02");

	Request("SEP01", "Play");
	SetVolume("SEP01", 1000, 1000, null);
	Request("SEP01", Disused);

	Wait(1000);
	SetVolume("SEP01", 1000, 0, null);
	Wait(1000);
	Delete("SEP01");

	Wait(300);

	Request("SEP02", "Play");
	SetVolume("SEP02", 0, 1000, null);
	Request("SEP02", Disused);

	WaitPlay("SEP02", null);
	WaitPlay("SEP*", null);
}