//<continuation number="390">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_010.nss_MAIN
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
	#ev220_�衩�������=true;
	#bg088_�߼��ۥƥ�Υ۩`��_01b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_011.nss";

}

scene md03_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md03_009.nss"


//���衩�������
//���ӣţ�����ħ����������ɤ��������ˤ��뤫һ����
//��ħ������ˤ����äȳ�������

//��������BGM�ʤ� inc�Ѿ�

/*
	PrintBG("�ϱ���", 30000);
	CreateColorSP("��", 5000, "WHITE");

	CreateTextureSP("�衩��", 1000, @0, @0, "cg/ev/ev220_�衩�������.jpg");


	Delete("�ϱ���");
	DrawDelete("��", 1000, 100, "zoom_01_00_0", true);

*/

	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�\Ļ��", 20000, "WHITE");
	CreateTextureSP("�衩�������", 15000, @0, @0, "cg/ev/ev220_�衩�������.jpg");
	Zoom("�衩�������", 0, 1500, 1500, null, true);
	CreateTextureEX("�衩������磲", 15000, @0, @0, "cg/ev/ev220_�衩�������.jpg");
	Zoom("�衩������磲", 0, 1500, 1500, null, true);
	DrawEffect("�衩�������", 50, "LowWave ", 0, 100, null);
	DrawEffect("�衩������磲", 50, "SuperWave", 0, 500, null);
	Delete("�ϱ���");

	OnBG(100, "bg088_�߼��ۥƥ�Υ۩`��_01b.jpg");
	FadeBG(0, true);

	CreateSE("SE01", "se����_������_�����01");
	CreateSE("�ܤ��`", "se����_������_�����02");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���03");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���02");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���03");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���03");
	MusicStart("�ܤ��`",2000,1000,0,500,null,true);

	FadeDelete("�\Ļ��",2000,false);


	Wait(100);

	MusicStart("�Υ�����",0,1000,0,1000,null,false);
	Wait(100);
	Fade("�衩������磲", 0, 1000, null, true);
	Wait(100);
	Fade("�衩������磲", 0, 0, null, true);
	SetVolume("�Υ�����", 0, 0, null);

	Wait(200);

	MusicStart("�Υ�����",0,1000,0,1000,null,false);
	Wait(100);
	Fade("�衩������磲", 0, 1000, null, true);
	Wait(100);
	Fade("�衩������磲", 0, 0, null, true);
	SetVolume("�Υ�����", 0, 0, null);

	Wait(50);
	MusicStart("�Υ�����",0,1000,0,1000,null,false);
	Wait(100);
	Fade("�衩������磲", 0, 1000, null, true);
	Wait(150);
	Fade("�衩������磲", 0, 0, null, true);
	SetVolume("�Υ�����", 0, 0, null);

	Wait(100);

	MusicStart("�Υ�����",0,1000,0,1000,null,true);
	Wait(100);
	Fade("�衩������磲", 0, 500, null, true);

	SetVolume("�Υ�����", 3000, 100, null);


	MusicStart("SE01", 1000, 1000, 0, 1000, null,false);


	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md03/0100010a00">
����������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ǡ���ʲô��

��������

������������

���������д�����ֱ����������������ϸ�µ�������
��ʯĥ�����óɽ������ٺ濾��������<k>��������!?

����<RUBY text="����">˭��</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateSE("SE02", "se����_������_�����02");
	MusicStart("SE02", 1000, 1000, 0, 1000, null,false);
	CreateTextureEXover("��", 15000, @0, @0, "cg/ev/ev241_ɭ�ǰk�⤹�����_a.jpg");
	Fade("��", 1000, 1000, null, true);
	FadeDelete("��", 1000, false);



	SetNwC("cg/fw/nw�v�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�v����ɡ�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100020e298">
������ŶŶ������

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v�������
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100030e290">
�����񣡡�

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ġ�
<voice name="����㣯�v�����" class="������Ů��" src="voice/md03/0100040e293">
����ô��ΰ�������˾�η����

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ǡ�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100050e296">
���ȡ��ȿȡ���
��������ÿ�ζ��������¡�����

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����š�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100060e294">
���淳�ˣ���

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ȡ�
<voice name="����㣯�v�����" class="������Ů��" src="voice/md03/0100070e297">
�����ȡ�����ô���Ȱ���������

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ˡ�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100080e300">
�����������ҵ��񡭡�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE03", "se����_������_�����01");
	MusicStart("SE03", 1000, 1000, 0, 1000, null,false);

	CreateTextureEXover("��", 15000, @0, @0, "cg/ev/ev237_�դ˕N�ä�����_b.jpg");
	Fade("��", 1000, 1000, null, true);
	FadeDelete("��", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������񡭡���

�����ԡ�
��<RUBY text="������">�ⶫ��</RUBY>�Ų�����

����ֻ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0100090a07">
��û����硣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���������ֻ�������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE04", "se����_������_��ν~��");
	MusicStart("SE04", 1000, 1000, 0, 1000, null,false);

	CreateTextureEXover("��", 15000, @0, @0, "cg/ev/ev241_ɭ�ǰk�⤹�����_a.jpg");
	Fade("��", 1000, 1000, null, true);
	FadeDelete("��", 1000, false);

	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0100100a07">
����<RUBY text="��������">ֻ������</RUBY>���ѡ�
����Ų���ʲôΰ��Ķ�������ô����
���ǻۡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0100110a07">
����һ�ֻ��һ��������������֮��ʲô��
���ǡ�
����ֹ����ǿ�󡭡�����ǿ��ȴʲô��
����������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0100120a07">
��û���κ����塣
���ȳ������͵ȡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0100130a07">
��������һ�ϣ���и�
���ܸ����Լ���ֵ�Ĳٿ��ߡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0100140a00">
������������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0100150a07">
������һ���ʮ��Сʱһֱ�����ͣ��
�������������Ǳ��˵ĸ��ܡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ĵ����
�������˷�ŭ�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateSE("SE02", "se����_������_�����02");
	MusicStart("SE02", 1000, 1000, 0, 1000, null,false);
	CreateTextureEXover("��", 15000, @0, @0, "cg/ev/ev237_�դ˕N�ä�����_b.jpg");
	Fade("��", 1000, 1000, null, true);
	FadeDelete("��", 1000, false);

	SetFwC("cg/fw/fw�������_˼��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0100160a13">
��׷��������Ϊ̽���ߵ��ң��Լ�
���ܴ��������������ΪԤ���ߵ�������

//��������ա�
<voice name="�������" class="�������" src="voice/md03/0100170a13">
�����������ˡ���

//��������ա�
<voice name="�������" class="�������" src="voice/md03/0100180a13">
�����������Ҹ��Լ��������ҵ��˸��ݡ�
�������ң���Ҳ������Լ������ܵ��Ķ�������

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0100190a13">
��������������Ѿ�ȷ���ˡ�
��<RUBY text="����������������">��͵۹���ģ����</RUBY>��<RUBY text="��������������������">�������ֳ�����������</RUBY>
<RUBY text="����������������">�ķ���һһ�幫��</RUBY>!!��

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0100200a13">
����������
�����ң���������ô�֮·�ķ���Ҳ���ˣ���

//��������ա�
<voice name="�������" class="�������" src="voice/md03/0100210a13">
�����Ǻţ�
�����ϵĽ��У���ӽ�ʼ��Ĵ��ڣ�
���ڵ������ϣ���

{	FwC("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0100220a13">
�����������ȫ!!
����Ȼ��ˣ����Ǹ���ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0100230a13">
����λ����

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����¡�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100240e291">
������!!��

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����š�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100250e294">
��������!!��

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ʡ�
<voice name="����㣯�v�����" class="������Ů��" src="voice/md03/0100260e299">
���������������!!��

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v�������
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100270e290">
��Ϊ�˼�ʶ�k!!��

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����á�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100280e292">
��Ϊ�˱�¶�k!!��

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ġ�
<voice name="����㣯�v�����" class="������Ů��" src="voice/md03/0100290e293">
��Ϊ�����k!!��

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ǡ�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100300e296">
��Ϊ������k!!��

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ơ�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100310e295">
��Ϊ�˳�Ц�k!!��

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ɡ�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100320e298">
��Ϊ�����޵k!!��

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ˡ�
<voice name="����㣯�v�����" class="����������" src="voice/md03/0100330e300">
������!!��

{	NwC("cg/fw/nw�v�����.png");}
//������㣯�v����ġ�
<voice name="����㣯�v�����" class="������Ů��" src="voice/md03/0100340e293">
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	SetVolume("�Υ���*", 1000, 0, null);
	SetVolume("�ܤ��`", 1000, 0, null);
	OnSE("se���L_����_�z_�����w��02",1000);

	Fade("�衩��*", 400, 0, Axl2, false);
	EffectZoomDXadd(20000, 1000, 0, "#FFFFFF", "cg/ef/ef034_����AȾ.jpg", false);

	Wait(3500);
	Delete("�衩��*");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0105]
//��������
<voice name="����" class="����" src="voice/md03/0100350a00">
��������������������

{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0100360a13">
�������Ѱ���
�����ǻ�ӭ�㣬���ĵػ�ӭ�㡣��

//��������ա�
<voice name="�������" class="�������" src="voice/md03/0100370a13">
��׷��ƽ�������ͬ־����

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0100380a13">
����ӭ����������

{	FwC("cg/fw/fw�������_Ц�.png");}
��
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0100390a13">
���������������������ᡱ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md03_011.nss"