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

scene md04_054vs.nss_MAIN
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
	#bg063_���ӘS��������_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_055.nss";

}

scene md04_054vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_053.nss"


//������ͨ·
//���o�T��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg071_���ӘS���ڏ������_02.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");


	FadeDelete("�\Ļ��",1500,true);
	SoundPlay("@mbgm34", 0, 1000, true);
	StC(1000, @100, @0, "cg/st/3d����ʽ�o�T��_����_ͨ��.png");
	OnSE("se����_�z_�l����01", 1000);
	Move("@StC*", 300, @-100, @0, Dxl1, false);
	FadeStC(300, true);

	Wait(500);
	SetNwL("cg/fw/nw�o�T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���ظo�T��
<voice name="����㣯���ظo�T" class="����������" src="voice/md04/054vs0010e222">
��ܥ��ܥԽ�н�����!?
������������������ȥ������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��צһ�W��������`��
//	CreateColorEXadd("�}ɫ100", 10000, "White");
	OnSE("se���L_����_���02",1000);
	Fade("�}ɫ100", 0, 1000, null, false);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef043_צ����.jpg", false);

	Wait(200);
//	DrawTransition("�}ɫ100", 100, 0, 600, 100, Dxl1, "cg/data/crow_02_00_0.png", true);
	CreateTextureSP("�}��", 8000, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	OnSE("se���L_����_���̤���04",1000);
	OnSE("se���L_����_�z_���02",1000);
//	DrawTransition("�}ɫ100", 100, 600, 0, 100, Axl1, "cg/data/crow_02_00_0.png", true);
	Delete("�}ɫ100");

	Wait(500);

	SetNwL("cg/fw/nw�o�T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯���ظo�T��
<voice name="����㣯���ظo�T" class="����������" src="voice/md04/054vs0020e222">
�����������ۡ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���
	OnSE("se���L_�n��_�zܞ��01",1000);
	WaitKey(1000);
	DeleteStC(0, false);
	StL(1000, @0, @0, "cg/st/3d����_����_���L.png");
	FadeStL(0, false);
	FadeDelete("�}��",1500,true);

	SetFwC("cg/fw/fw�衩�転��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0030a07">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStL(0, false);
	OnBG(100, "bg063_���ӘS��������_02.jpg");
	FadeBG(0, true);

	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);

//	StL(1000, @100, @0, "cg/st/3d����_����_���L.png");
//	FadeStL(300, false);

	SetFwC("cg/fw/fw�衩�転��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0040a07">
�����⡭�������𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ƄӤ�����

	SetFwC("cg/fw/fw�׵�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0050a08">
����������裿��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ϥ��

	OnSE("se����_����_�z�i��03", 1000);
	StC(1000, @-100, @0, "cg/st/3dϥ��_����_ͨ��.png");
	Move("@StC*", 600, @100, @0, Dxl1, false);
	FadeStC(600, true);

	SetFwR("cg/fw/fw�衩�転��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0060a07">
���׵�������

{	FwR("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0070a08">
�����������ʲô�أ�
�������أ���

{	FwR("cg/fw/fw�衩�転��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0080a07">
���������ڿɲ���˵�����ʱ��ɡ�
�������ǳ��ڳ��⣬��������ڳ�����
�л���һ����Ŷ����

{	FwR("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0090a08">
���ǰ�����
����Ϊ���Ǻų����˰�����

{	FwR("cg/fw/fw�衩�転��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0100a07">
���ҵ���<RUBY text="ʱ��">����</RUBY>�����塣
������Ҫȥ�������������ͨ���ɡ���

{	FwR("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0110a08">
������
���������ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ϥ���˥��饤��
//�����أ��裩��ϥ��

	StR(1000, @50, @0, "cg/st/3d����_����_ͨ��.png");
	Rotate("@StR*", 0, @0, @180, @0, null,true);

	StC(1000, @0, @0, "cg/st/3dϥ��_����_ͨ��.png");
	OnSE("se����_�z_�l����01", 1000);
	Move("@StC*", 600, @-300, @0, AxlDxl, false);
	FadeStC(600, true);

	Wait(300);
	FadeStR(300, true);
	Wait(300);

	SetFwC("cg/fw/fw�׵�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0120a08">
������衣��

{	FwC("cg/fw/fw�衩�転��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0130a07">
��ʲô�£���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0140a08">
���㣬���н����𣿡�

{	FwC("cg/fw/fw�衩�転��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0150a07">
�������ǰ���
�����㲻���ɣ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0160a08">
���ǰ����ܰ�Ŷ��
����צ�����Ǻ��ټ��ġ���

{	FwC("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0170a07">
��лл�ˡ�
���ټ�����

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0180a08">
����˵����衣��

{	FwC("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0190a07">
�������Ҹ�ʱ�䡣��

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0200a08">
����Ľ�����Σ���

{	FwC("cg/fw/fw�衩�転��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0210a07">
��ϥ���𣿡����˲���Ŷ��
�����ײ���Ϊ��<RUBY text="��ү��">����</RUBY>��
���в���ΪԴ�������Ľ��С���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0220a08">
��Ŷ�Ǻǣ�лл����

{	FwC("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0230a07">
���������𣿡�

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0240a08">
���Ǹ�������裿��

{	FwC("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0250a07">
������������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0260a08">
����Ӧ��֪���ɡ�
�����׵����������ϥ�����һ�Եġ�����

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0270a08">
��<RUBY text="��������������">����һ��������</RUBY>��<RUBY text="������������������">��һ������ͬһ��λ</RUBY>
<RUBY text="������������">���ֳ��˺�Ŷ</RUBY>����

{	FwC("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0280a07">
������������������������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0290a08">
����һ�졣��

//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0300a08">
���Ǹ�����ķ�ΰ�֮�ա���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0310a08">
��ϥ����ؿڳ��ֵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ϥ����ؤ˂��E���ܩ`�äȡ��य�V�˹��Ф���
	SetVolume("@mbgm*", 1000, 0, null);


	OnSE("se����_����_�z�i��03", 1000);

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, 100, -144, "cg/bg/bg063_���ӘS��������_02.jpg");
	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Rotate("�}�ݷ���/�}�ݱ���", 0, @0, @180, @0, null,true);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);

	CreateTextureEX("�}�ݷ���/�}���}", 16200, -800, -250, "cg/st/resize/3dϥ��_����_ͨ��ex.png");
	CreateTextureEX("�}�ݷ���/�}���}2", 16200, -800, -250, "cg/st/resize/3dϥ��_����_����ex.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);


	Move("�}�ݷ���/�}�ݱ���", 1000, @0, @-100, AxlDxl, false);
	Move("�}�ݷ���/�}���}*", 1000, @0, -400, AxlDxl, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	Wait(500);

	Fade("�}�ݷ���/�}���}2", 1500, 1000, null, true);


	StC(1100, @-300, @0, "cg/st/3dϥ��_����_����.png");
	FadeStC(100, true);
//	DeleteStC(0, false);

	OnBG(100, "bg063_���ӘS��������_02.jpg");
	SoundPlay("@mbgm36", 0, 1000, true);

	SetFwL("cg/fw/fw�׵�_܊��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0320a08">
�������⡭����צ�����˺�!!��

{	FwL("cg/fw/fw�衩�転��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0330a07">
����������������

{	FwL("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0340a08">
������衣��

{	FwL("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0350a07">
������������������������

{	FwL("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0360a08">
�������!!��

{	FwL("cg/fw/fw�衩�転��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0370a07">
���Ȱ�����������!!��

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��צһ�W
//�������`���ܤ�ֹ�����
	CreatePlainSP("�}��д", 20000);
	Delete("�}�ݷ�*");
	Delete("�}ɫ*");
	Zoom("�}��д", 300, 2000, 2000, Axl3, false);
	FadeDelete("�}��д", 300, true);

	OnSE("se���L_����_���04",1000);
	CreateTextureEX("�}ef100", 2000, Center, Middle, "cg/ef/ef043_צ����.jpg");
	CreateTextureEXadd("�}ef200", 2100, Center, Middle, "cg/ef/ef043_צ����.jpg");
	SetBlur("�}ef200", true, 3, 500, 100, false);

	Fade("�}ef100", 100, 1000, null, false);
	Fade("�}ef200", 0, 1000, null, true);

	Zoom("�}ef200", 500, 2000, 2000, Dxl1, false);
	Fade("�}ef200", 500, 0, null, true);
	Delete("�}ɫ100");

	CreateColorEX("�ե�å����", 15000, "WHITE");

	OnSE("se���L_����_��ꪏ���01",1000);
	DeleteStA(0, false);
	Fade("�ե�å����",0,1000,null,true);

	Delete("�}ef100");
	Delete("�}ef200");
	Wait(500);
	OnSE("se���L_����_��ꪏ���02",1000);
	Fade("�ե�å����",1000,0,Dxl1,true);
	Delete("�ե�å����");

	SetFwC("cg/fw/fw�׵�_܊��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0380a08">
������Ϊ�����ֶ�������

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0390a08">
�����ܹ���ܡ�����

{	CreateTextureSP("�}��", 8000, Center, Middle, "cg/bg/bg063_���ӘS��������_02.jpg");
	SetBlur("�}��", true, 5, 200, 100, false);
	Zoom("�}��", 1500, 1200, 1200, Dxl1, false);
	Shake("�}��", 1500, 10, 10, 0, 0, 500, null, false);
	FadeDelete("�}��*", 1500, false);}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0400a08">
������׵���!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�ġ����ɤ��`��

	OnSE("se���L_����_�z_���02", 1000);
	OnSE("se���L_����_�z��������03", 1000);
	CreateTextureEX("����", 2001, @0, @0, "cg/ef/ef040_�����nͻ.jpg");

	Fade("����", 0, 1000, null, true);
	SetBlur("����", 8, true, 400, 200);

	EffectZoomDXadd(10000, 1000, 1000, "#FFFFFF", "cg/ef/ef042_���ô��.jpg", false);

	Zoom("����", 100, 1300, 1300, Dxl1, false);

	Shake("����", 500, 15, 31, 0, 0, 500, null, false);
//	Delete("�}�֥�`��");

	Wait(1000);

	SetFwC("cg/fw/fw�衩�転��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0410a07">
�������ȡ�����

{	FwC("cg/fw/fw�衩�転��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0420a07">
���ȹ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ϥ��
	OnSE("se���L_�n��_�zܞ��02",1000);
	WaitKey(1000);

	Fade("����", 1000, 0, null, true);

	StC(1000, @0, @0, "cg/st/3dϥ��_����_����.png");
	FadeStC(300, false);

	SetFwR("cg/fw/fw�׵�_�䵨.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0430a08">
�������ߡ�����

{	FwR("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0440a08">
����˵��Ҫȥ���������ǰɡ���

{	FwR("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0450a07">
������������

{	FwR("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0460a08">
��ı��֮�ˣ�
���̸���֮���������𣿡�

{	FwR("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0470a07">
��������

{	FwR("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0480a08">
������������óѡ�
�������������ɣ���

{	FwR("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0490a07">
�������ǡ�����

{	FwR("cg/fw/fw�衩�転��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0500a07">
���Ǻǡ�����

{	FwR("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0510a08">
����ʲô��Ц�ġ���

{	FwR("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0520a07">
������ʱ���Ǽһ��
��<RUBY text="����">����</RUBY>����ƽ�������𡭡�����

{	FwR("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0530a08">
������!?��

{	FwR("cg/fw/fw�衩�転��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0540a07">
����ʵ�Ҹ�������ȥ����
��Ӧ�á����Ѿ�<RUBY text="������">������</RUBY>�ɡ�����

{	FwR("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0550a07">
���ǡ����ǡ�
����ƾ���������㲻�Ͼ�ʤ���������׵���
���Ը�Ķ��ӳ̶��ϡ������ǡ�����Ӯ�ˡ���

{	FwR("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/054vs0560a08">
���㡢��˵ʲ������

{	FwR("cg/fw/fw�衩�転��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0570a07">
������������

{	FwR("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/054vs0580a07">
���ǽ��ס����ɣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_055.nss"