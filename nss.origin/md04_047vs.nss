//<continuation number="820">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
		$GameDebugSelect = 1;

		Reset();
	}

}

scene md04_047vs.nss_MAIN
{

//��������ݳ������`��ο����Τ���ǰ�ե�����Ƕ��x���ޤ���
	//CP_AllSet("����");
	

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
	#ev231_�衩�����_e=true;
	#bg105_���T�����ڂ�_02=true;
	#ev502_�����i��Ƭ��=true;
	#ev232_�����֣Ӳ衩�裱=true;
	#ev233_�����֣Ӳ衩�裲_a=true;
	#ev233_�����֣Ӳ衩�裲_b=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "md04_048vs.nss";

}

scene md04_047vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_046.nss"


	if($GameDebugSelect==1){CP_AllSet("���٥�");}


//���£ǣͣ�
//��bg105�����ز衩��
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("ħ����", 1200, 0, 0, "cg/ev/ev231_�衩�����_e.jpg");
	OnBG(100, "bg105_���T�����ڂ�_02.jpg");

	SoundPlay("@mbgm10", 0, 1000, true);
	FadeBG(500, true);
	Delete("�ϱ���");
	FadeDelete("ħ����",500,true);

	Wait(500);

	OnSE("se����_����_�z�i��03",1000);

	StC(1000, @0, @30, "cg/st/3d����_����_ͨ��.png");

	Move("@StC*", 500, @0, @-30, Dxl1, false);
	FadeStC(500, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ȷ��ˡ�Ҳ�ǽ��С�
��<RUBY text="����������">���ŵ�����</RUBY>��

�����������ֶ������ڣ�

��Ϊ�β����������ֶ���!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�衩�転��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0010a07">
���ҵĸ�����ܥԽ��������������
��ĸ����Ϻ�ĵĽ��ж���ʦ�����̳г�������
������֮���ĵڶ�ʮ�˴���������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0020a07">
�������ҳ���ʱӦ�����������Ϻ�ģ���Ȼ����
��Ϻ�ġ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����������޵Ĺ������졪�����ִ��۵����ܼ��ӣ�
�����ֻ�ڰ�����������
���������Ǹ�ʮ�������Ĵ��š�

��ܥԽ�����������������һ��Ϻ�ĵ�Ѫ��
��Ҳ����˵����λ���ǡ���<RUBY text="�ȣ��桡�ģ�����">��Ϻ��</RUBY>����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md04/047vs0030a00">
���������ǡ�
��������ˡ�������

{	FwR("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0040a07">
�����ź�����

{	FwR("cg/fw/fw�衩�転��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0050a07">
���������ź�������

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0060a00">
��Ϊʲô������

{	FwR("cg/fw/fw�衩�転��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0070a07">
����������
����硣��

{	FwR("cg/fw/fw�衩�転��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0080a07">
���п����ҵ�˽����
�������м���Ҫ���𣿡�

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0090a00">
��������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0100a01">
����������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0110a00">
���š�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ȷ�����ڲ���ʱ��
����Ȼ���ڱ�������Ҹ�Ҳ����֡�

������������ֹ��Ͷ�����׵���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md04/047vs0120a00">
������衣
�����ǡ�������������ͨ���İɡ���

{	FwR("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0130a07">
���š�����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0140a00">
������������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0150a00">
����������

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0160a01">
���ڡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("@StC*", 300, @-50, @0, Axl2, false);
	Move("@OnBG*", 300, @-100, @0, Axl2, false);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Move("@OnBG*", 0, @200, @0, null, true);
	DeleteStL(0,true);

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	StC(1000, @0, @0,"cg/st/st����_װ��_˽��a1.png");
	FadeStR(0,true);
	FadeStC(0,true);

	Move("@OnBG*", 300, @-100, @0, Dxl2, false);
	Move("@StR*", 300, @-150, @0, Dxl2, false);
	Move("@StC*", 300, @-150, @0, Dxl2, false);
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);
	WaitKey(1500);


//�������ֽ�
//��װ�ץ��������

	CreateColorEXadd("�ե�", 10000, "#FFFFFF");
	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);

	Fade("�ե�", 300, 1000, null, true);
	DeleteStR(0,true);
	DeleteStC(0,true);

	CreateColorSPadd("�ե�", 10000, "#FFFFFF");

	DeleteStL(0,true);

	StC(1000, @0, @0,"cg/st/st����_װ��_˽��a.png");
	FadeStC(0,true);
	Delete("�ϱ���");
	FadeDelete("�ե�*", 1600, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��װ��֮�ơ���
���ٿ����뽣�б�Ϊ���ߣ�������Ĺ��̡�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md04/047vs0170a00">
���ϴ����ǰ�ᦹ��¼�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����֪Ϊ��ʮ�ֻ��
����������������δ�������¡�

������Ϊ���ٰ����ſ��ֵĻ��䡣
��������ʹ�ࡢ�Լ�ɱ��������ֻ�����������ֻ��䡣

��������ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md04/047vs0180a00">
���Ҳ������ᣩ

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0190a01">
�������ǰ�����Ҳ�ǡ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������֫���������ȫ��ļ��⡣
��Ϊ�˰�������Ծ��װ�׽��ܳ�Ϊ����һ���֡�

��Ϊ���ò���ȫ�Ķ��߻�Ϊһ��
��ӽ����Լ֮�ʡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorSPadd("�}�ݷ���/�ե�", 25000, "#FFFFFF");
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, 0, -344, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

//	DrawEffect("�}�ݷ���/�}�ݱ���", 50, "LowWave ", 0, 100, null);


	CreateTextureEX("�}�ݷ���/�}���}", 16200, 60, -220, "cg/st/resize/st����_װ��_˽��aex.png");
	SetBlur("�}�ݷ���/�}���}", true, 3, 500, 70, false);

	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	FadeDelete("�}�ݷ���/�ե�", 1000, false);

	Move("�}�ݷ���/�}�ݱ���", 600, @-100, @0, Dxl2, false);
	Move("�}�ݷ���/�}���}", 600, @-200, @0, Dxl2, false);
	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	SetFwL("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md04/047vs0200a00">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}�ݷ���/�}���}2", 16200, -140, -220, "cg/st/resize/st����_װ��_˽��bex.png");
	SetBlur("�}�ݷ���/�}���}2", true, 3, 500, 70, false);

	OnSE("se���L_����_�z_���02",1000);
	EffectZoomadd(17000, 600, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	FadeF4("�}�ݷ���/�}���}2", 200, 1000, 400, 0, 0, Dxl2, true);

//	Wait(300);

	CreatePlainSP("�}��д", 20000);
	Delete("�}�ݷ�*");
	Delete("�}ɫ*");
	StC(1000, @0, @0,"cg/st/st����_װ��_˽��b.png");
	FadeStC(0,true);
	Zoom("�}��д", 300, 2000, 2000, Axl3, false);
	FadeDelete("�}��д", 300, true);
	SetFwL("cg/fw/fw����_ŭ��b.png");

//pre�֤����ޤ�����inc�ñ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0121]
//��������
<voice name="����" class="����" src="voice/md04/047vs0210a00">
������֮�������ڴˡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ��
//�������֣ӻ��أ��衩�裩



	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 15000, "#FFFFFF");

	Fade("�}�ե�", 600, 1000, null, true);
	DeleteStA(0,true);

	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/st/resize/3d�����˜�_����_ͨ��l.png");
	Move("�}����100", 0, -563, -669, null, true);

	Move("�}����100", 3000, -563, -539, null, false);
	Fade("�}�ե�", 1000, 0, null, true);

	WaitKey(1000);

	Fade("�}�ե�", 300, 1000, null, true);

	Delete("�}����100");

	DeleteStC(0,false);
	StC(1000, @0, @0,"cg/st/3d�����|��_����_ͨ��.png");
	FadeStC(300,false);
	FadeDelete("�}�ե�", 1000, true);

	Wait(500);

	SetFwL("cg/fw/fw�衩�転��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0220a07">
�������Ǻǡ�
�����빫�����²�ͬ��û��������Ź�����
�����ë������

{	FwL("cg/fw/fw�衩�転��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0230a07">
������ô˵��Ҳ�Ǹ�ϰ��֮�ˣ���������װ��
�ĸ�绹�ǻ������һ�¡�
�����Ҳ�˵�ڲ��������ǳ�����˳���ء���

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0240a01">
��������������Ը��
����Ҫ���㸶������Ĵ��ۡ���

{	FwL("cg/fw/fw�衩�転��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0250a07">
����������ҹ���Դ�ķ�������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("@mbgm*", 300, 0, null);

	CreateTextureEX("�}����22", 1000, Center, Middle, "cg/bg/bg105_���T�����ڂ�_02.jpg");

	Request("�}����22", Smoothing);
	Move("�}����22", 0, @100, @0, null, false);
	Zoom("�}����22", 0, 1200, 1200, null, false);
	DeleteStCR(1500,false);
	StCL(1000, @0, @0,"cg/st/3d����_����_ͨ��.png");
	FadeStCL(1500,false);
	Fade("�}����22", 1500, 1000, null, true);
	FadeDelete("@OnBG*", 1500, true);
	SoundPlay("@mbgm09", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����������˵���⸱��̬ʮ���ر�

�����ȣ�����δ��̫����
��Ҳû�д������ĵ�ǹ����֮�ࡣ

��ֻ�г�צ��
�������������֧��צ��ӳ��Ϧ��֮�⣬
Ⱦ���˳�ɫ��

�����绢��ǰצ��

���ڼ������뵱�Ǳȵ�����ʵ�õ�������
������ǿ��Ϊ��ս���õ�������

���Ը����Ķ�ʽ���������������ľ��롪��
��Ҳ������̫���ĳ��Ⱦ�ʤ����

�������������ƣ�һζ��������ʤ��
���������ϲߡ�

���������ϲߡ�������
��
����������̽����������䡣

����Ӧ�ڴ˴���̫����ȴ���ڡ�
��ֻ�ж̵����ѡ�

�������Ѿ�������׼������δ��ɥ��
�����ǣ��Ҳ�����ʼ˼���Ͼ�����ʵ��

���̵�������̣����������ͷǵ��������벻�ɡ�
��ֻ��ѡ������ó���ս����

�����������������޴��Ұ̫������������ĳ�������
��̫��������������֮һ����ߵĻ���Ҳ�������䵽��
�־��ء�
��������Ҫ��������ǿ�������ˡ�

�����Ƕ������ǺŶ����ˡ�
��ǰ�߱����飬��ɡ��ѡ����زģ�������ʧ��������
����֮�С�

����������������Ѷ̵���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}����20", 1000, Center, Middle, "cg/bg/bg105_���T�����ڂ�_02.jpg");

	Request("�}����20", Smoothing);
	Move("�}����20", 0, @-100, @0, null, false);
	Zoom("�}����20", 0, 1200, 1200, null, false);
	DeleteStCL(1500,false);
	StCR(1000, @0, @0,"cg/st/3d�����|��_����_ͨ��.png");
	FadeStCR(1500,false);
	Fade("�}����20", 1500, 1000, null, true);
	FadeDelete("�}����22", 1500, true);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md04/047vs0260a00">
�����ơ�����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���ұ�ע���Ų�����������צ���롣
�����������������⡣

���Է����۴����ܻ��ǴӼ����϶��ʺϽ�ս��
���෴���ҷ�ʹ�̵�������̫��˳�֣�����Ҳ���ʺ�
����С��������

��������Ϊ��������ͳ�ɣ�ԭ���趨����֮ʱ������
���ڿ����Լ�����ʹ�ó��صĵ���Ϊǰ�ᡣ
����������ս�����ܷ�����ԭ�������ܡ�

�����������������ء�

������貢����û������������װ��������ˣ���Ҳ
δ���������ڹ۲������
�����Բ�������Ϊ�����ġ�

��Ŀǰ״���������û�����������ı�Ҫ��
�������ֻҪ��ס�ң����ܴﵽĿ�ġ�

��������˵����Ҳ���ҵ�ʤ��������
������Ȼû��һ��Ҫ�򵹲����ı�Ҫ��ȴ���뾡��ͻ
�ƣ�ǰȥ���ظ�

����������ʱ��ʹ����ţ��������ܱ���Ѫ�еص�ʤ��
�������ʧ�ܡ�
��
���ڶ����׵�Ͷ��֮ʱ��

�������Ҳ���ս��������ս����Ҳ����ѡ��־�ս��
����ʹ��֪�ӽ�ս�����Լ��ó�������Ҳ�ǵ�������
�����ɡ�

����δս������һ�룬��ô˵�������֡�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md04/047vs0270a00">
�����ǡ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StCR(1000,@0,@0,"cg/st/3d�����|��_����_���L.png");
	Wait(200);
	OnSE("se���L_����_������01",1000);
	FadeStCR(500,true);

	Wait(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����ʽ���������в�����<RUBY text="����">ս��</RUBY>�������������

���������ְγ��̵�����������ָ����֡�
��ͬʱ�����������������ǰ���ڳ���б����ļ��ơ�

����Ұ������ս��С̫��������в֮�ơ�

���ڼ�Ұ����С̫�����ǰ�����������ǰ������Ҫ����
��������ʽ�����������뱾���������෴��

������δ������������������������������ն���Լ���
�û������ֵ�С̫���̻���
��һ����ʤ�����������ն�ǵ����ơ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�衩�転��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0280a07">
��ԭ����ˡ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����21", 1000, Center, Middle, "cg/bg/bg105_���T�����ڂ�_02.jpg");

	Request("�}����21", Smoothing);
	Move("�}����21", 0, @100, @0, null, false);
	Zoom("�}����21", 0, 1200, 1200, null, false);
	DeleteStCR(1500,false);

	StCL(1000, @0, @0,"cg/st/3d����_����_ͨ��.png");

	FadeStCL(1500,false);
	Fade("�}����21", 1500, 1000, null, true);
	FadeDelete("�}����20", 0, true);


	StC(1000,@-250,@0,"cg/st/3d����_����_���L.png");
	Rotate("@StC*", 0, @0, 180, @0, null,true);

	OnSE("se���L_����_������03",1000);
	DeleteStCL(300,false);
	FadeStC(300,true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������������ҵı仯��Ҳ�ڳ��������ơ�
���ҽ��˺����б��ǰ����

���Ը��̻�����������Եн�ΪΣ�գ��������ܼ���
Ŀ��������������ж�����ȷ�ġ�
����������Ȼ����ȷ�ģ��Ǿ����ҵ�Ԥ��֮�ڡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����30", 1000, Center, Middle, "cg/bg/bg105_���T�����ڂ�_02.jpg");

	Request("�}����30", Smoothing);
	Move("�}����30", 0, @-100, @0, null, false);
	Zoom("�}����30", 0, 1200, 1200, null, false);
	Fade("�}����30", 500, 1000, null, true);
	DeleteStCL(0,false);

	CreateTextureEX("�}�ӣԣ�200", 1100, Center, InBottom, "cg/st/3d�����|��_����_���L.png");

	CreateTextureEX("�}������", 2100, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	CreateTextureEX("�}������", 2000, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	SetBlur("�}������", true, 3, 500, 50, false);
	WaitKey(500);

	OnSE("se���L_����_������02",1000);

	Fade("�}�ӣԣ�200", 300, 1000, null,false);

	Wait(300);

	OnSE("se���L_����_��ͻ�M03",1000);


	Move("�}������", 500, @0, @0, Axl1, false);
	Wait(350);
	Shake("�}������", 100000, 0, 1, 0, 0, 500, null, false);
	Fade("�}������", 500, 1000, null, false);
	Fade("�}������", 500, 1000, null, false);

	FadeDelete("@OnBG*", 0, false);
	FadeDelete("�}����20", 0, false);
	FadeDelete("�}�ӣԣ�*", 0, false);



	SetFwL("cg/fw/fw����_����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/md04/047vs0290a00">
����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���̶̵غ���һ������̤��ǰ����
��ͬʱ���������֡�

���������ŵ�ȭͷ���ſ�������ͼ��ס�Է�������
���ͬʱ��
��
����������ľҶ����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�衩�転��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0300a07">
��!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������ס���ߵĲ����˼����Լʮ��֮һ��˲�䡪��
�Ӽ�������ĺ����������ס�
���ҵ�С̫���Ǵ��Ҳ໹�Ǵ����棬�����Ǵ����湥����
����һɲ�Ǽ��޷��жϡ�

����Ȼ�ȴ�һ˲���ܿ��壬�����ǵ�����һ˲������Ҳ
�޷��ܹ���
��
���������ǲ���裬�����˵õ����жϡ�

�������ֵ���צ����ǰ��Ϊ�ܣ�ͬʱ����󷽡�
������һ������˵ʧȥ�˷����Ļ��ᣬ�������ҵ�С̫
���Ӻδ�Ϯ���������ܷ�ס����ʹ����΢�̵�Ҳ������
��������ˡ�

���������ǡ�
��������ֱ�Ӵ̳�ȥ�������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_ͻ�M01",1000);
	CreateTextureEX("ido", 15000, @0, @0, "cg/ef/ef002_�����Ƅ�.jpg");
	Zoom("ido", 0, 1500, 1500, null, true);
	Fade("ido", 400, 1000, null, true);
	Zoom("ido", 150, 1000, 1000, DxlAuto, false);
	FadeDelete("�}����*", 0, true);

	SetFwL("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/md04/047vs0310a00">
������벽����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateTextureEX("���", 1001, @0, @0, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	CreateTextureEX("�}�ӣԣ�100", 6000, @500, InBottom, "cg/st/3d����_����_���L.png");
	CreateTextureEX("�}�ӣԣ�200", 7000, Center, InBottom, "cg/st/3d�����˜�_�T��_ͨ��3a.png");
	CreateColorEX("�ܤ�����", 6500, "BLACK");
	CreateTextureEX("�ޤ�", 10000, @0, @0, "cg/ef/ef003_�����Ƅ�.jpg");

	SetShade("�}�ӣԣ�100", EXTRALIGHT);
	SetShade("���", LIGHT);

	Zoom("�}�ӣԣ�200", 0, 2000, 2000, null, true);
	Move("�}�ӣԣ�200", 0, @-900, @900, Axl1, true);
	SetBlur("�}�ӣԣ�200", true, 5, 200, 100, false);

	Fade("�}�ӣԣ�100", 0, 1000, null, false);
	Fade("���", 0, 1000, null, false);
	Fade("�ܤ�����", 0, 100, null, true);
	FadeDelete("ido", 300, true);


	Move("�}�ӣԣ�200", 200, @600, @-300, Dxl1, false);
	Fade("�}�ӣԣ�200", 200, 1000, Dxl1, false);


	Request("���", Smoothing);
	Request("�}�ӣԣ�100", Smoothing);
	Fade("�ޤ�", 400, 1000, null, false);
	OnSE("se���L_����_��ͻ�M01",1000);
	Zoom("���", 400, 2000, 2000, Dxl1, false);
	Move("���", 400, @100, @0, Axl1, false);
	Zoom("�}�ӣԣ�100", 400, 1500, 1500, Dxl2, false);
	Move("�}�ӣԣ�100", 100, @-100, @0, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�����ŶԷ��ĺ��ˡ���������������֮������
������ԥ��������ǰһ����
��ץס������޷��ӵ���ʱ����

��С̫����
���ı��˴̻��Ĺ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͻ�ãǡ�б��ؤ�ã�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");
	Delete("�ϱ���");

	OnSE("se���L_����_�����05",1000);
	CreateTextureEXadd("�}����", 18010, Center, Middle, "cg/ef/ef017_��������܉��.jpg");

	Move("�}����", 500, @0, @-576, Dxl2, false);
	Zoom("�}����", 500, 200, 2000, Dxl2, false);
	Fade("�}����", 100, 1000, null, false);
	Wait(300);
	OnSE("se���L_����_�����01",1000);
	CreateTextureSPadd("�}��", 18011, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	DrawTransition("�}��", 50, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", true);

	Delete("�}����");

//	DrawDelete("�}��", 150, 100, "beam_02_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����ɴ�б�Ϸ����µ�ն����
��Ŀ���ǲ�����

������ľҶ��ƭ�����֣��ɴ̻�ת����ն�����Ǽ��мơ�
�������Ǹ��֣������ϵ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEXadd("�Ȥ�", 10000, @0, @0, "cg/ef/ef042_���ô��.jpg");
	OnSE("se���L_����_��ꪏ���03",1000);
	Fade("�Ȥ�", 300, 1000, null, false);


	SetFwL("cg/fw/fw�衩�転��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0320a07">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("���", 1001, @0, @0, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	Fade("���", 1000, 1000, null, false);

	CreateTextureEX("�}�ӣԣ�100", 1500, 100, InBottom, "cg/st/3d����_����_���L.png");
	Move("�}�ӣԣ�100", 1200, @50, @0, Dxl2, false);
	SetBlur("�}�ӣԣ�100", true, 2, 200, 100, false);

	OnSE("se����_����_���S01",1000);
	Fade("�}�ӣԣ�100", 1000, 1000, null, false);
	FadeDelete("�\", 1000, false);
	FadeDelete("�Ȥ�", 1000, false);
	DrawTransition("�}��", 300, 1000, 0, 100, null, "cg/data/beam_02_00_1.png", false);
	FadeDelete("�}��*", 1000, true);
	Move("�}�ӣԣ�100", 200, @-200, @0, Dxl3, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�������µ��ǡ���
����������裬���Ǹ��и��֡�

���������ͣ�Ҫ���۶���ʵս������ܵ������̶ֳȡ�
�����ҵĹ����������޶�ҡ������ֻ�Ǿʹ�ƽ���ؽ��С�

�������̻���ֻ��һֻ�֡�
����һֻ�ֵ���צ�������ų�ΪĿ��Ĳ�����

������������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/md04/047vs0330a00">
�������ء�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}�\Ļ��", 2000, "Black");
	Fade("�}�\Ļ��", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����<RUBY text="��">��</RUBY>���ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��б��ؤꥢ�˥�

	OnSE("se���L_����_�����01",1000);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(10);

	WaitKey(500);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
�����м�֮�У�����һ�ơ�
������Ϊ�������߾ٵ�צ�ӣ�������ն��С̫����

���Ҳ�û���ò���踺����֮�˵Ĵ��㡣
����Ȼ����಻Ը��ô�������ɣ�������Ҫ���ǣ�
<RUBY text="��������������">�����ߵ�̫����</RUBY>����¡�����Ȼ���Ǿ�����Ⱦ
�ڼ���£��������޷������

��ֻҪ����ʧȥս���͹��ˡ�
�����ԣ���׼����Ϊ��������צ��

�������Ƕ�ס���ӣ���צ�ӷ�ס�Ļ���ֻ�ᱻ�������ѡ�
�����ԣ�����Ĺ���Ŀ�������������ֵ�צ�ӡ�
��������׼���������������ϣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͻ���������`��
//��С��������

	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se���L_����_��ꪏ���02", 1000);
	CreateTextureEXadd("�Ȥ�", 10000, @0, @0, "cg/ef/ef042_���ô��.jpg");
	Fade("�Ȥ�", 100, 1000, null, true);
	Fade("�Ȥ�", 300, 0, null, false);
	WaitKey(1000);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/md04/047vs0340a00">
������������

{	FwC("cg/fw/fw�衩�転��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0350a07">
����������
��<RUBY text="����">��Ȼ</RUBY>����

{	FwC("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0360a07">
���Ҿ�֪����
����Ϊ��磬�����ᡣ��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0370a00">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SoundPlay("@mbgm08", 0, 1000, true);
	Zoom("���", 0, 1300, 1300, null, true);

	CreateColorSP("�}ɫ�\��Ļ", 19000, "#000000");

//��������ݳ��������Υ��`��Σţ֤Ǥ���λ�äρ��Ǥ��Τ��ݳ��˺Ϥ碌���{�������¤�����
//�צ���åפ���ȫ���ʾ�Υ���`���ǽM��Ǥߤޤ��������ĵ�����λ�ä��碌����횤Ǥ���inc�ñ���
	CreateTextureEX("�}�ţ�", 4000, Center, Middle, "cg/ev/ev232_�����֣Ӳ衩�裱.jpg");
	CreateTextureSP("�}�ţִ�", 4000, @150, Middle, "cg/ev/resize/ev232_�����֣Ӳ衩�裱l.jpg");

	Request("�}��*", Smoothing);

	Zoom("�}�ţִ�", 0, 2000, 2000, null, true);
	SetBlur("�}�ţִ�", true, 2, 200, 100, false);

	Delete("�}�\Ļ��");


	FadeDelete("�}ɫ�\��Ļ", 500, true);
	Wait(300);

	Move("�}�ţִ�", 700, -512, @0, Dxl2, false);
	Zoom("�}�ţִ�", 700, 500, 500, Dxl2, true);
	Fade("�}�ţ�", 0, 1000, null, true);
	FadeDelete("�}�ţִ�", 700, false);


/*
	MyLife_Count(500,720);
	MyTr_Count(500,300);
	CP_HighChange2(500,3,null,false);
	CP_SpeedChange2(500,0,null,false);
	Cockpit_AllFade2();
*/



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��û��<k>�����ϣ�

���ҵ�С̫��������������צ����
��
����צ��צ֮�俨ס�ˡ�

���������ס��һ�㣬һ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/md04/047vs0380a00">
��ʮ��������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
���������ˡ�
���ҵļƲߡ�

�����ϼ��м�֮�еļ�ı���Է�ȴ���мƣ� 

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩�転��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0390a07">
��<RUBY text="Tiger">�׻�</RUBY>��<RUBY text="Sword Breaker">�����ƻ�</RUBY>��
���ո�������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ӥ�
//	Fade("�}�ӣԣ�100", 300, 0, null, true);
	OnSE("se����_�z_�ҤӸ��01", 1000);
	CreateColorSPadd("�}�ե�", 20000, "#FFFFFF");
	Fade("�}�ե�", 100, 0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�������������ѹ�Ʋ����С̫����
���������������ı�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="��������" src="voice/md04/047vs0400a01">
���ȡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0410a00">
�����ã�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����˵���϶Է��ˣ��ҷ������������ᱻ���ϣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ֥��å������", 18900, @0, @0, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	Fade("�}�ţ֥��å������", 300, 1000, null, false);

//��С̫�����w��
	OnSE("se���L_����_С̫��Ͷ�S", 1000);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
��˲����ж��£��ҵ��ַſ�������
��ʧȥ����һ���ĸ��ɣ�С̫������Զ����

{	OnSE("se���L_����_�|�������", 1000);}
����Ȼ�������Ǳ����ߣ���ֻҪ����ȡ�صĻ��ᣬ��
�ȱ��۶Ϻõöࡣ
��
����������Ҳ�ڲ���������֮�ڰɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	CreateTextureSP("�}�ţ֥��å������", 20000, Center, Middle, "cg/ev/ev232_�����֣Ӳ衩�裱.jpg");

	Move("�}�ӣԣ�100", 0, 355, -75, null, true);

	MyLife_Count(0,720);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,1000,null,false);

	CP_SpeedChange2(0,0,null,false);
	MyTr_Count(0,300);

	CP_HighChange2(0,3,null,false);
	CP_AziChange(0,45,null,false);
	CP_AltChange(0,0,null,false);

	Delete("�}�ţִ�");
	Delete("�}�ţ�");

	Cockpit_AllFade2();
	FadeDelete("�}�ţ�*", 300, false);

	Fade("�}�ӣԣ�100", 300, 1000, null, true);
	OnSE("se����_����_�᤺����01",1000);

	Request("���", Smoothing);
	Request("�}�ӣԣ�100", Smoothing);

	Move("���", 300, @0, @-50, null, false);
	Move("�}�ӣԣ�100", 300, 56, 5, Dxl2, false);

	Zoom("���", 300, 1600, 1600, null, false);
	Zoom("�}�ӣԣ�100", 300, 1500, 1500, Dxl2, true);

//pre�֤����ޤ�����inc�ñ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0411]
����δʧȥƽ�⣬Ҳδ��Ϣ���������������̤��һ����
���������ƻ������ơ�����׼�ҵ����ѡ�

������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������g��
//������󡸣ãУ��ģͣ��ݳ����ޤ�������

	OnSE("se���L_����_�z_���02", 1000);

	CreateTextureEXadd("���Ҥ�", 2001, @0, @0, "cg/ef/ef040_�����nͻ.jpg");
	CreatePlainEX("�}�֥�`��", 2000);

	Request("���Ҥ�", Smoothing);
	Request("�}�֥�`��", Smoothing);

	SetBlur("�}�֥�`��", 8, true, 400, 200);

	Fade("�}�֥�`��", 0, 500, Dxl1, true);
	Zoom("���", 100, 1250, 1250, null, false);
	Zoom("�}�֥�`��", 100, 1300, 1300, Dxl1, false);
	Fade("�}�֥�`��", 100, 1000, null, true);
	Fade("�}�֥�`��", 100, 0, null, false);
	Fade("�}�ӣԣ�100", 100, 0, null, false);

	Shake("@CP_Frame", 500, 0, 20, 0, 0, 1000, Dxl2, false);
	MyLife_Count(300,660);

	Fade("���Ҥ�", 0, 1000, null, true);
	Fade("���Ҥ�", 1000, 0, null, false);

	Delete("�}�֥�`��");
	Delete("�}�ӣԣ�100");

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/md04/047vs0420a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ӣԣ�100", 1500, 0, InBottom, "cg/st/3d����_����_���L.png");
	Request("�}�ӣԣ�100", Smoothing);

	OnSE("se����_�z_�l����02", 1000);
	Zoom("�}�ӣԣ�100", 0, 1200, 1200, Dxl2, false);
	Move("�}�ӣԣ�100", 300, @-100, @0, Dxl2, false);
	Fade("�}�ӣԣ�100", 300, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
����Ч�ˡ�
�������ͨ���ף���û�ܹᴩ�������������ڣ�
������������һ���ڡ�

������һ���ʹ�ࡣ
�����Ҹ������������������ͷ���������ͬ��
�����ȥ��ʶ������ʶ�����������������ǿ�ҵ�
���ܵ�ʹ�ࡣ

�������Ͳ�ס��������
��
�������Ĺ������ڼ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}�ӣԣ�100", 300, 1500, 1500, Dxl1, false);
	Fade("�}�ӣԣ�100", 300, 1000, Dxl1, false);
	Wait(100);
	OnSE("se����_����_�z�i��03",1000);
	OnSE("se����_�z_�l����01", 1000);
	SetBlur("�}�ӣԣ�100", true, 5, 200, 100, false);
	Move("�}�ӣԣ�100", 200, @-300, @200, Dxl1, false);
	Zoom("�}�ӣԣ�100", 200, 2500, 2500, Dxl1, false);
	Fade("�}�ӣԣ�100", 200, 0, null, false);
	WaitKey(1000);
	Shake("���", 100, 0, 15, 0, 0, 500, null, false);

//pre�櫓���ޤ�����
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0431]
���Ի���������Ϊ֧���˶���
��ת�򶯵����õ��ҵı��󣬴�Ҹ��������֣��ڲ���
����̶�����

�����벱��ʧȥһ�����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Shake("���", 5000, 1, 1, 0, 0, 500, null, false);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="����" src="voice/md04/047vs0430a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ֤��ä���ꤦ��", 20000, Center, Middle, "cg/ev/ev233_�����֣Ӳ衩�裲_a.jpg");

	Zoom("�}�ţ֤��ä���ꤦ��", 0, 2000, 2000, null, true);
	SetBlur("�}�ţ֤��ä���ꤦ��", true, 2, 300, 100, false);

	OnSE("se���L_����_�z��������",1000);


	Zoom("�}�ţ֤��ä���ꤦ��", 500, 1000, 1000, Dxl2, false);
	Fade("�}�ţ֤��ä���ꤦ��", 500, 1000, null, true);

	Cockpit_AllFade0();
	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/ev/ev233_�����֣Ӳ衩�裲_a.jpg");
	Delete("�}�ţ֤��ä���ꤦ��");
	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
������ˮ��˳������������
����Ȼ֪���������ϰ��������δ�������������ʵ����

�����Լ������˵����������ǵ��ң������и�̾��
��
�����˲��������������ѵľ��أ�����̾������Ҳ
��ʧ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��ե�ͥ륽�󡣁I������ˎ���
//��������ݳ��������Υ��`��Σţ֤Ǥ���λ�äρ��Ǥ��Τ��ݳ��˺Ϥ碌���{�������¤�����
	CreateTextureEX("�}�ţ֓e�餷", 4000, Center, Middle, "cg/ev/ev233_�����֣Ӳ衩�裲_a.jpg");
	Fade("�}�ţ֓e�餷", 500, 1000, null, true);

	OnSE("se����_��_��܈��01", 1000);
	OnSE("se���L_����_�z_�g���01", 1000);
	OnSE("se���L_����_�z_�g���01", 1000);
	Shake("�}�ţ֓e�餷", 300, 0, 30, 0, 0, 500, Dxl3, true);

	Shake("�}�ţ֓e�餷", 10000000, 0, 1, 0, 0, 1000, null, false);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="����" src="voice/md04/047vs0440a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
����������<RUBY text="Nelson Hold">ʮ�ּܾ���</RUBY>?!

����˵�����Ļ������ǵ����ľ��ؽڼ���
�����ǣ������׶�Ļ���û������֮�ϵ��ˡ�

������ȫ�����ˣ���˵�����������Ѷ��ɲ����ó���
�����ӡ�����ѹ��ã��°ͼ���Ҫ���������

�������������������ޡ�������Ϊ����սǿ����
�������ܡ�
��������Ϣ���������Ǿ�Ҫ���۶��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩�転��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0450a07">
��������ʵ�㡣
������ֻ�и��һ���˲���ɱ������

{	FwC("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0460a07">
��������������
����Ļ��Ŷ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0470a01">
�����������衭������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
����������ҧ���гݵĽ��д�����
��������������ܵ�ʹ�ࡣװ��Ӧ��Ҳ�������൱�ĸ�
����

�����������û����ɱ�ֵ���˼��������״̬������ȥ��
��ȷ���뽣�в����������ᡭ��
��������ʧ�����ᡣ

��������ܶ��Ļ������޷���ֹ�����׵���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�衩�転��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0480a07">
����Ȼ��Ԥ���ƻ����в�ͬ��
�����������Űɣ���硣��

{	FwC("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0490a07">
��һ�߱��ؽڼ��Ʒ�һ��ӭ����Ľ��ٺ�����
���սᣬҲ����һ����ζ�ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0500a01">
��������������ɷ�ζ���������Ļ�
�ڴ����ʮ���ݿɲ����ڣ�����!!��

{	FwC("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0510a07">
��û���㡣
����粻�Ǹ߸����˵ر����ͷ���𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0520a01">
��ֻ�ǲ��ܺ������Ѱ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
������Ȼ�ܸм��������ұ����������Ⲣ���ܳ�Ϊ
�����ת����
����Ȼ��٩�ƺ���ɢ��ע����������������ȴ˿��
�������ᡣ

��ƾ�����ͼ��ɶ��޷����ѡ�
������������ʽ����Ҫ�ڴ�֮�ϵ�<RUBY text="��">��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="����" src="voice/md04/047vs0530a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0540a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
�����������˼����ȫһ���ˡ�
�����ؽ�̸�����ܱ˴���⡣

������������
��������״̬����Ȼ�������ɡ��������ķΣ����ڽ�����
���е�һ�㡣

������ץס���Ƿ�������
��ת����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 15000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);


	SetFwC("cg/fw/fw�衩�転��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0550a07">
��Ŷ����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0560a00">
������<RUBY text="Enchant">������װ</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
���ƺ������ʲô�������ת�����塣
�����Ѿ����ˡ���Ħ������Ϊӽ������������ɣ�
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���
//��������ݳ��������Υ��`��Σţ֤Ǥ���λ�äρ��Ǥ��Τ��ݳ��˺Ϥ碌���{�������¤�����

	CreateColorSPadd("�}�ե�", 15000, "BLUE");
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE02","se����_늓�_���02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	WaitKey(1000);

	Fade("�}�ե�", 0, 1000, null, true);
	CreateTextureEX("�}�ţ�", 4000, Center, Middle, "cg/ev/ev233_�����֣Ӳ衩�裲_b.jpg");
	CreateTextureEX("�}�ţ֤֤�`�褦", 4000, Center, Middle, "cg/ev/ev233_�����֣Ӳ衩�裲_b.jpg");
	SetBlur("�}����2", true, 2, 500, 60, true);

	CreateColorSPadd("�}�ե�", 15000, "BLUE");
	Fade("�}�ţ�", 100, 1000, null, false);
	Fade("�}�ţ֤֤�`�褦", 100, 1000, null, false);
	Zoom("�}�ţ֤֤�`�褦", 600, 1200, 1200, null, false);

	Wait(150);
	FadeDelete("�}�ե�", 600, false);
	FadeDelete("�}�ţ֤֤�`�褦", 600, false);

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",0,1000,0,1000,null,false);


	CreateTextureEXadd("�Ф��Ф�", 5000, @0, @0, "cg/ef/ef030_����늴Œi��a.jpg");
	CreateColorEXadd("�}�ե�", 15000, "#00ffff");
	Shake("�Ф��Ф�", 50000, 3, 3, 0, 0, 1000, null, false);
	Fade("�Ф��Ф�", 500, 100, null, false);
	Fade("�}�ե�", 10000, 500, null, false);
	WaitKey(10);
//	FadeDelete("�}�ե�", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
�������˱������ڷ��������塣
��������������ϸ��Ӵ�������������⡣

�������˲��֮ʱ��ʮ�ּ��ҡ�
����ʹ��ƾ�����޷����ѣ������ǽ��������벻��
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩�転��_�䵨.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0570a07">
�����ɵ�±��ɵ�¡�
����һ�������Ա��˰ɣ������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��e�Υ��ͥ륮�`�k��
//��������Ԫ�ˑ��롣

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se����_늓�_���02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("��������", 15000, "#ff00ff");
	EffectZoomadd(16000, 1000, 100, "cg/ev/ev233_�����֣Ӳ衩�裲_a.jpg", false);


	Fade("��������", 0, 500, null, true);
	Wait(500);
	CreateColorEXadd("�}�ե�", 15000, "#FFFFFF");
	Fade("�}�ե�", 0, 1000, null, true);
	CreateTextureEX("��ɤ�", 4000, Center, Middle, "cg/ev/ev233_�����֣Ӳ衩�裲_a.jpg");
	Fade("��ɤ�", 0, 1000, null, true);
	FadeDelete("�}�ţ�", 600, false);
	FadeDelete("�}�ե�", 600, false);
	FadeDelete("��������", 600, false);
	FadeDelete("�Ф��Ф�", 600, false);

	Wait(500);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��������
<voice name="����" class="����" src="voice/md04/047vs0580a00">
��ʲô����?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0590a01">
������Ϊʲô?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
�����������������ˣ�

�������Ǳ�������?!
�������ΪĿ�ĵĴ�������������ΪĿ�ĵĴ�������
���������Ч�ˡ�����

�������ⲻ���ܣ�
��Ϊʲô����������������£�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��������
<voice name="����" class="��������" src="voice/md04/047vs0600a01">
�����������ܡ�
����Ϊ����������ǡ�����

{	FwC("cg/fw/fw�衩�転��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0610a07">
������û��
���������������������

{	FwC("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0620a07">
����Ϊ̫�����ˣ�������̫�����ء�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0630a01">
��Ϊʲô���!?��

{	FwC("cg/fw/fw�衩�転��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0640a07">
����������
�������ħ������˺�ɱ�˿��཭֮���
����������ͬ�ء���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0650a01">
����������������

{	FwC("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0660a07">
�����˸�磬�취�Ѿ��þ��˰ɡ�
��ɵ�¾͵���Ϊֹ��Ӵ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
���������΢ʩ����������
�����ܱ�ѹ�ø�խ������Խ�����ѡ�

������һ�����������޷�ʹ�����塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/md04/047vs0670a00">
��������ô�졭��?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
���׿����õ����ʣ�ֻ˼��Ӧ��˼��֮�¡�
�������޷�����

����������֮����

��Ҳ��˵��<RUBY text="Nelson Hold">ʮ�ּܾ���</RUBY>�����ƽⷨ��
�����ҼȲ�֪��ϸΪ�Σ�Ҳ��������ȥ��̾�ͨ�˵�
֮�ˡ�

���޷����ѡ�

��û�а취�����ѵ�ֻ�ܷ����ˣ�

�����ܷ�����

�����ǲ������ѣ������׵��վ����Ͷ������
��Ȼ����Ȼ��֪����֮��Ķ����Ƿ�ή�٣�
ȴһ������ɾ����������

�����״����������ȥ�������Ǻ��¼��ı�����
Ҳֻ��<RUBY text="����">��ͷ</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��������
<voice name="����" class="����" src="voice/md04/047vs0680a00">
����ô��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
��Ϊ��ʲô��

��Ϊ��ʲô���������˾�����Ⱦ��
��Ϊ��ʲô���������ҴӾ�����Ⱦ�оȳ���

��������Ϊ��

�������������˵��ң�
��ȴû�����ػ��������������·�Ϲ᳹���ס���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��������
<voice name="����" class="����" src="voice/md04/047vs0690a00">
��������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0700a01">
����ʲô�취�𣿡�

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0710a00">
��������
��ж����۵�װ�ף�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0720a01">
�������ף���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0730a00">
�����ֳ�װ��
���ܰ쵽�ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0740a01">
�������ܰ쵽����
�����ǣ�����һ���Ļ�������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0750a00">
��<RUBY text="��������">��������</RUBY>��
��Ҫ�㣬���˶��ѣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0760a01">
������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0770a00">
����ֻҪ�հ�ͺã�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0780a01">
�����������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
������û�м���������顣
����Ȼ�����������ǲ�ͨ<RUBY text="����">����</RUBY>�ļһ

���ҵȴ�����һ˲��
���������������������񾭡�

��Ҫ�Ǳ��ʧȥ��ʶ���ɲ��ǿ���Ц�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintBG("�ϱ���", 30000);

	CreateColorEX("�\Ļ��", 19000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	Delete("�ϱ���");

	CreateTextureEX("�����", 1001, @0, @0, "cg/bg/bg105_���T�����ڂ�_02.jpg");

	Request("�����", Smoothing);

	Zoom("�����", 400, 1800, 1800, Dxl1, false);
	Fade("�����", 1000, 1000, null, false);

	SetFwC("cg/fw/fw�衩�転��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0790a07">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/047vs0800a01">
����������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/047vs0810a00">
��<RUBY text="��">��</RUBY>������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ֳ�װ
//���������v�����
//������`���Ȥ���Ѫ�ãǣ�
	SetVolume("@mbgm*", 1000, 0, null);

	FadeDelete("�}�ţ�",0,false);
	FadeDelete("�\Ļ��",500,true);

	WaitKey(1000);

	OnSE("se����_�z_װ��01", 1000);
	CreateColorEXadd("�}�ե�", 15000, "#FFFFFF");
	Fade("�}�ե�", 0, 1000, null, false);
	Fade("�}�ե�", 100, 0, null, false);
	WaitKey(400);
	CreateTextureEX("�������Ϥ����", 1500, @0, @0, "cg/ef/ef006_����Ѫ���֤�.jpg");
	OnSE("se����_��_��܈��03", 1000);
	Shake("�����", 100, 25, 25, 0, 0, 1000, null, false);
	Move("�����", 1000, -50, 0, Dxl3, false);
//	Rotate("�����", 100, @0, @0, @-30, Axl3, true);
	Fade("�}�ե�", 100, 1000, null, false);
	Fade("�������Ϥ����", 100, 1000, Dxl1, true);
	Fade("�}�ե�", 100, 0, null, false);

	Delete("�����");
//	Fade("�������Ϥ����", 100, 0, null, false);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
�������������۵�װ�ס�
����һ��˲�䣬�ҵ���緢�����죬<RUBY text="������">���˾�</RUBY>��

������ûʲô����˼��ġ�
���Ǳ����������ѹ�ƵĹؽڣ�ͻȻʧȥװ�׵�֧�ţ�
��Ϊ�����������������屾����
��Ȼ�������۶ϡ�

��ʹ���ĵ���������
������ʧȥһ��˼����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩�転��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/047vs0820a07">
����?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
�������ǲ����Ҳ����һ����
���󾱷�����Ȼ�ĺ�����

���û��ᡣ
����������۶ϣ�ʮ�ּܾ��������ˡ�Ҫ����ͳ����ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}����100", 10000, Center, Middle, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	Request("�}����100", Smoothing);
	Zoom("�}����100", 0, 2000, 2000, null, true);

	OnSE("se���L_����_Ź��01",1000);
	OnSE("se���L_����_��ͻ�M02",1000);
	Zoom("�}����100", 400, 1100, 1100, Dxl2, false);
	Fade("�}����100", 200, 1000, null, true);

	Wait(200);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0691]
����ҧ����ʯ������ҧ�����أ�˲����ȴ��ʹ����
����ƴ��ȫ��˦������裬����˵ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"md04_048vs.nss"
