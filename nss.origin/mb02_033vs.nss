//<continuation number="450">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_033vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb02_033vs.nss","TanukiLastfire",true);
	Conquest("nss/mb02_033vs.nss","RotetoLoop1",true);
	Conquest("nss/mb02_033vs.nss","RotetoLoop2",true);
	Conquest("nss/mb02_033vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/mb02_033vs.nss","AnkokuZoomLoop2",true);
	Conquest("nss/mb02_033vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/mb02_033vs.nss","AnkokuZoomLoopEX",true);
	Conquest("nss/mb02_033vs.nss","TurboBlur3",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg002_��a_03=true;
	#bg002_��b_03=true;
	#ef028_���û��׷���b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_034.nss";

}

scene mb02_033vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mb02_032.nss"


//�����ڣ֣�����
//�����Ǥ�����
//���褭�¤��Τ�o�j�äݤ��Τǡ����ӘS�v�S������
//���餽��äݤ�����̽�����όӲ��֤��Ф�ȡ�ä�ʹ��
//���������ȿա�

	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(3000);
	SetVolume("SE*", 2000, 0, null);
	Wait(2000);
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg002_��a_03.jpg");

	FadeDelete("�ϱ���", 1500, true);

	CreateSE("SE10","se��Ȼ_�L_��Ұ_L");
	MusicStart("SE10",3000,1000,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������׹���ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0010a02">
���⡭����

//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0020a02">
�������ǡ���
�������

{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0030b40">
�����������ֳǵ���Ե��
���������ر�С�ǡ�����

//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0040b40">
��׹���������Ϸ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ر�С�ǡ���
��˵���������ǵ��ƺ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0050a02">
����Ϊ���س�֮սʱ���ã�����ƽ�����á���
�ն���������ô˵�ġ���
����ô���������ڡ���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0060b40">
��������ȷ����һ�ˣ�
������������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߣ����ʥꥪ����
//�������ˤ���ȡ���ޤ������ϟo���äƤ��Ȥ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��Ҳ����˵���õ��Ļᱻ���ϰ�Χ��
�����������ԡ��Ȳ�����Щ�����и���Ҫ�����顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0070a02">
����������!?��


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0080b40">
���������Ϸ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ͬ��؞����
	SetVolume("SE*", 1000, 0, null);


	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateWindow("�}�ݷ���", 16200, Center, 0, 1024, 288, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16200, 0, -144, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16300, -335, -850, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	SetBlur("�}�ݷ���/�}���}", true, 3, 300, 70, false);

	Move("�}�ݷ���", 0, @0, @-288, null, true);

	CreateColorSP("����", 150, "BLACK");
	Fade("����", 0, 500, null, true);

	CreateColorEXadd("�}ɫ���ե�����", 2000, "#FFAA00");
	CreateTextureEX("�}������ܞ100", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����a.jpg");
	CreateTextureEXover("�}������ܞ200", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����a.jpg");
	Request("�}������ܞ200", Smoothing);
	Zoom("�}������ܞ200", 0, 2000, 2000, null, true);

/*
	CreateTextureEXsub("�Υ���", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����a.jpg");
	Zoom("�Υ���", 0, 2000, 2000, null, true);
	DrawEffect("�Υ���", 50, "SuperWave", 50, 60, null);
	Fade("�Υ���", 0, 100, null, true);
*/
	$Warp�ȥ�� = @�}ɫ���ե�����;
	$Warp�ȥ���ٶ� = 3000;
	$Warp�ȥ�󥸤ʤ�餫�� = 500;

	$��`�Ʃ`�ȥʥå����� = @�}������ܞ200;
	$��`�Ʃ`���ٶȣ� = 10000;
	$��`�Ʃ`�ȽǶȣ� = @360;


	CreateProcess("�ץ�����", 150, 0, 0, "RotetoLoop1");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur3");
	SetAlias("�ץ�����","�ץ�����");

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

	Move("�}�ݷ���", 500, @0, @432, Dxl2, false);
	Fade("�}�ݷ���/�}�ݱ���", 300, 1000, null, true);

	OnSE("se���L_����_��ͻ�M02",1000);
	Move("�}�ݷ���/�}���}", 1000, @0, @600, Dxl2, false);
	Fade("�}�ݷ���/�}���}", 300, 1000, null, true);

	SoundPlay("@mbgm13",0,1000,true);

	Wait(700);

	SetFwR("cg/fw/fwͯ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���i��
//�����饦��������ޥϩ`�饦�������
//�������ѥʡ��ץ�`���ѥʡ�
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/033vs0090a09">
��<RUBY text="�л�">�ң��գң��֣�</RUBY>��<RUBY text="��л�">�ͣ��ȣ��ң��գң��֣�</RUBY>��
��<RUBY text="����">�ԣ��У��Σ�</RUBY>��<RUBY text="����">�Уң��ԣ��У��Σ�</RUBY>������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����׷���ʂ䡣�tɏ�Υ��`��Ȥ���
	CreateTextureEX("�}��", 1590, center, middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 100, 100, null, true);
	Move("�}��", 0, @0, @20, null, true);
	SetBlur("�}��", true, 3, 800, 200, false);
	CreateTextureEX("�}�ꣲ", 1600, center, middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}�ꣲ", Smoothing);
	Zoom("�}�ꣲ", 0, 100, 100, null, true);
	Move("�}�ꣲ", 0, @0, @20, null, true);
	SetBlur("�}�ꣲ", true, 3, 800, 200, false);
	CreateTextureEXadd("�}����100", 1500, Center, Middle, "cg/ef/ef039_�r�g�Ƅ�.jpg");
	Zoom("�}����100", 0, 1200, 1200, null, true);
	Move("�}����100", 0, @0, @50, null, true);

	CreateColorEXadd("�tɏ", 1600, "#FFAA00");

	FadeF4("�}��", 500, 300, 100000, 0, 0, null, false);
	FadeF4("�}�ꣲ", 500, 100, 50000, 0, 0, null, false);

	Fade("�}�ݷ���*", 500, 0, null, false);
	Fade("����", 500, 0, null, true);
	Delete("�}�ݷ���*");
	Delete("����");

	Wait(1000);

	CreateSE("SE01","se����_��x_�k��04");
	CreateSE("SE10","se����_����_��������_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Move("�}����100", 100000, @0, @50, Dxl2, false);
	Zoom("�}����100", 100000, 5000, 5000, Dxl2, false);
	Fade("�tɏ", 500, 1000, null, false);
	Fade("�}����100", 1000, 500, null, true);

	Fade("�}������ܞ*", 1000, 1000, null, false);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	CreateColorEXmul("�tɏ���`��", 2500, "#330000");
	DrawTransition("�tɏ���`��", 0, 200, 200, 500, null, "cg/data/circle_01_00_1.png", true);


	CreateProcess("�ץ�����", 12000, 0, 0, "TanukiLastfire");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����",Start);


	Fade("�tɏ���`��", 1000, 700, null, true);



	Wait(1000);
	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0100b40">
��Ŷ������
������׼��ǿ������壬������ǰһ���޷�
����ģ���

//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0110b40">
���쵰���뽫�������ǳ�һͬ�ջ���
��������ȫû�����������˰�����


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0120a02">
�����塪����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������֮�У����������Ժ�֮��ž߱��ĳ�Խ�Ե�
������
�������������������Σ��䷢������ħ��������˵����
������漣��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0130a02">
����ͺ¿����Ȼ��������һ�֡�����


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0140b40">
���Ǹ����С�����Ϊͬ��᣿
������������������֮������


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0150a02">
���ܱܿ��𣿡�


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0160b40">
������������з������漰��Χ�ܹ㡣
��������������װ���޷��������ã����Աܿ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����������ʡ�
��ԭ��������һ���ȣ���վ��վ��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����150", 3000, Center, Middle, "cg/bg/bg002_��a_03.jpg");
	CreateTextureEX("�}����250", 3000, Center, Middle, "cg/bg/bg002_��b_03.jpg");
	DrawTransition("�}����250", 0, 300, 300, 300, null, "cg/data/circle_10_00_0.png", true);

	SetVolume("SE10", 2000, 300, null);

	Fade("�}����150", 500, 1000, null, false);
	Fade("�}����250", 500, 1000, null, true);

	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0170a02">
�������жԿ������𣿡�


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0180b40">
��ֻ��һ������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0190a02">
����ʲô����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0200b40">
�����Ҳ������ӭ������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0210a02">
�������ǻ����𣿡�


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0220b40">
������
���ǲ������塣�ǲ�����������װ������ϳ�
����͵Ĺ��ܶ��ѡ���

//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0230b40">
����֮���������������������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0240a02">
�������Ǹ�����ȡʤ�ɡ���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0250b40">
����Ȼ��
�����������䡣��


{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0260a02">
���á�
�����Ҹ���ô������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0270b40">
���š�
��Ҳ����ʱ������ҵ��ͻ���Ͽշ��ٶ��£�
�վ���ȹ��衪����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0280a02">
����������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0290b40">
��ʲôҲ��Ҫ������


{	FwC("cg/fw/fwһ��_�@��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0300a02">
������ʲô����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0310b40">
��<RUBY text="������������">ʲôҲ��Ҫ��</RUBY>��


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0320a02">
��������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0330a02">
������������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0340b40">
������һ�㡣��


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0350a02">
����ʲô����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0360b40">
��ע�ⲻҪ������������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0370a02">
��������������������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0380b40">
��ֻҪ��������һ�̡���
������������ڵ�ʤ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ι��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 2000, 1000, null);
	FadeDelete("�}����150", 500, false);
	FadeDelete("�}����250", 500, true);


	SetFwR("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0390a02">
�������ô��
������������״���¿���Ц�ɣ���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0400b40">
����Ȼ����


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0410a02">
���ǡ�����


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/033vs0420b40">
��ʱ�䵽��
��ҧ�����أ�����!!��


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/033vs0430a02">
���á���!!
������ľ�����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��ֻҪ��������ʤ����
���ǵ�Ȼ��

���������Ǿͻ���㿴��
�����������Ӯ���˾��������ܣ����ڣ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
	CreateColorEXadd("�}ɫ500", 15000, "WHITE");
	CreateSE("SE02","se���L_����_�z�ܤ�����");

	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("�}ɫ500", 100, 200, null, true);
	Fade("�}ɫ500", 300, 50, Axl2, true);

	SetFwR("cg/fw/fwͯ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���i��
//�������󥸩`�����������󥬩`����
//�������`�饹�`�ȥ顭����
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/033vs0440a09">
��<RUBY text="�Ȼ�">�ӣ��ͣʣɣ֣�</RUBY>!!��<RUBY text="�ں�">�ӣ��ͣǣȣ��ԣ�</RUBY>!!
��<RUBY text="����">�ˣ��̣��ӣգԣң�</RUBY>������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ʂ����ˡ������`���ͥ륮�`��
//�����
	CreateSE("SE01","se����_�z_���ͥ륮�`���01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 2000, 100, "cg/ef/ef034_����AȾ.jpg", false);


	Fade("�}ɫ500", 300, 500, null, true);
	Fade("�}ɫ500", 1000, 200, Axl2, true);

	SetFwR("cg/fw/fwͯ��_ŭ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��
//���i�ߡ����ӥ���������������������������!!��
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/033vs0450a09">
<RUBY text="��">�����֣ɣɣɣɣɣɣɣɣɣɣɣɣɣɣɣɣ�</RUBY>
<RUBY text="��">�ɣɣɣɣɣɣɣɣɣɣɣɣɣɣɣɣɣã�!!</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//��������x����F���˴�تz
//�������`�פΜu�ǡ�
	CreateSE("SE02","se���L_����_���׷���");
	CreateSE("SE03","se���L_����_�����N_��");
	CreateSE("SE04","se���L_�Ɖ�_�z02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);

	Fade("�}ɫ500", 3000, 1000, Axl2, true);

	MusicStart("SE04",0,1000,0,1000,null,false);
//	Wait(3000);

	CreateTextureEX("�}EV100", 16000, Center, Middle, "cg/ef/ef028_���û��׷���b.jpg");
	CreateTextureEX("�}EV200", 16000, Center, Middle, "cg/ef/ef028_���û��׷���b.jpg");
	Zoom("�}EV200", 0, 2000, 2000, null, true);
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	SetBlur("�}EV100", true, 1, 500, 50, false);
	SetBlur("�}EV200", true, 1, 500, 50, false);

	Move("�}EV100", 0, @-512, @-288, null, true);
	Shake("�}EV100", 50000, 2, 1, 0, 0, 500, null, false);
	BezierMove("�}EV100", 2500, (@0,@0){@+200,@0}{@-200,@+88}{@+300,@50}{@-100,@+50}(@+512,@+288), AxlDxl, false);
	Fade("�}EV100", 500, 1000, null, true);

	Wait(1000);
	Zoom("�}EV200", 2000, 1000, 1000, Dxl1, false);
	Fade("�}EV200", 1000, 1000, null, true);

	SetVolume("SE*", 3000, 0, null);
	Wait(500);

	FadeDelete("�}EV*", 2000, true);

	Wait(2000);

	ClearFadeAll(3000, true);

	Wait(2000);

}

..//������ָ��
//�Υե����롡"mb02_034.nss"




function TanukiLastfire()
{

	CreateColor("�٤����", 3500, 0, 0, 1024, 576, "#c46c3e");
	SetAlias("�٤����","�٤����");
	Request("�٤����", AddRender);
	Fade("�٤����", 0, 0, null, false);
//	DrawTransition("�٤����", 0, 200, 200, 990, null, "cg/data/circle_01_00_0.png", true);


	begin:

	while(1)
	{
	Fade("�٤����",150,200,null,true);
	Fade("�٤����",200,150,null,true);
	Fade("�٤����",180,230,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,190,null,true);
	Fade("�٤����",200,150,null,true);

	Fade("�٤����",150,230,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,170,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,200,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,170,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",100,280,null,true);
	Fade("�٤����",350,150,null,true);
	Fade("�٤����",100,240,null,true);
	Fade("�٤����",150,120,null,true);
	Fade("�٤����",200,220,null,true);
	Fade("�٤����",170,100,null,true);

	Fade("�٤����",150,120,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",100,240,null,true);
	Fade("�٤����",140,140,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,130,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,130,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,120,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,120,null,true);
	Fade("�٤����",400,90,null,true);
	Fade("�٤����",180,110,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,130,null,true);
	Fade("�٤����",200,90,null,true);

	}


}

function RotetoLoop1()
{
	while(1){
	Rotate($��`�Ʃ`�ȥʥå�����, $��`�Ʃ`���ٶȣ�, @0, @0, $��`�Ʃ`�ȽǶȣ�, null,true);
	}
}

function RotetoLoop2()
{
	while(1){
	Rotate($��`�Ʃ`�ȥʥå�����, $��`�Ʃ`���ٶȣ�, @0, @0, $��`�Ʃ`�ȽǶȣ�, null,true);
	}
}


function AnkokuZoomLoop1()
{
	while(1){

	Zoom($���`��ʥå�����, 2000, 2000, 2000, null, false);
	Fade($���`��ʥå�����, 500, 1000, null, true);
	Wait(1000);
	Fade($���`��ʥå�����, 500, 0, null, true);
	Zoom($���`��ʥå�����, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop2()
{
	while(1){

	Zoom($���`��ʥå�����, 2000, 2000, 2000, null, false);
	Fade($���`��ʥå�����, 500, 1000, null, true);
	Wait(1000);
	Fade($���`��ʥå�����, 500, 0, null, true);
	Zoom($���`��ʥå�����, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop1()
{
	while(1){

	Zoom($���`��ʥå�����, 2000, 2000, 2000, null, false);
	Fade($���`��ʥå�����, 500, 1000, null, true);
	Wait(1000);
	Fade($���`��ʥå�����, 500, 0, null, true);
	Zoom($���`��ʥå�����, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoopEX()
{

	Zoom($���`��ʥå�����, 3100, 2000, 2000, Dxl2, false);
	Fade($���`��ʥå�����, 500, 1000, null, true);

	while(1){

	Wait(1000);
	Zoom($���`��ʥå�����, 3100, 2000, 2000, Dxl2, false);
	Fade($���`��ʥå�����, 1000, 1000, null, false);
	Fade($���`��ʥå�����, 1000, 0, null, true);
	Zoom($���`��ʥå�����, 0, 6000, 6000, null, true);

	Wait(1000);
	Zoom($���`��ʥå�����, 3100, 2000, 2000, Dxl2, false);
	Fade($���`��ʥå�����, 1000, 1000, null, false);
	Fade($���`��ʥå�����, 1000, 0, null, true);
	Zoom($���`��ʥå�����, 0, 6000, 6000, null, true);

	}
}


function TurboBlur3()
{

	while(1){

	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 0, 1000, $Warp�ȥ�󥸤ʤ�餫��, Axl2, "cg/data/circle_01_00_1.png", true);
	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 1000, 0, $Warp�ȥ�󥸤ʤ�餫��, Dxl2, "cg/data/circle_01_00_0.png", true);

	}

}