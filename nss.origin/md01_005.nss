//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_005.nss_MAIN
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
	#bg004_�ɤӤ���a_01=true;
	#bg023_��Դ̫�μ�_03a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_006.nss";

}

scene md01_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_004.nss"

//���Y�bg004
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg004_�ɤӤ���a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	Wait(500);
	SoundPlay("@mbgm32",0,1000,true);

	StL(1000, @0, @0,"cg/st/st��������_ͨ��_˽��.png");
	FadeStL(500,true);

	StR(1000, @0, @0,"cg/st/stʼ�����_ͨ��_˽��.png");

	SetFwC("cg/fw/fw��������_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������������
<voice name="��������" class="��������" src="voice/md01/0050010a15">
������ֻ����Щ���������𡣡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0050020a01">
��ĸ�ס�
���������ţ������ˡ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050030a15">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0050040a01">
�������ˡ�����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050050a15">
�������˾��ǣ��Ѿ�ȥ���ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0050060a01">
��������ô�ᡣ��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050070a15">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0050080a01">
�������ء�����

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050090a15">
��Ҫ�޵Ļ����Ҹ��ط�������һ���˿ޡ�
�����������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050100a15">
�����ڸ�����ǰ����

{	FadeStR(300,false);
	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050110b30">
��������������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0050120a01">
�������⹫������

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050130b30">
����������Ϊʲô����������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050140b30">
��Ϊ�Σ�Ϊ��������
����������������������ᱲ����

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050150b30">
����������𡭡�����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050160a15">
�������ӳ����ӳ�����������˵�ġ�
������ʵ����

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050170b30">
����������������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050180b30">
��Ϊ�Ρ���
����������Ϊ�ΰ�!!��

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0050190b16">
��������

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050200b30">
���������δ��ˡ�����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0050210b16">
���ڡ�����

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050220b30">
�����ǿ������𡭡�
����λ���ˡ�����

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0050230b16">
����������Ƿǳ��õ��ˡ�
���ڼ�Ұʱ���������������ɿ�������ʦ��
���ܶ����Ӷ�
���Ǳ������һֱ��̻���ҡ���

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050240b30">
�������ǡ���Ϊ�Ρ�����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0050250b16">
��������

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0050260b16">
��Խ�����Ƶ��ˣ�Խ�ǲ��塭��
��Ҳ��������ʱ������

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0050270b16">
��������������
������Ƕ�������

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050280b30">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//����
	ClearWaitAll(2000, 1000);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	CreateSE("SE01","se�ճ�_����_���_�]02");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}��ܞ", 2000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm14",0,1000,true);

	StR(1000, @0, @0,"cg/st/st��������_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������������
<voice name="��������" class="��������" src="voice/md01/0050290a15">
�����ס�
��������ˡ���

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050300b30">
���š�����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050310a15">
����Ұ�����ˣ����Ǽ����Ϊ�������
ʱ����޷������ö�����
��������ң��൱��󰡡���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050320b30">
��������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050330a15">
��Ҳ�������ǲ�����
���Դӽ����˴��콣�е������
�ѹ���ʮ���ꡭ����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050340a15">
�����������͵������˰ɡ�
�������д���˵�������Ǻ����������塣��

//������������
<voice name="��������" class="��������" src="voice/md01/0050350a15">
���������Ϊ����������ɽ�����Ϻ���˵���Ը��
ûʲô�����ģ�
��Ȼ����Ȱ˵�����ǡ���������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050360b30">
��������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050370a15">
�����ס�Ϊ�β����졣��

//������������
<voice name="��������" class="��������" src="voice/md01/0050380a15">
����Ҫ˵û�а취��
�����ǣ����δ���Ҳ�Ѿ�������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0050390b16">
���ǡ�
�����ѽ�����֪���Ķ����ڸ�����
�����ˡ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050400a15">
����������˵�ˡ�
������֮�⣬�껹����Ѱ��ʲô����

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050410b30">
������������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050420a15">
����������

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050430b30">
������������
�����ߵĽ��е����ˣ���Ȼ����������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050440b30">
������
������֮ǰ����ø��Ӳ������ˡ���

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050450a15">
��Ϊ�Ρ���

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050460b30">
��Ϊ��ʲôȥ���콣�С�����

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050470b30">
����������ʲôȥ���죬�᲻���ס���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050480a15">
��������Ȼ��Ϊ������������Ϊ�����ľ����
�����ַ������Ľ��С�
�����������𡣡�

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050490b30">
���ľ�������Ҳ���ѣ�Ҫ��ô�죿��

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050500a15">
��˵ʲôɵ������
���ľ�����������Ƕ��ϳ��Ϲ�������𣿡�

//������������
<voice name="��������" class="��������" src="voice/md01/0050510a15">
������ض��У��������������顣��

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050520b30">
����Ҳ��ô��Ϊ����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050530a15">
����ô����

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050540b30">
������ͬ��ֵ�����εı�����ˣ����
�ѶԱ���α�۵�����ͷ������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0050550a15">
������������

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050560b30">
���᲻���ס���

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0050570b30">
���ᡭ���Ѿ��㲻���ˣ���

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0050580b16">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_006.nss"