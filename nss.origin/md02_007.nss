//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_007.nss_MAIN
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
	#bg097_ܥԽ�����ھ����β���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_008.nss";

}

scene md02_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_006.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	StL(1000, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(0,false);
	FadeStL(0,false);
	SoundPlay("@mbgm16", 0, 1000, true);
	OnBG(100, "bg097_ܥԽ�����ھ����β���_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",0,true);


//���Ѥ�Ѥ�
	OnSE("se����_����_�֤�ߵ��01", 1000);
	WaitKey(1500);
//���\���_��

	OnSE("se�ճ�_����_���饤���_��01", 1000);

	SetNwC("cg/fw/nwŮ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯ܥԽŮ�С�
<voice name="����㣯ܥԽŮ��" class="������Ů��" src="voice/md02/0070010e259">
���ڡ�
�������кηԸ�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0070020a07">
�����Ǳ��Ǹ���㵽���﷿ȥ����

{	NwC("cg/fw/nwŮ��.png");}
//������㣯ܥԽŮ�С�
<voice name="����㣯ܥԽŮ��" class="������Ů��" src="voice/md02/0070030e259">
���ǡ���

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0070040a01">
����һ�¡���

{	SoundPlay("@mbgm25",0,1000,true);
	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0070050a07">
������ȥ����
���Ǹ��˻����ȥһ���÷���ġ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0070060a01">
���ղ��ҿ����ú������˵ʲô���﷿����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0070070a07">
���ꡭ������Щ�������Ļ�����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0070080a01">
���������˶ϵĻ���Ȼ�����𣿡�

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0070090a07">
���ܺá�
���ԹԵ���ʰ����ͺ����Ҫ�ǶԷ�������
������Ȥ�Ļ��Ҿͳ�ȫ�㡣��

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0070100a01">
��������԰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();


//�����ä���
	OnSE("se�M��_���ߥ���_Ź��02", 1000);
	OnSE("se����_����_������01", 1000);
	OnSE("se�M��_���ߥ���_Ź��02", 1000);
	OnSE("se����_����_������01", 1000);
	DeleteStA(200,false);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg097_ܥԽ�����ھ����β���_01.jpg");
	Shake("�}����100", 500, 10, 0, 0, 0, 1000, Dxl2, false);

	Wait(300);

	SoundPlay("@mbgm08", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������ʧ�Ļ����ٶ�ȼ��

���������ļ�ս��
������ȼ���ŵ����������໥������

����ô�붼��������������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md02/0070110a00">
������������

{	NwC("cg/fw/nwŮ��.png");}
//������㣯ܥԽŮ�С�
<voice name="����㣯ܥԽŮ��" class="������Ů��" src="voice/md02/0070120e259">
�����ˡ�
��ҪΪ��׼��Щ��ˮ�𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0070130a00">
�������Ѿ������ˡ�
��������������ˡ���

{	NwC("cg/fw/nwŮ��.png");}
//������㣯ܥԽŮ�С�
<voice name="����㣯ܥԽŮ��" class="������Ů��" src="voice/md02/0070140e259">
��������
����ô�����⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`���Ԥ����
	OnSE("se�ճ�_����_���饤���]���02", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����Ҫ�������Ҫ��
������ĸ�����������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StL(1000, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/md02/0070150a01">
��������ѽ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//�����A���Τ�Clearʹ��ʤ� inc�Ѿ�

}

..//������ָ��
//�Υե����롡"md02_008.nss"