//<continuation number="330">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_005.nss_MAIN
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

	$GameName = "ma05_006.nss";

}

scene ma05_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_004.nss"

//������
//��Ůѧ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg047_�������_�a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	CreateEffect("���ե����ȣ�", 200, 0, 0, 1025, 576, "Sepia");
	FadeDelete("�}��ܞ", 2000, true);
	FadeDelete("���ե����ȣ�", 500, true);

	SetNwC("cg/fw/nwŮѧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�����݅��
<voice name="����㣯�����݅" class="������Ů��" src="voice/ma05/0050010e070">
������ˣ�
���Ǹ�������������ţ���

{	FwC("cg/fw/fw������ǰ_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0050020a14">
������̫Ť����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateVOICE("��݅","ma05/0050016e070");

//����`���å����ɤ�����
//��Ůѧ���ˈ�
	CreatePlainSP("�}��",1100);
	CreateSE("SE01a","se���L_����_���å�02");
	CreateSE("SE01b","se����_�n��_ܞ��03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("��݅",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Shake("�}��", 300, 4, 0, 0, 0, 1000, DxlAuto, true);
	Delete("�}��");
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma05/0050030a00">
�������ղŵ��ǣ���

{	StR(1000, @0, @0,"cg/st/st������ǰ_ͨ��_�Ʒ�.png");
	FadeStR(300,false);
	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0050040a14">
����֪�����������ͼ��������аħ�����
а����ʿ�ɡ�
{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
���Ҿ����������������ջ�ģ����Է���
�ɣ���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0050050a00">
����
��������Ȼ�Ҳ���Ϊʲô��Ҫ���ġ���

{	NwC("cg/fw/nw�������.png");}
//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050060e071">
����������˺͸�硣
�����Ϻá���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0050070a00">
�����Ϻá���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0050080a14">
�����Ϻá�
������Ҵ��ˡ���

{	NwC("cg/fw/nw�������.png");}
//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050090e071">
���ղŵĺ��ӣ�����������
�����Ѿ��ǵڼ����ˣ���������Ϊ���
׹�봿��֮�������޵�����

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0050100a14">
��˭������ȥһ��һ��������
�����У���Ҫ˵�ú������ҵ�ԭ�򣡡�

{	NwC("cg/fw/nw�������.png");}
//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050110e071">
��Ҫ˵������˭��ԭ���һ��Ǿ���Ӧ��
����ɡ�����

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0050120a14">
���Ҳ����ܡ�
���ҵ�������ʲô�ˡ���

{	NwC("cg/fw/nw�������.png");}
//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050130e071">
��˵����ʲô������
��������ô�򵥾���˵��������⡣��

//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050140e071">
����Ĵ��ڱ�����Ǹ����⡣��

{	FwC("cg/fw/fw������ǰ_�sȻ.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0050150a14">
������û�취����

{	NwC("cg/fw/nw�������.png");}
//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050160e071">
��������˵��Ҳ�ǡ�
���ǰɡ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0050170a00">
���ǡ���

{	FwC("cg/fw/fw������ǰ_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0050180a14">
����Ҫ��������ͬ�⣡��

{	NwC("cg/fw/nw�������.png");}
//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050190e071">
������ɢ�����ĺɶ�������
����������Щ�����ε�Ů��������

//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050200e071">
����Ҳ�����������ָо�����

{	Move("@StR*", 3000, @30, @0, DxlAuto, false);
	FwC("cg/fw/fw������ǰ_�䤿��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0050210a14">
��������

{	NwC("cg/fw/nw�������.png");}
//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050220e071">
���벻Ҫ�����������밡��
��û����û���⡣���İɡ���

{	NwC("cg/fw/nw�������.png");}
//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050230e071">
����Ϊ�ҵ�Ŀ���Ǹ�硣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma05/0050240a00">
���Ǹ�������

{	NwC("cg/fw/nw�������.png");}
//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050250e071">
���硫�硣
����ϲ�������Ů�����𣿡�

{	FwC("cg/fw/fw������ǰ_�䤿��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0050260a14">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W��
	OnSE("se���L_����_�����01",1000);
	CreateColorSP("�}��", 5500, "#FFFFFF");
	Fade("�}��", 600, 0, null, false);
	DrawDelete("�}��", 200, 1000, "slide_05_00_1", true);

	SetNwC("cg/fw/nw�������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050270e071">
��ʲôѽ��
�������֪��׼ȷ����������ʱ����
˵���������׾��ܱܿ��ˣ���

{	FwC("cg/fw/fw������ǰ_ŭ��.png");}
//���i�߷�ע��
//���������Τ�����Ȥ��ˤ��ӤΤ����դ��֤Τ����Ρ���
//���⡿
<voice name="��" class="��" src="voice/ma05/0050280a14">
�������ܹ��Ӳд�����ʮ�����ȥ����ʤ���ɣ�
���ˣ�
���ջ�����������壬������ͷ�����¸���
���ϵĿɺ�֮��ʵ�ڲ���ԭ��!!��

{	NwC("cg/fw/nw�������.png");}
//������㣯������ˡ�
<voice name="����㣯�������" class="������Ů��" src="voice/ma05/0050290e071">
����������
���б���׷�������ѽ������

{//����������
	CreateSE("SEL01","se����_����_�ߤ�01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	SetVolume("SEL01", 6000, 0, null);
	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0050300a14">
���쵰�� �����ӣ�
���������ʹ˸�ǡ������ˣ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0050310a00">
��ǧ���ߺá�
�����ǲ����ܣ�����Ҫע�⳵�Ӱ�����

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0050320a14">
���˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������
//�������SE��Ҫ��������ϵ���å������������褦�褦�ʥ�`�ס�
	CreateSE("SEL02","se�M��_���㥰_�ͥ��å���");
	MusicStart("SEL02",0,1000,0,1000,null,true);
	SetVolume("SEL02", 6000, 0, null);
	Move("@StR*", 600, @-1024, @0, Axl3, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma05/0050330a00">
�������ò����������������ϰɡ�
���������ﾶ�����𣿡����ǳ������
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_006.nss"