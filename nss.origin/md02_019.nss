//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_019.nss_MAIN
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
	#bg098_ܥԽ����������_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_020.nss";

}

scene md02_019.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_018.nss"


//��ͨ·
//���⡣����������
//���衩��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg098_ܥԽ����������_01.jpg");
	FadeBG(0, true);
	CreateSE("��������", "se����_����_�i��09");
	MusicStart("��������", 0, 1000, 0, 1000, null, true);

	SoundPlay("@mbgm30", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	StR(1000, @0, @0, "cg/st/st��_ͨ��_˽��.png");
	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_˽��.png");
	FadeStR(300, false);
	FadeStL(300, true);
	SetVolume("��������", 1000, 0, null);

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0190010a07">
��ѽ�ǡ����������¡�
������Ҳ�ڰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�᤺����01",1000);
	Move("@StR*", 300, @0, @80, Axl1, true);
	WaitKey(100);
	OnSE("se����_����_���S01",1000);
	DeleteStR(100,false);
	SetBlur("@StR*", true, 2, 10, 10, false);
	Move("@StR*", 100, @-80, @-80, Dxl3, true);
	SetFwC("cg/fw/fw��_ŭ��.png");

//inc�ñ���ץ�֤����ޤ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
//���⡿
<voice name="��" class="��" src="voice/md02/0190020a14">
������׹��С���ǡ����԰�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	OnSE("se���L_����_Ź��05", 1000);
	CreateTextureEXadd("������", 15000, @0, @0, "cg/ef/ef042_���ô��.jpg");
	Rotate("������", 0, 180, 0, 180, null, false);
	Zoom("������", 100, 1500, 1500, null, false);

	Fade("������", 0, 1000, null, true);
	DeleteStL(300,false);
	Move("@StL*", 300, @0, @300, Dxl3, false);
	WaitKey(200);
	Fade("������", 150, 0, null, true);
	Delete("������");



	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0190030a07">
������������Ҳ�����˵��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StR(1000, @-50, @0, "cg/st/st��_ͨ��_˽��.png");
	OnSE("se����_����_�᤺����01",1000);
	Move("@StR*", 300, @50, @0, Dxl3, false);
	FadeStR(300, false);
	SetFwC("cg/fw/fw��_����.png");
//inc�ñ���ץ�֤����ޤ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0021]
//���⡿
<voice name="��" class="��" src="voice/md02/0190040a14">
��������
���Һ����ߣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @50, "cg/st/st�衩��_ͨ��_˽��.png");
	FadeStL(1500,false);
	Shake("@StL*", 1500, 2, 4, 0, 0, 500, AxlAuto, false);
	Move("@StL*", 1700, @0, @-50, DxlAuto, false);

	SetFwC("cg/fw/fw�衩��_�n�y.png");
//inc�ñ���ץ�֤����ޤ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0022]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0190050a07">
�������ǿɶ���е���ɧ�ţ������ʱ��
�ֱ��Ǹ����Ľ���ϷŪ������������к�
ҲҪ�����ҵķ�ŭҲ��֪Ҫ�����ǲ����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0190060a14">
������װ��ʲôҲ��֪�������ӡ�
���������Ƕ������˰ɡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0190070a07">
���š���������ɡ���

{	FwC("cg/fw/fw��_�֤�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0190080a14">
�������Ǽһ��
����ô���׶���Ů�˷��¾��衭����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0190090a14">
�����Ҳ��ò����е����һ���ˣ�
ֻ�н����׶��ߵ�������ף�ĸ�ס�
��û�뵽����������˵ز�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0190100a07">
��������
�������������������Ϊ��<RUBY text="����">Ů��</RUBY>��Ե�ʰ�����

{	FwC("cg/fw/fw��_��˼�h.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0190110a14">
�������ǵ�Ȼ��
������Ů�˻�����ʲô����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0190120a07">
���ǽ���Ŷ����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0190130a14">
������Ů�ˡ�Ϻ��Ů�ˡ�����Ů�ˡ�
��Ů�˾���Ů�ˡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0190140a07">
����ȷ��
����ô���������������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0190150a14">
��û����������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0190160a14">
��ֻҪ�᳹��İԵ�������Ը������ʵ�֡�
������֮ǰ��Ҳֻ�Ǳ���һ�Ž��ǵ����ӡ���

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0190170a14">
������������ߵĶ�����ȫ�����صĻ�����
Ҳ�Ͳ��������ڼ�ľ�������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0190180a07">
������������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0190190a14">
���š�����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0190200a07">
����ô����

{	FwC("cg/fw/fw��_��˼�h.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0190210a14">
���ޣ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0190220a07">
���Ǹ����ܸ����𣿡�

{	FwC("cg/fw/fw��_�@��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0190230a14">
���Ǹ���
������������<RUBY text="���">�ᾧ</RUBY>�𡣡�

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0190240a14">
����Ȼ���������ˣ��������˷��ˡ�
����Ҫ�𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0190250a07">
���š�
������������ϵ�ʱ�򡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md02_020.nss"