//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_044.nss_MAIN
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
	#bg002_��a_02=true;
	#bg105_���T�����ڂ�_02=true;
	#ev002_�y�Ǻ��¼�����`����=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_045.nss";

}

scene md04_044.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_043.nss"


//��Ϧ�ա���������Ϧ�r��
//�����ڣ��Ɯ�Α���ãǡ��ӣŤ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg002_��a_02.jpg");
	FadeBG(0, true);

	CreateSE("SE01","se����_����_������L��02_L");
	MusicStart("SE01",3000,1000,0,1000,null,true);


	SoundPlay("@mbgm19", 0, 1000, true);

//	CreateColorSP("�}��ܞ", 10000, "#000000");


	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(1000);

	CreateTextureEX("�}����1000", 1000, @-100, @0, "cg/bg/resize/bg103_���ӘS������ٛg����_02l.jpg");
	CreateTextureEX("�}����100", 100, @0, @0, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	Rotate("�}����100", 0, @0, @180, @0, null,true);
	CreateTextureEX("�}����200", 110, @0, @0, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");


	Move("�}����1000", 7000, @-250, @0, null, false);
	Fade("�}����1000", 1500, 1000, null, true);
	CreateMovie("���ӻ�", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 6000, null, true);
	Request("���ӻ�", SubRender);
	Move("���ӻ�", 0, @0, @-400, null, true);

	Wait(3000);
	Fade("�}����100", 0, 1000, null, true);
	FadeDelete("�}����1000", 1500, true);


	SetVolume("SE01", 3000, 300, null);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ǵ����� 
���������� 
���ֻ���ֻ�������˼����Ӱ�� 

����ͬ���˻��ò�ͬ�ĳƺ��ɡ�
�������龰�ı���ʮ�ּ򵥴��⣬���������������
<RUBY text="����">��ǩ</RUBY>��ʲô��Ҳ����ı䡣

{	Fade("�}����200", 1000, 500, null, false);}
�����ǻ���������
�����������ɱ��

������ɱ¾��
��������ȥ��

�������Ľ�����
�����ҵĽ�֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�衩��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440010a07">
��<RUBY text="�ϣ̣ġ��ףϣң̣�">��ʱ����</RUBY>��
��<RUBY text="�ǣϣ̣ġ��ţΣ�">�ƽ�Ľ�ְ�</RUBY>����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440020a07">
��<RUBY text="�ӣ���">��̾��</RUBY>��
<RUBY text="�ңţ� �£̣ϣϣ� ���Σ� �ģţ��� �ǣңϣգΣ�">���ʺ��ѪҺ������������</RUBY>��������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440030a07">
��<RUBY text="�ǣ̣���">���ְ�</RUBY>��
��<RUBY text="�ģ��ģ��ãȣɣ̣ģ��ǣϣ�">���ף����ӣ���</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����200",300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ڻ���֮�У���ػ���
��Ԥ���š������Ÿ���һ���Ļ��𣬲����ӽ���š�

����ͬδ����֮�����ϵ�������ʦ�����ƻ�֮��һ�㡣
����ͬ���еĽ̻������ϵ����̴��ž�����������
Ψһ����������ף��һ�㡣

����������裬�϶����Ɐ�ҵĽ�֡�
�����������ԣ��Լ�������ڴ������ܹ�����������
��������


���������һ�㡣
���ʺ��ҡҷ��ȼ�տ����ģ�<RUBY text="�ģ���� �ƣ���">Ϧ��</RUBY>��

����������ħ��Ĵ��ڡ�
�������ڴ�ž�վ������ǰ�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1000, @0,@0,"cg/st/st�衩��_ͨ��_�Ʒ�b.png");
	FadeStC(500,true);


	SetFwR("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md04/0440040a00">
��������𣿡�

{	FwR("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440050a07">
��������ġ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ħ΢Ц��˵����
�������ء�����ء�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440060a07">
��һ�С���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440070a07">
���¾�֮�������֮��ȫ������𡣡�

{	FwR("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440080a07">
�������������ʱ������

{	FwR("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440090a07">
�����������硣��

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440100a07">
�������ž�������Ŷ����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ҺͲ����ȴ������սᡣ

������������Ⱥϯ����գ����ڼ������������ǡ���
Ļ���ͽ�פ�������ߡ�
����������������磬�����ڵ��Ͽ���������������
�õ�������ɫ���������ڻƻ�֮�����ݵ���ᡣ

���������к�����Ⱥ���ų�������Ե��ǣ���ΪѸ��
��һ���ǡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440110a07">
��<RUBY text="�̣���� �ϣ� �У�����">������ǿ</RUBY>������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440120a07">
����һ��<RUBY text="Power">��ǿ</RUBY>Ҳ�����ˡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0440130a00">
��Ȼ�󡪡���

{	FwR("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440140a07">
�����ƽ��������ָ������ϱڡ���
��һһ�幫��ĵؿǡ���

{	FwR("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440150a07">
���񣬻ή�١���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0440160a00">
������������

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440170a07">
��������ô�ˣ���磿��

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0440180a00">
��û�¡���

{	FwR("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0440190a00">
������ƾ�Լ���ϲ�û���������ļһ
�����ǣ��Ǹ���ᱧ��ʲô�뷨
�����������ء�����

//��������
<voice name="����" class="����" src="voice/md04/0440200a00">
������������¡���

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440210a07">
������˭֪���ء�
�������������

{	FwR("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440220a07">
�������Ǹ���ν��Լ���ɣ���

{	FwR("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440230a07">
��˵��������Ϊȫ���������ء���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܥå��������ƥ�������

	WaitKey(1500);

	SetVolume("@mbgm*", 0, 0, null);
	SetVolume("@SE*", 0, 0, null);


	SetFwR("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md04/0440240a01">
����Ȼ��ˣ�
���ҿɲ�ϣ���Ǽһ����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
//���衩�衢�����w��

	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");

	DeleteStA(0,true);
	OnSE("se����_����_֩������¤�01",1000);

	CreateTextureSP("�}����20", 4900, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	DrawDelete("�}�ե�", 100, 100, "beam_03_00_1", true);

	FadeDelete("�}����20",200,true);

	CreatePlainEX("�}��д", 100);
	Fade("�}��д", 0, 800, null, true);
	Shake("�}��д", 500, 0, 30, 0, 0, 1000, DxlAuto, true);
	CreateSE("SE01","se����_����_�������Ƥ�02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("�}��д");

	SetFwR("cg/fw/fw�衩��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0440250a07">
����ѽ?!��

{	FwR("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/0440260a00">
������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ǡ���������˿��

���������ֶ������ˡ���
��������֪��ֻ��һ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��귵�룿 inc�Ѿ�
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", true);

}

..//������ָ��
//�Υե����롡"md04_045.nss"
